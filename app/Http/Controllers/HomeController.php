<?php

namespace App\Http\Controllers;

use App\Category;
use App\Channel;
use App\Podcast;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
//        $categories = Category::where('status', 1)->withCount('videos')->get();
        $channels = Channel::where('status', 1)->orderBy('subscribers')->take(10)->get();

        $podcasts = Podcast::where('status', 1);
        $podcasts2 = clone $podcasts;

        $videoPodcasts = $podcasts->where('file_type', 'video');
        $videoPodcasts2 = clone $videoPodcasts;

        $audioPodcasts = $podcasts2->where('file_type', 'audio');
        $audioPodcasts2 = clone $audioPodcasts;

        $latestVideos = $videoPodcasts->latest()->take(4)->get();
        $popularVideos = $videoPodcasts2->orderBy('views')->take(4)->get();

        $latestAudios = $audioPodcasts->latest()->take(4)->get();
        $popularAudios = $audioPodcasts2->orderBy('views')->take(4)->get();

        $viewData = array(
//            'categories' => $categories,
            'channels' => $channels,
            'latestVideos' => $latestVideos,
            'popularVideos' => $popularVideos,
            'latestAudios' => $latestAudios,
            'popularAudios' => $popularAudios
        );
        return view('home', $viewData);
    }
}
