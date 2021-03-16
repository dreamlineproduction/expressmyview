<?php

namespace App\Http\Controllers\Admin;

use App\Channel;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ChannelsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $channels = Channel::with('user')->get();
        $viewData = array(
            'channels' => $channels
        );
        return view('admin.channels.index', $viewData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Channel $channel
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(Channel $channel)
    {
        $viewData = [
            'channel' => $channel
        ];
        return view('admin.channels.edit', $viewData);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param Channel $channel
     * @return \Illuminate\Http\RedirectResponse|Response
     */
    public function update(Request $request, Channel $channel)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        } else {

            $logoFilename = $oldLogoFileName = $channel->logo;
            if ($request->hasFile('logo')) {
                if ($request->file('logo')->store('users/logo')) {
                    $logoFilename = $request->file('logo')->hashName();

                    Storage::disk('s3')->delete('public/users/logo/' . $oldLogoFileName);
                } else {
                    return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
                }
            }

            $bannerFilename = $oldBannerFileName = $channel->banner;
            if ($request->hasFile('banner')) {
                if ($request->file('banner')->store('users/banner')) {
                    $bannerFilename = $request->file('banner')->hashName();

                    Storage::disk('s3')->delete('public//app/public/' . $oldBannerFileName);
                } else {
                    Storage::disk('s3')->delete('public//app/public/' . $logoFilename);

                    return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
                }
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
            $channel->verified = $request->input('verified') == 'yes' ? 1 : 0;

            if ($channel->save()) {
                return redirect()->back()->with('success-msg', 'Channel updated successfully.');
            } else {
                return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Channel $channel
     * @return \Illuminate\Http\Response
     * @throws \Exception
     */
    public function destroy(Channel $channel)
    {
        $logo = $channel->logo;
        $banner = $channel->banner;

        $podcasts = $channel->podcasts()->get();

        if ($channel->delete()) {
            if (!empty($logo)) {
                Storage::disk('s3')->delete('public/users/logo/' . $logo);
            }

            if (!empty($banner)) {
                Storage::disk('s3')->delete('public/app/public/' . $banner);
            }

            $podcastPath = storage_path('/app/public/podcast');
            foreach ($podcasts as $podcast) {
                $filename = $podcast->filename;
                $type = $podcast->file_type;
                $podcast->delete();
                if ($type = 'video') {
                    if (file_exists($podcastPath . '/360/' . $filename)) {
                        unlink($podcastPath . '/360/' . $filename);
                    }
                    if (file_exists($podcastPath . '/480/' . $filename)) {
                        unlink($podcastPath . '/480/' . $filename);
                    }
                    if (file_exists($podcastPath . '/720/' . $filename)) {
                        unlink($podcastPath . '/720/' . $filename);
                    }
                    if (file_exists($podcastPath . '/1080/' . $filename)) {
                        unlink($podcastPath . '/1080/' . $filename);
                    }
                } else {
                    if (file_exists($podcastPath . '/audio/' . $filename)) {
                        unlink($podcastPath . '/audio/' . $filename);
                    }
                }
            }

            return redirect()->back()->with('success-msg', 'Channel deleted successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'Channel could not be deleted.');
        }
    }
}
