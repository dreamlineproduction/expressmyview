<?php

namespace App\Http\Controllers;

use App\Like;
use App\Podcast;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LikesController extends Controller
{
    public function changeLikeStatus(Podcast $video)
    {
        $userId = Auth::user()->id;
        $like = Like::where('video_id', $video->id)->where('user_id', $userId)->first();

        if (empty($like)) {
            $newLike = new Like();
            $newLike->podcast_id = $video->id;
            $newLike->user_id = $userId;

            DB::beginTransaction();
            if ($newLike->save()) {

                if ($video->increment('likes')) {
                    DB::commit();

                    return new Response([
                        'status' => 1,
                        'action' => 'subscribed',
                        'likesCount' => $video->likes
                    ]);
                } else {
                    DB::rollBack();

                    return new Response([
                        'status' => 0
                    ]);
                }

            } else {
                return new Response([
                    'status' => 0
                ]);
            }
        } else {
            DB::beginTransaction();
            if ($like->delete()) {

                if ($video->decrement('likes')) {
                    DB::commit();

                    return new Response([
                        'status' => 1,
                        'action' => 'unsubscribed',
                        'likesCount' => $video->likes
                    ]);
                } else {
                    DB::rollBack();

                    return new Response([
                        'status' => 0
                    ]);
                }
            } else {
                return new Response([
                    'status' => 0
                ]);
            }
        }
    }
}
