<?php

namespace App\Http\Controllers;

use App\Comment;
use App\CommentLike;
use App\Podcast;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class CommentsController extends Controller
{
    public function getComments(Podcast $podcast, Request $request)
    {
        $comments = Comment::where('podcast_id', $podcast->id)->with('user.profile', 'likes')->latest()->paginate(3);
        $commentsHTML = '';
        foreach ($comments as $comment) {
            if (Auth::check()) {
                $liked = isCommentLiked($comment->id);
                $likeCommentHTML = '<a href="#" class="card-link ' . (Auth::user()->id != $comment->user_id && !$liked ? 'like-comment' : '') . '"><i class="fa fa-gittip"></i> <span class="like-count-txt">'. formatViewsCount($comment->likes, 1) . '</span> <span class="like-txt">' . ($liked ? 'Liked' : 'Like') . '</span></a>';
            } else {
                $likeCommentHTML = '<a href="' . route('login') . '" class="card-link"><i class="fa fa-gittip"></i> ' . formatViewsCount($comment->likes, 1) . 'Like</a>';
            }

            $commentsHTML .= '<div class="card gedf-card mt-4 comment-single" data-comment="' . $comment->id . '">
                            <div class="card-header">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="mr-2">
                                            <img class="rounded-circle" width="45" src="' . ($comment->user->profile->avatar ? Storage::disk('s3')->url('public/users/avatar/' . $comment->user->profile->avatar) : asset('img/user.png')) . '" alt="Avatar">
                                        </div>
                                        <div class="ml-2">
                                            <div class="h5 m-0">@LeeCross</div>
                                            <div class="h7 text-muted">' . $comment->user->name . '</div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="card-body">
                                <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i> ' . $comment->created_at->diffForHumans() . '</div>
                                <p class="card-text">' . $comment->message . '</p>
                            </div>
                            <div class="card-footer">
                                ' . $likeCommentHTML .  '
                                ' . (Auth::user()->id == $podcast->user_id ? '<a href="#" class="card-link delete-comment float-right">Delete</a>' : '') . '
                            </div>
                        </div>';
        }
        return new Response([
            'comments' => $commentsHTML,
            'count' => $comments->count(),
            'url' => route('comments.get', ['podcast' => $podcast->id, 'page' => $request->get('page') + 1])
        ]);
    }

    /**
     * @param Podcast $podcast
     * @param Request $request
     * @return Response
     */
    public function store(Podcast $podcast, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'message' => 'required|string'
        ]);

        if ($validator->passes()) {
            $comment = new Comment();
            $comment->podcast_id = $podcast->id;
            $comment->user_id = Auth::user()->id;
            $comment->message = $request->input('message');
            if ($comment->save()) {
                return new Response([
                    'status' => 1,
                    'own' => $podcast->user_id == Auth::user()->id ? 1 : 0

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
                'message' => $validator->getMessageBag()->first()
            ]);
        }
    }

    /**
     * @param Comment $comment
     * @return Response
     * @throws \Exception
     */
    public function destroy(Comment $comment)
    {
        if (Auth::user()->id == $comment->podcast->user_id) {
            if ($comment->delete()) {
                return new Response([
                    'status' => 1,
                    'message' => 'Comment deleted.'
                ]);
            } else {
                return new Response([
                    'status' => 0,
                    'message' => 'Comment could not be deleted.'
                ]);
            }
        } else {
            return new Response([
                'status' => 0,
                'message' => 'You cannot perform this operation.'
            ]);
        }
    }

    public function like(Comment $comment)
    {
        if (Auth::check()) {
            if (Auth::user()->id != $comment->podcast->user_id) {
                DB::beginTransaction();

                try {
                    $like = new CommentLike();
                    $like->comment_id = $comment->id;
                    $like->user_id = Auth::user()->id;
                    if ($like->save()) {
                        $comment = Comment::findOrFail($comment->id);
                        $comment->increment('likes');

                        DB::commit();

                        return new Response([
                            'status' => 1,
                            'message' => 'Comment liked.',
                            'likes' => formatViewsCount($comment->likes, 1)
                        ]);
                    }
                } catch (\Exception $exception) {
                    DB::rollBack();

                    return new Response([
                        'status' => 0,
                        'message' => 'Comment could not be liked.'
                    ]);
                }

            } else {
                return new Response([
                    'status' => 0,
                    'message' => 'You cannot like your own comment.'
                ]);
            }
        } else {
            return new Response([
                'status' => 0,
                'message' => 'You cannot perform this operation.'
            ]);
        }
    }
}
