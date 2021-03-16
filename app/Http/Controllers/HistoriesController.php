<?php

namespace App\Http\Controllers;

use App\History;
use App\User;
use App\Podcast;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class HistoriesController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        /*$videos = Video::whereIn('id', function ($query) use ($user) {
            $query
                ->select('video_id')
                ->from('histories')
                ->where('user_id', $user->id)
                ->get();
        })->get();*/
        $history = History::where('user_id', Auth::user()->id)->with('podcast')->paginate(10);
        $viewData = array(
            /*'videos' => $videos*/
            'history' => $history
        );
        return view('users.history', $viewData);
    }

    public function remove(History $history)
    {
        if ($history->user_id == Auth::user()->id) {
            if ($history->delete()) {
                return new Response([
                    'status' => 1,
                    'message' => 'Podcast successfully removed from history.'
                ]);
            } else {
                return new Response([
                    'status' => 0,
                    'message' => 'Podcast could not be removed from history.'
                ]);
            }
        } else {
            return new Response([
                'status' => 0,
                'message' => 'You do not have permission to do this action.'
            ]);
        }
    }
}
