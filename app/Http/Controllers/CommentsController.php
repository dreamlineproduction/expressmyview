<?php

namespace App\Http\Controllers;

use App\Comment;
use App\CommentLike;
use App\Podcast;
use App\User;
use App\UserProfile;
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

    public function getAllCommentsByPodcastId(Request $request){
        $pid = $request->pid;
        $user_id = $request->uid;
        $commentCount =  Comment::where('podcast_id', $pid)->where('parent_id', '=', '0')->count();
        $comments = Comment::where('podcast_id', $pid)->where('parent_id', '=', '0')->latest()->paginate(10);
       
        foreach ($comments as $comment ){
            $comment['isLiked'] = false;
            $comment['isSame'] = false;
            $uid = $comment['user_id'];
            $isLiked = CommentLike::where('comment_id', '=', $comment['id'])->where('user_id', '=', $user_id)->count();

            if($uid == $user_id){
                $comment['isSame'] = true;
            }else if($isLiked > 0){
                $comment['isLiked'] = true;
            }
            
            $comment["replyCount"] = Comment::where('podcast_id', $pid)->where('parent_id', '=', $comment['id'])->count();
            $comment["date"] = $comment['created_at']->diffForHumans();
            $comment['username'] = $this->getUserName($uid);
            $comment["user_image"] = $this->getUserImage($uid);
            if($comment['likes'] >= 1000){
                $comment['likes'] =  (int)($comment['likes']/1000)."K";
            }
        }
        return new Response([
            'status' => 1,
            'message' => $comments,
            'count' => $commentCount
        ]);
    }

    public function getAllReplyByCommentId(Request $request){
        $cid = $request->cid;
        $user_id = $request->uid;
        $comment = Comment::find($cid);
        $uid = $comment['user_id'];
        $comment['isLiked'] = false;
        $comment['isSame'] = false;
        $isLiked = CommentLike::where('comment_id', '=', $comment['id'])->where('user_id', '=', $user_id)->count();

        if($uid == $user_id){
            $comment['isSame'] = true;
        }else if($isLiked > 0){
            $comment['isLiked'] = true;
        }

        $comment["replyCount"] = Comment::where('parent_id', '=', $comment['id'])->count();
        $comment["date"] = $comment['created_at']->diffForHumans();
        $comment['username'] = $this->getUserName($uid);
        $comment["user_image"] = $this->getUserImage($uid);
        
        if($comment['likes'] >= 1000){
            $comment['likes'] =  (int)($comment['likes']/1000)."K";
        }

        $allReplies = Comment::where('parent_id', '=', $comment['id'])->latest()->paginate(10);
        foreach ($allReplies as $reply ){
            $replyUserid = $reply['user_id'];
            $reply["replyCount"] = Comment::where('parent_id', '=', $reply['id'])->count();
            $reply["date"] = $reply['created_at']->diffForHumans();
            $reply['username'] = $this->getUserName($replyUserid);
            $reply["user_image"] = $this->getUserImage($replyUserid);
            if($reply['likes'] >= 1000){
                $reply['likes'] =  (int)($reply['likes']/1000)."K";
            }
            $reply['isLiked'] = false;
            $reply['isSame'] = false;
            $isReplyLiked = CommentLike::where('comment_id', '=', $reply['id'])->where('user_id', '=', $user_id)->count();
            
            if($replyUserid == $user_id){
                $reply['isSame'] = true;
            }else if($isReplyLiked > 0){
                $reply['isLiked'] = true;
            }
        }
        return new Response([
            'status' => 1,
            'comment' => $comment,
            'replies' => $allReplies,
        ]);
    }


    public function getUserName($uid){
        $user = User::find($uid);

        if($user){
            return $user->name;
        }else{
            return "";
        }
    }

    public function getUserImage($uid){
        $user_profile = Userprofile::where("user_id", $uid)->get();
        if($user_profile){
            if($user_profile[0]['avatar']){
                $user_image= Storage::disk('s3')->url("public/users/avatar/".$user_profile[0]['avatar']);
                return $user_image;
            }else{
                return "";
            }
        }
        else{
            return "";
        }
    }
    
    public function uploadComment(Request $request){
        $pid = $request->pid;
        $commentText = $request->comment;
        $uid = $request->uid;
        
        $validator = Validator::make($request->all(), [
            'comment' => 'required|string'
        ]);       

        if ($validator->passes()) {
            $comment = new Comment();
            $comment->podcast_id = $pid;
            $comment->user_id = $uid;
            $comment->message = $commentText;
            $comment->parent_id = 0;
            
            if ($comment->save()) {
                $userid = $comment["user_id"];
                $comment["date"] = $comment['created_at']->diffForHumans();
                $comment['username'] = $this->getUserName($userid);
                $comment["user_image"] = $this->getUserImage($userid);
                return new Response([
                    'status' => 1,
                    'message' => $comment

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
                'message' => "failed"
            ]);
        }
    }

    public function uploadReply(Request $request){
        $pid = $request->pid;
        $commentText = $request->comment;
        $uid = $request->uid;
        $cid = $request->cid;

        $validator = Validator::make($request->all(), [
            'comment' => 'required|string'
        ]);       

        if ($validator->passes()) {
            $comment = new Comment();
            $comment->podcast_id = $pid;
            $comment->user_id = $uid;
            $comment->message = $commentText;
            $comment->parent_id = $cid;
            
            if ($comment->save()) {
                $comment["date"] = $comment['created_at']->diffForHumans();
                $comment['username'] = $this->getUserName($uid);
                $comment["user_image"] = $this->getUserImage($uid);
                return new Response([
                    'status' => 1,
                    'message' => $comment

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
                'message' => "failed"
            ]);
        }
    }

    public function likeComment(Request $request)
    {
        $cid = $request->cid;
        $uid = $request->uid;

        DB::beginTransaction();
        $comment = Comment::find($cid);
        if($uid == $comment->user_id){
            return new Response([
                'status' => 1,
                'message' => "You can't like your own comment",
            ]);
        }
        $isLiked = CommentLike::where('comment_id', '=', $cid)->where('user_id', '=', $uid)->count();
        
        if($isLiked != 0){
            $liked = CommentLike::where('comment_id', '=', $cid)->where('user_id', '=', $uid)->first();
            if($liked->delete()){
                $comment = Comment::findOrFail($cid);
                $comment->decrement('likes');

                DB::commit();
               
                if($comment->likes >= 1000){
                    $comment->likes =  (int)($comment['likes']/1000)."K";
                }
                return new Response([
                    'status' => 1,
                    'message' => 'Comment unliked.',
                    'likes' => $comment->likes
                ]);
            }else{
                return new Response([
                    'status' => 0,
                    'error' => "Comment could not be unliked.",
                ]);
            }
        }else{
            try {
                $like = new CommentLike();
                $like->comment_id = $cid;
                $like->user_id = $uid;
                if ($like->save()) {
                    $comment = Comment::findOrFail($cid);
                    if($comment->likes >= 1000){
                        $comment->likes =  (int)($comment['likes']/1000)."K";
                    }
                    $comment->increment('likes');
    
                    DB::commit();
    
                    return new Response([
                        'status' => 1,
                        'message' => 'Comment liked.',
                        'likes' => $comment->likes
                    ]);
                }
            } catch (\Exception $exception) {
                DB::rollBack();
    
                return new Response([
                    'status' => 0,
                    'message' => 'Comment could not be liked.'
                ]);
            }   
        }
    }

    public function deleteComment(Request $request)
    {
        $cid = $request->cid;
        $uid = $request->uid;

        $comment = Comment::find($cid);

        if ($uid == $comment->user_id) {
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
}
