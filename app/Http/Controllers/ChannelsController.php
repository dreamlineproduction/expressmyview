<?php

namespace App\Http\Controllers;

use App\Channel;
use App\Podcast;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Hashids\Hashids;
use PragmaRX\Countries\Package\Countries;

class ChannelsController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('verified');
        $this->middleware('auth')->except('index', 'show', 'about');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $orderBy = $request->get('orderBy');
        $channels = Channel::where('status', 1)
            ->when($orderBy, function ($query, $orderBy) {
                if ($orderBy == 'date') {
                    return $query->orderBy('created_at', 'desc');
                } elseif ($orderBy == 'name') {
                    return $query->orderBy('name', 'asc');
                } else {
                    return $query->orderBy('subscribers', 'desc');
                }
            })
            ->paginate(10);
        $viewData = array(
            'channels' => $channels
        );
        return view('channels', $viewData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('users.channels.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:channels,name'
        ]);

        if ($validator->fails()) {
            $errors = $validator->getMessageBag()->toArray();

            $errorsFormatted = '<ul>';
            foreach ($errors as $error) {
                $errorsFormatted .= '<li>' . $error[0] . '</li>';
            }
            $errorsFormatted .= '</ul>';

            return new Response([
                'errors' => $errors
            ], 200);
        } else {
            $channel = new Channel();

            $logoFilename = null;
            if ($request->hasFile('logo')) {
                if ($request->file('logo')->store('public/users/logo')) {
                    $logoFilename = $request->file('logo')->hashName();
                } else {
                    return new Response([
                        'errors' => 'An error occurred. Please try again.'
                    ], 200);
                }
            }

            $bannerFilename = null;
            if ($request->hasFile('banner')) {
                if ($request->file('banner')->store('public/users/banner')) {
                    $bannerFilename = $request->file('banner')->hashName();
                } else {
                    Storage::disk('s3')->delete('public/users/logo/' . $logoFilename);
                    return new Response([
                        'error' => 'An error occurred. Please try again.'
                    ], 200);
                }
            }

            $channel->user_id = Auth::user()->id;
            $channel->name = $request->input('name');
            $channel->description = $request->input('description');
            $channel->logo = $logoFilename;
            $channel->banner = $bannerFilename;
            $channel->facebook = $request->input('facebook');
            $channel->twitter = $request->input('twitter');
            $channel->youtube = $request->input('youtube');
            $channel->instagram = $request->input('instagram');
            $channel->pinterest = $request->input('pinterest');
            $channel->linkedin = $request->input('linkedin');
            $channel->tiktok = $request->input('tiktok');

            if ($channel->save()) {
                return new Response('', 201);
            } else {
                return new Response([
                    'error' => 'An error occurred. Please try again.'
                ], 200);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param Channel $channel
     * @return \Illuminate\Http\Response
     */
    public function show(Channel $channel, Request $request)
    {
        $orderBy = $request->get('orderBy');
        $videos = $channel->podcasts()->when($orderBy, function ($query, $orderBy) {
            if ($orderBy == 'popularity') {
                return $query->orderBy('views', 'desc');
            } elseif ($orderBy == 'rating') {
                return $query->orderBy('likes', 'desc');
            } else {
                return $query->orderBy('created_at', 'desc');
            }
        })->paginate(10);
        $viewData = [
            'channel' => $channel,
            'videos' => $videos,
            'page' => 'podcasts',
        ];
        return view('users.channels.single', $viewData);
    }

    public function about(Channel $channel)
    {
        $views = Podcast::where('channel_id', $channel->id)->sum('views');
        $viewData = [
            'channel' => $channel,
            'page' => 'about',
            'views' => $views

        ];
        return view('users.channels.about', $viewData);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param Channel $channel
     * @return \Illuminate\Http\Response
     */
    public function edit(Channel $channel)
    {
        $viewData = [
            'channel' => $channel
        ];
        return view('users.channels.edit', $viewData);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param Channel $channel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Channel $channel)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:channels,name,' . $channel->id
        ]);

        if ($validator->fails()) {
            return new Response([
                'errors' => $validator->getMessageBag()->toArray()
            ], 200);
        } else {

            $logoFilename = null;
            $oldLogoFileName = $channel->logo;
            if ($request->hasFile('logo')) {
                if ($request->file('logo')->store('public/users/logo')) {
                    $logoFilename = $request->file('logo')->hashName();

                    Storage::disk('s3')->delete('public/users/logo/' . $oldLogoFileName);
                } else {
                    return new Response([
                        'errors' => 'An error occurred. Please try again.'
                    ], 200);
                }
            } else {
                $logoFilename = $oldLogoFileName;
            }

            $bannerFilename = null;
            $oldBannerFileName = $channel->banner;
            if ($request->hasFile('banner')) {
                if ($request->file('banner')->store('public/users/banner')) {
                    $bannerFilename = $request->file('banner')->hashName();

                    Storage::disk('s3')->delete('public//app/public/' . $oldBannerFileName);
                } else {
                    Storage::disk('s3')->delete('public//app/public/' . $logoFilename);
                    return new Response([
                        'error' => 'An error occurred. Please try again.'
                    ], 200);
                }
            } else {
                $bannerFilename = $oldBannerFileName;
            }

            $channel->name = $request->input('name');
            $channel->description = $request->input('description');
            $channel->logo = $logoFilename;
            $channel->banner = $bannerFilename;
            $channel->facebook = $request->input('facebook');
            $channel->twitter = $request->input('twitter');
            $channel->youtube = $request->input('youtube');
            $channel->instagram = $request->input('instagram');
            $channel->pinterest = $request->input('pinterest');
            $channel->linkedin = $request->input('linkedin');
            $channel->tiktok = $request->input('tiktok');

            if ($channel->save()) {
                return new Response('', 204);
            } else {
                return new Response([
                    'error' => 'An error occurred. Please try again.'
                ], 200);
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Channel $channel
     * @return \Illuminate\Http\Response
     */
    public function destroy(Channel $channel)
    {
        $oldLogoFileName = $channel->logo;
        $oldBannerFileName = $channel->banner;
        $podcasts = $channel->podcasts()->count();

        if ($podcasts == 0) {
            if ($channel->delete()) {
                if ($oldBannerFileName) {
                    Storage::disk('s3')->delete('public/app/public/' . $oldBannerFileName);
                }
                if ($oldLogoFileName) {
                    Storage::disk('s3')->delete('public/users/logo/' . $oldLogoFileName);
                }

                return new Response([
                    'status' => 1,
                    'message' => 'Channel deleted successfully.'
                ]);
            } else {
                return new Response([
                    'status' => 0,
                    'message' => 'An error occurred. Please try again.'
                ]);
            }
        } else {
            return new Response([
                'status' => 0,
                'message' => 'Channel could not be deleted because it contains videos in it.'
            ]);
        }

    }

    /**
     * Returns channels created by logged in user
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getMyChannels(Request $request)
    {
        $user = Auth::user()->id;
        $orderBy = $request->get('orderBy');

        $query = Channel::where('status', 1)->where('user_id', $user)
            ->when($orderBy, function ($query, $orderBy) {
                if (empty($orderBy) || $orderBy == 'date') {
                    return $query->orderBy('created_at', 'desc');
                } elseif ($orderBy == 'popularity') {
                    return $query->orderBy('views', 'desc');
                }
            });
        $channels = $query->paginate(10);
        $viewData = [
            'channels' => $channels,
            'page_title' => 'My Channels',
            'heading' => 'My Channels'
        ];
        return view('channels', $viewData);
    }

    public function getVerificationForm(Channel $channel)
    {
        if ($channel->subscribers >= 500) {
            $eligible = true;
        } else {
            $eligible = false;
        }

        $countriesObj = new Countries();
        $countries = $countriesObj->all()->sortBy('name.common')->pluck('name.common');

        return view('users.channels.verify', compact('channel', 'eligible', 'countries'));
    }
}
