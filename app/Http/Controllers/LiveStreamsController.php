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
      $streams = LiveStream::where('islive',true)->get();

      $viewData = array(
        'streams' => $streams,
      );

      return view('users.live_streams.index', $viewData);
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
        } else {
            $stream->views += 1;
            $stream->save();
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
        );
        return view('users.live_streams.watch', $viewData);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    public function editLiveStatus(Request $request) {

      if (Auth::check()) {
        $streamid = $request->input('streamid');
        $livestatus = $request->input('livestatus') == 'true' ? 1 : 0;

        $stream = LiveStream::where('id', $streamid)->first(['hostid','islive']);
        if (is_null($stream)) {
          return new Response(['status' => 0, 'error' => 'No stream with '.json_encode($request->all()).' ---found']);
        }
        if (Auth::user()->id == $stream->hostid) {
          DB::beginTransaction();
          try {
            $stream->islive = $livestatus;
            $stream->update();
            DB::commit();
            $streamu = LiveStream::where('id', $streamid)->first(['hostid','islive']);
            return new Response(['status' => 1, 'message' => 'Live status changed: '.json_encode($streamu).json_encode($request->all()).json_encode($livestatus).json_encode($streamid)]);
          }
          catch (\Exception $exception) {
            DB::rollBack();
            return new Response(['status' => 0, 'error' => 'MySQL sucks'.json_encode($exception)]);
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
