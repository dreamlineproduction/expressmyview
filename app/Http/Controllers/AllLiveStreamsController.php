<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AllLiveStreamsController extends Controller
{
    public function index()
    {
        return view('users.live_streams.all');
    }
}
