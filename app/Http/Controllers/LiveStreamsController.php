<?php

namespace App\Http\Controllers;

use ApiVideo\Client\Client;
use App\Cast;
use App\Category;
use App\Language;
use App\License;
use App\LiveStream;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Http;

use Illuminate\Support\Str;
use App\agora\RtcTokenBuilder;
use App\agora\RtmTokenBuilder;
use \DateTime;
use \DateTimeZone;

class LiveStreamsController extends Controller
{
    /**
     * @var Client
     */
    private $apiVideoClient;

    /**
     * LiveStreamsController constructor.
     */
    public function __construct()
    {
        // API Client Initialization
        if (env('APIVIDEO_ENVIRONMENT') == 'production') {
            $this->apiVideoClient = Client::create(env('APIVIDEO_API_KEY'));
        } else {
            $this->apiVideoClient = Client::createSandbox(env('APIVIDEO_SANDBOX_API_KEY'));
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
      $type = $request->route('type');
      $user = $request->route('user');
      $orderBy = $request->get('orderBy');

      $streams = LiveStream::where('islive',true)
        ->when($orderBy, function($query, $orderBy) {
          if ($orderBy == 'popularity') {
              return $query->orderBy('views', 'desc');
          } elseif ($orderBy == 'rating') {
              return $query->orderBy('likes', 'desc');
          } else {
              return $query->orderBy('created_at', 'desc');
          }
        });

      $viewData = array(
        'streams' => $streams->paginate(10),
      );

      return view('users.live_streams.all', $viewData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(Request $request)
    {
        $authenticatedUser = Auth::user();
        $viewData = array(
            'authenticatedUser' => $authenticatedUser,
            'categories' => Category::where('status', 1)->get(),
            'licenses' => License::where('status', 1)->get(),
            'languages' => Language::all(),
            'channels' => $authenticatedUser->channels()->where('status', 1)->get(),
            'selectedChannel' => $request->input('channel')
        );
        return view('users.live_streams.create', $viewData);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // ========== create-live-stream ==========
//        $createAssetRequest = new \MuxPhp\Models\CreateAssetRequest(["playback_policy" => [\MuxPhp\Models\PlaybackPolicy::PUBLIC_PLAYBACK_POLICY]]);
//        $createLiveStreamRequest = new \MuxPhp\Models\CreateLiveStreamRequest(["playback_policy" => [\MuxPhp\Models\PlaybackPolicy::PUBLIC_PLAYBACK_POLICY], "new_asset_settings" => $createAssetRequest, "reduced_latency" => true]);
//        $stream = $this->liveApi->createLiveStream($createLiveStreamRequest);
//        if ($stream->getData()->getId() != null) {
//            $stream = new LiveStream();
//            $stream->title = $request->input('title');
//            $stream->description = $request->input('description');
//            $stream->actegory_id = $request->input('category');
//            $stream->stream_id = $stream->getData()->getId();
//            $stream->stream_key = $stream->getData()->getStreamKey();
//            if (Auth::user()->liveStreams()->save($stream)) {
//                return new Response([
//                    'message' => 'Live podcast created.',
//                    'redirect' => route('live-stream.show', $stream->id),
//                    'stream_server' => 'rtmp://live.mux.com/app',
//                    'stream_key' => $stream->stream_key
//                ], 201);
//            } else {
//                return new Response([
//                    'message' => 'An error occurred. Please try again.'
//                ], 200);
//            }
//        }

        $streamProperties = array(
            'record' => true
        );
//        $liveStream = $this->apiVideoClient->lives->create($request->input('title'), $streamProperties);

        $validator = Validator::make($request->all(), [
            'channel' => 'required',
            'title' => 'required|string',
            'privacy' => 'required',
            'license' => 'required',
            'languages' => 'required',
            'comments_allowed' => 'required',
            'categories' => 'required',
            'thumbnail' => 'nullable|image'
        ]);

        if ($validator->fails()) {
            return new Response([
                'status' => 0,
                'error' => $validator->getMessageBag()->toArray()
            ]);
        } else {
            if ($request->hasFile('thumbnail')) {
                if ($request->file('thumbnail')->store('public/podcast/thumbnail')) {
                    $coverFilename = $request->file('thumbnail')->hashName();
                } else {
                    return new Response([
                        'status' => 0,
                        'errors' => 'An error occurred. Please try again.'
                    ]);
                }
            } else {
                $coverFilename = null;
            }

            $stream = new LiveStream();
            $stream->channel_id = $request->input('channel');
            $stream->user_id = Auth::user()->id;
            $stream->hostid = strval(Auth::user()->id);
            $stream->islive = False;
            $stream->totalviews = 0;
            $stream->title = $request->input('title');
            $stream->description = $request->input('description');
            $stream->privacy = $request->input('privacy');
            $stream->license_id = $request->input('license');
            $stream->comments_allowed = $request->input('comments_allowed');
            $stream->thumbnail = $coverFilename;
//            $stream->stream_id = $liveStream->liveStreamId;
//            $stream->stream_key = $liveStream->streamKey;
            $stream->stream_id = '';
            $stream->stream_key = '';
            $stream->channelname = uniqid();
            DB::beginTransaction();
            try {
                $stream->save();

                $languages = $request->input('languages');
                $stream->languages()->sync($languages);

                $categories = $request->input('categories');
                $stream->categories()->sync($categories);

                $tags = explode(',', $request->input('tags'));
                $tagIds = array();
                foreach ($tags as $tag) {
                    if (!empty($tag)) {
                        $tagDetails = Tag::where('name', $tag)->first();
                        if (!empty($tagDetails)) {
                            $tagIds[] = $tagDetails->id;
                        } else {
                            $newTag = new Tag();
                            $newTag->name = $tag;
                            $newTag->slug = Str::slug($tag);
                            $newTag->save();
                            $tagIds[] = $newTag->id;
                        }
                    }
                }
                $stream->tags()->sync($tagIds);

                $casts = explode(',', $request->input('cast'));
                $castIds = array();
                foreach ($casts as $cast) {
                    if (!empty($cast)) {
                        $castDetails = Cast::where('name', $cast)->first();
                        if (!empty($castDetails)) {
                            $castIds[] = $castDetails->id;
                        } else {
                            $newCast = new Cast();
                            $newCast->name = $cast;
                            $newCast->slug = Str::slug($cast);
                            $newCast->save();
                            $castIds[] = $newCast->id;
                        }
                    }
                }
                $stream->casts()->sync($castIds);

                DB::commit();

                return new Response([
                    'status' => 1,
                    'message' => 'Live podcast created successfully.',
                    'redirect' => route('live-stream.show', $stream->id)
                ]);
            } catch (\Exception $exception) {
                DB::rollBack();

                return new Response([
                    'status' => 0,
                    'message' => 'An error occurred. Please try again.',
                ]);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param LiveStream $stream
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(LiveStream $stream)
    {
        if (Auth::check()) {
            if (Auth::user()->id !== $stream->user->id) {
              return new Response([
                  'status' => 0,
                  'message' =>  "You can not join others livestream as host",
                  'redirect' => route('live-stream.index')
              ]);
            }
        } else {
          return new Response([
              'status' => 0,
              'message' => 'You need to be signed in to access this page',
              'redirect' => route('home')
          ]);
        }

        $appID = env('AGORA_APP_ID');
        $appCertificate = env('AGORA_APP_CERTIFICATE');
        $channelName = $stream->channelname;
        $uid=0;
        $role = RtcTokenBuilder::RolePublisher;
        $expireTimeInSeconds = 10800;
        $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
        $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;
        $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);

        $userrtm = Auth::user() ? 'u_'.strval(Auth::user()->id) : 'u_'.uniqid();
        $rolertm = RtmTokenBuilder::RoleRtmUser;
        $tokenrtm = RtmTokenBuilder::buildToken($appID, $appCertificate, $userrtm, $role, $privilegeExpiredTs);

        $casts = $stream->casts;
        $categories = $stream->categories;
        $tags = $stream->tags;

        $viewData = array(
            'stream' => $stream,
            'casts' => $casts,
            'categories' => $categories,
            'tags' => $tags,
            'token' => $token,
            'tokenrtm' => $tokenrtm,
            'userrtm' => $userrtm,
        );
        return view('users.live_streams.single', $viewData);
    }

    /**
     * Watch as audience the specified resource.
     *
     * @param LiveStream $stream
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function watch(LiveStream $stream)
    {
        if (Auth::check()) {
            if (Auth::user()->id !== $stream->user->id) {
                $stream->views += 1;
                $stream->save();
            }
            $usersignedin = true;
        } else {
            $stream->views += 1;
            $stream->save();
            $usersignedin = false;
        }

        $appID = env('AGORA_APP_ID');
        $appCertificate = env('AGORA_APP_CERTIFICATE');
        $channelName = $stream->channelname;
        $uid=0;
        $role = RtcTokenBuilder::RoleSubscriber;
        $expireTimeInSeconds = 10800;
        $currentTimestamp = (new DateTime("now", new DateTimeZone('UTC')))->getTimestamp();
        $privilegeExpiredTs = $currentTimestamp + $expireTimeInSeconds;
        $token = RtcTokenBuilder::buildTokenWithUid($appID, $appCertificate, $channelName, $uid, $role, $privilegeExpiredTs);

        $userrtm = Auth::user() ? 'u_'.strval(Auth::user()->id) : 'u_'.uniqid();
        $rolertm = RtmTokenBuilder::RoleRtmUser;
        $tokenrtm = RtmTokenBuilder::buildToken($appID, $appCertificate, $userrtm, $role, $privilegeExpiredTs);

        $displayname = Auth::user() ? Auth::user()->name : $userrtm;
        $profilepic = !empty(Auth::user()->profile->avatar) ? url('/storage/users/avatar/' . Auth::user()->profile->avatar) : asset('img/user.png');
        $casts = $stream->casts;
        $categories = $stream->categories;
        $tags = $stream->tags;

        $viewData = array(
            'stream' => $stream,
            'casts' => $casts,
            'categories' => $categories,
            'tags' => $tags,
            'token' => $token,
            'tokenrtm' => $tokenrtm,
            'userrtm' => $userrtm,
            'displayname' => $displayname,
            'profilepic' => $profilepic,
            'usersignedin' => $usersignedin,
        );
        return view('users.live_streams.watch', $viewData);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(LiveStream $stream)
    {
      $viewData = array(
          'stream' => $stream,
          'channels' => Auth::user()->channels,
          'categories' => Category::where('status', 1)->get(),
          'licenses' => License::where('status', 1)->get(),
          'languages' => Language::all(),
          'tags' => $stream->tags()->get(['name'])->pluck('name')->toArray(),
          'casts' => $stream->casts()->get(['name'])->pluck('name')->toArray(),
          'selectedCategories' => $stream->categories()->get(['category_id'])->pluck('category_id')->toArray()
      );
      return view('users.live_streams.edit', $viewData);
    }

    public function editLiveStatus(Request $request) {

      if (Auth::check()) {
        $streamid = $request->input('streamid');
        $livestatus = $request->input('livestatus') == 'true' ? 1 : 0;

        $stream = LiveStream::where('id', $streamid)->first();
        if (is_null($stream)) {
          return new Response(['status' => 0, 'error' => 'No stream with '.json_encode($request->all()).' ---found']);
        }
        if (Auth::user()->id == $stream->hostid) {
          DB::beginTransaction();
          try {
            $stream->islive = $livestatus;
            $stream->update();
            DB::commit();
            return new Response(['status' => 1, 'message' => 'Live status changed!']);
          }
          catch (\Exception $exception) {
            DB::rollBack();
            return new Response(['status' => 0, 'error' => 'Error occurred: '.json_encode($exception)]);
          }
        } else {
          return new Response(['status' => 0, 'error' => 'Access denied']);
        }
      } else {
        return new Response(['status' => 0, 'error' => 'Access denied']);
      }
      return new Response(['status' => 0, 'error' => 'Access denied']);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, LiveStream $stream)
    {
      $validator = Validator::make($request->all(), [
          'channel' => 'required',
          'title' => 'required|string',
          'privacy' => 'required',
          'license' => 'required',
          'languages' => 'required',
          'comments_allowed' => 'required',
          'categories' => 'required',
          'thumbnail' => 'nullable|image'
      ]);

      if ($validator->fails()) {
          return response()->json([
              'status' => 0,
              'error' => $validator->getMessageBag()->toArray()
          ]);
      } else {
        if ($request->hasFile('thumbnail')) {
            $coverFilename = null;
            $oldCoverFilename = $stream->thumbnail;
            if ($request->file('thumbnail')->store('public/podcast/thumbnail')) {
                $coverFilename = $request->file('thumbnail')->hashName();
                if (!empty($oldCoverFilename)) {

                    unlink(storage_path('/app/public/podcast/thumbnail') . '/' . $oldCoverFilename);
                }

            } else {
                return response()->json([
                    'errors' => 'An error occurred. Please try again.'
                ]);
            }
        } else {
            $thumbfile = storage_path('/app/public/podcast/thumbnail') . '/' . $stream->thumbnail;

            Storage::disk('s3')->put('public/podcast/thumbnail/' . $stream->thumbnail, file_get_contents($thumbfile), 'public');

            $coverFilename = $stream->thumbnail;
        }

        $stream->channel_id = $request->input('channel');
        $stream->title = $request->input('title');
        $stream->description = $request->input('description');
        $stream->privacy = $request->input('privacy');
        $stream->license_id = $request->input('license');
        $stream->comments_allowed = $request->input('comments_allowed');
        $stream->thumbnail = $coverFilename;
        $stream->status = 1;
        DB::beginTransaction();
        try {
            $stream->save();

            $languages = $request->input('languages');
            $stream->languages()->sync($languages);

            $categories = $request->input('categories');
            $stream->categories()->sync($categories);

            $tags = explode(',', $request->input('tags'));
            $tagIds = array();
            foreach ($tags as $tag) {
                if (!empty($tag)) {
                    $tagDetails = Tag::where('name', $tag)->first();
                    if (!empty($tagDetails)) {
                        $tagIds[] = $tagDetails->id;
                    } else {
                        $newTag = new Tag();
                        $newTag->name = $tag;
                        $newTag->slug = Str::slug($tag);
                        $newTag->save();
                        $tagIds[] = $newTag->id;
                    }
                }
            }
            $stream->tags()->sync($tagIds);

            $casts = explode(',', $request->input('cast'));
            $castIds = array();
            foreach ($casts as $cast) {
                if (!empty($cast)) {
                    $castDetails = Cast::where('name', $cast)->first();
                    if (!empty($castDetails)) {
                        $castIds[] = $castDetails->id;
                    } else {
                        $newCast = new Cast();
                        $newCast->name = $cast;
                        $newCast->slug = Str::slug($cast);
                        $newCast->save();
                        $castIds[] = $newCast->id;
                    }
                }
            }
            $stream->casts()->sync($castIds);

            DB::commit();

            return response()->json([
                'status' => 1,
                'message' => 'Podcast saved successfully.',
                'redirect' => route('my.livestreams')
            ]);
        } catch (\Exception $exception) {
            DB::rollBack();

            return response()->json([
                'status' => 0,
                'message' => 'An error occurred. Please try again.',
            ]);
        }
      }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $stream = LiveStream::find($id);
        if ($stream->user_id == Auth::user()->id){
          DB::beginTransaction();
          if ($stream->delete()) {
            Storage::disk('s3')->delete('public/podcast/thumbnail/' . $stream->thumbnail);

            // Also delete the recorded livestream from agora

            return new Response([
                'status' => 1,
                'message' => 'Live stream deleted successfully.',
                'redirect' => route('my.livestreams'),
            ]);
          } else {
            return new Response([
                'status' => 0,
                'error' => 'An error occurred. Please try again.',
            ]);
          }
        } else {
            return new Response([
                'status' => 0,
                'error' => 'You do not have permission to do that.',
            ]);
        }
    }

    public function getMyLiveStreams(Request $request) {
      $type = $request->route('type');
      $user = Auth::user()->id;
      $orderBy = $request->get('orderBy');

      $streams = LiveStream::where('user_id', $user)
        ->when($orderBy, function ($query, $orderBy) {
          if (empty($orderBy) || $orderBy == 'date') {
              return $query->orderBy('created_at', 'desc');
          } elseif ($orderBy == 'popularity') {
              return $query->orderBy('views', 'desc');
          } else {
              return $query;
          }
        });

      $viewData = array(
        'streams' => !empty($streams) ? $streams->paginate(10) : null,
        'type' => $type,
      );
      return view('users.live_streams.index', $viewData);
    }

    public function cloudrecording(Request $request) {
      if (Auth::check()) {
        $action = $request->input('action');
        $channelname = $request->input('channelname');
        $clientuid = $request->input('clientuid');
        $userId = Auth::user()->id;

        $customerKey = env('AGORA_CLOUD_REC_KEY');
        $customerSecret = env('AGORA_CLOUD_REC_SECRET');
        $credentials = $customerKey.':'.$customerSecret;
        $base64Credentials = base64_encode($credentials);

        $res = 99;
        if ($action == 'start') {
          $response = Http::withHeaders([
            'Authorization' => 'Basic '.$base64Credentials
          ])->post('https://api.agora.io/v1/apps/'.env('AGORA_APP_ID').'/cloud_recording/acquire', [
            'cname' => $channelname,
            'uid' => strval($userId),
            'clientRequest' => ['resourceExpiredHour' => 24, 'scene' => 0]
          ]);
          if ($response->successful()) {
            $resourceId = $response['resourceId'];

          } else if ($response->failed()) {
            return new Response(['status' => 0, 'error' => json_encode($response->json())]);
          } else {
            return new Response(['status' => 0, 'error' => 'Unexpected error']);
          }
        } else if ($action == 'stop') {
          $res = 2;
        } else {
          $res = 99;
        }
      } else {
        return new Response([
          'status' => 0,
          'error' => 'Access denied',
        ]);
      }
    }

    public function stoprecording(Request $request) {

    }
}
