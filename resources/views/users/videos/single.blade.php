@extends('layouts.app')

@section('title')
{{ $podcast->title }}
@endsection

@section('header')
@if($podcast->file_type == 'video')
<!-- Fluid Player -->
<link rel="stylesheet" href="https://cdn.fluidplayer.com/v2/current/fluidplayer.min.css" type="text/css" />
@endif

<!-- AlertifyJS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
<!-- AlertifyJS Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="{{ asset('css/green-audio-player.css') }}">
@endsection

@section('content')
<div class="container-fluid pb-0">
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-8">
                <div class="single-video-left">
                    <div class="single-video">
                        @if($podcast->converted == 0)
                        <div class="proccessing-section text-center single-video-title box mb-2">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" width="40" data-icon="spinner"
                                role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                                class="svg-inline--fa fa-spinner fa-w-16 fa-spin fa-lg">
                                <path fill="currentColor"
                                    d="M304 48c0 26.51-21.49 48-48 48s-48-21.49-48-48 21.49-48 48-48 48 21.49 48 48zm-48 368c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zm208-208c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zM96 256c0-26.51-21.49-48-48-48S0 229.49 0 256s21.49 48 48 48 48-21.49 48-48zm12.922 99.078c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.491-48-48-48zm294.156 0c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.49-48-48-48zM108.922 60.922c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.491-48-48-48z"
                                    class=""></path>
                            </svg>
                            <h5 class="mt-4">This Podcast is still proccessing. Please checkback after few
                                times. </h5>

                        </div>
                        @else
                        @if($podcast->file_type == 'video')
                        <video id="single-video"
                            poster="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}">
                            @if($podcast->converted >= 1080)
                            <source data-fluid-hd
                                src="{{ Storage::disk('s3')->url('public/podcast/1080/' . $podcast->filename) }}"
                                title="1080p" type="video/mp4">
                            @endif
                            @if($podcast->converted >= 720))
                            <source data-fluid-hd
                                src="{{ Storage::disk('s3')->url('public/podcast/720/' . $podcast->filename) }}"
                                title="720p" type="video/mp4">
                            @endif
                            @if($podcast->converted >= 480))
                            <source src="{{ Storage::disk('s3')->url('public/podcast/480/' . $podcast->filename) }}"
                                title="480p" type="video/mp4">
                            @endif
                            @if($podcast->converted >= 360))
                            <source src="{{ Storage::disk('s3')->url('public/podcast/360/' . $podcast->filename) }}"
                                title="360p" type="video/mp4">
                            @endif
                        </video>
                        @else

                        <div class="audio-tmbg">
                            <div class="audio-title-now-playing">
                                <h6>Now Playing</h6>
                                <h5>{{ $podcast->title }}</h5>

                            </div>

                            <img
                                src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}">
                        </div>
                        <div class="ready-player-1">

                            <audio preload="none">
                                <source
                                    src="{{ Storage::disk('s3')->url('public/podcast/audio/' . $podcast->filename) }}"
                                    type="audio/ogg">
                                <source
                                    src="{{ Storage::disk('s3')->url('public/podcast/audio/' . $podcast->filename) }}"
                                    type="audio/mpeg">
                            </audio>
                        </div>

                        <!-- <audio controls>
                            <source src="{{ Storage::disk('s3')->url('public/podcast/audio/' . $podcast->filename) }}"
                                type="audio/ogg">
                            <source src="{{ Storage::disk('s3')->url('public/podcast/audio/' . $podcast->filename) }}"
                                type="audio/mpeg">
                            Your browser does not support the audio element.
                        </audio> -->
                        <!-- <div id="single-audio"
                            data-source="{{ Storage::disk('s3')->url('public/podcast/audio/' . $podcast->filename) }}">



                        </div> -->
                        <!-- <div class="controls mt-4 mb-4">
                            <button class="btn btn-primary" id="backward">
                                <i class="fa fa-step-backward"></i>

                            </button>

                            <button class="btn btn-primary" id="playpause">
                                <i class="fa fa-play"></i>

                                /
                                <i class="fa fa-pause"></i>

                            </button>

                            <button class="btn btn-primary" id="forward">
                                <i class="fa fa-step-forward"></i>

                            </button>

                            <button class="btn btn-primary" id="mute">
                                <i class="fa fa-volume-off"></i>

                            </button>
                        </div> -->
                        @endif
                        @endif
                    </div>
                    <div class="single-video-title box mb-2">

                        <div class="row">

                            <div class="col-md-6">

                                <h2><a href="#">{{ $podcast->title }}</a></h2>
                                <p class="mb-0"><i class="fas fa-eye"></i> {{ number_format($podcast->views) }}
                                    views
                                </p>
                            </div>

                            <div class="col-md-6">

                                <div class="text-right">
                                    @if(Auth::check() && $podcast->user_id == Auth::user()->id)
                                    <a class="btn btn-danger mr-2" role="button"
                                        href="{{ route('podcast.edit', $podcast->id) }}">
                                        Edit
                                    </a>
                                    @endif

                                    @if(Auth::check())
                                    @if($podcast->user_id != Auth::user()->id)
                                    @if(isSubscribed($podcast->channel->id, Auth::user()->id))
                                    <button class="btn btn-danger" type="button" id="subscribe_btn"
                                        data-channel="{{ $podcast->channel_id }}">
                                        <span class="sub-status">Unsubscribe</span>
                                        <strong class="sub-count">{{ $podcast->channel->subscribers }}</strong>
                                    </button>
                                    @else
                                    <button class="btn btn-danger" type="button" id="subscribe_btn"
                                        data-channel={{ $podcast->channel_id }}>
                                        <span class="sub-status">Subscribe</span>
                                        <strong class="sub-count">{{ $podcast->channel->subscribers }}</strong>
                                    </button>
                                    @endif
                                    <button class="btn btn btn-outline-danger" type="button"><i
                                            class="fas fa-bell"></i></button>
                                    @else
                                    <button class="btn btn-danger" type="button">Subscribers
                                        <strong>{{ $podcast->channel->subscribers }}</strong>
                                    </button>
                                    @endif
                                    @else
                                    <a href="{{ route('login') }}" class="btn btn-danger" role="button">
                                        Subscribe
                                        <strong>{{ $podcast->channel->subscribers }}</strong>
                                    </a>
                                    @endif

                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="single-video-author box mb-2">
                        <div class="float-right">

                            @if(Auth::check())
                            @if($podcast->user_id != Auth::user()->id)
                            @if(isLiked($podcast->id, Auth::user()->id))
                            <button class="btn btn btn-danger" type="button" id="like_btn"
                                data-podcast="{{ $podcast->id }}"><i class="far fa-thumbs-up"></i> <span
                                    id="likes_count">{{ formatSubscribersCount($podcast->likes) }}</span>
                            </button>
                            @else
                            <button class="btn btn btn-outline-danger" type="button" id="like_btn"
                                data-podcast="{{ $podcast->id }}"><i class="far fa-thumbs-up"></i> <span
                                    id="likes_count">{{ formatSubscribersCount($podcast->likes) }}</span>
                            </button>
                            @endif
                            @else
                            <button class="btn btn btn-outline-danger" type="button"><i class="far fa-thumbs-up"></i>
                                {{ formatSubscribersCount($podcast->likes) }}
                            </button>
                            @endif
                            @else
                            <a href="{{ route('login') }}" class="btn btn-danger" role="button">
                                <i class="far fa-thumbs-up"></i> {{ formatSubscribersCount($podcast->likes) }}
                            </a>
                            @endif
                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                            <script type="text/javascript"
                                src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ayanloveme2006"></script>

                        </div>


                        <img class="img-fluid"
                            src="{{ $podcast->channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $podcast->channel->logo) : asset('img/user.png') }}"
                            alt="">
                        <p>
                            <a href="{{ route('channel.show', $podcast->channel->id) }}">
                                <strong>{{ $podcast->channel->name }}</strong>
                            </a>
                            @if($podcast->channel->verified)
                            <span title="verified" data-placement="top" data-toggle="tooltip"
                                data-original-title="Verified">
                                <i class="fas fa-check-circle text-success"></i>
                            </span>
                            @endif
                        </p>
                        <small>Published on {{ $podcast->created_at->format('M d, Y') }}</small>
                    </div>
                    <div class="single-video-info-content box mb-3">


                        <div class="row">
                            <div class="col-md-4">
                                <h6>Cast:</h6>
                                <p>
                                    @foreach($casts as $cast)
                                    <a href="#">{{ $cast->name }}</a>{{ !$loop->last ? ', ' : '' }}
                                    @endforeach
                                </p>
                            </div>


                            <div class="col-md-4">
                                <h6>Category :</h6>
                                <p>
                                    @foreach($categories as $category)
                                    <a href="#">{{ $category->name }}</a>{{ !$loop->last ? ', ' : '' }}
                                    @endforeach
                                </p>
                            </div>

                            <div class="col-md-4">

                                <h6>Tags :</h6>
                                <p class="tags mb-0">
                                    @foreach($tags as $tag)
                                    <span><a href="#">{{ $tag->name }}</a></span>
                                    @endforeach
                                </p>
                            </div>


                        </div>


                        <div class="row">

                            <div class="col-md-12">
                                <h6>About :</h6>
                                <p>{{ $podcast->description }}</p>

                            </div>


                        </div>


                    </div>


                    <div class="single-video-info-content box mb-3">


                        <div class="row">

                            <div class="col-md-12">
                                <!--- \\\\\\\Post-->
                                <div class="gedf-card">
                                    <div class="card-body1">
                                        {{ $commentsCount }} comments
                                    </div>
                                    @if(Auth::check())
                                    <div class="card-body1">
                                        <form action="{{ route('comment.store', $podcast->id) }}" id="comment_form">
                                            @csrf
                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="posts" role="tabpanel"
                                                    aria-labelledby="posts-tab">
                                                    <div class="form-group">
                                                        <label class="sr-only" for="message">post</label>
                                                        <textarea class="form-control" name="message" id="message"
                                                            rows="5" placeholder="What are you thinking?"></textarea>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class="btn-toolbar justify-content-between">
                                                <div class="btn-group">
                                                    <button type="submit" class="btn btn-primary">Post</button>
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                    @endif
                                </div>
                                <!-- Post /////-->


                                <!--- \\\\\\\Post-->
                                <div id="comments" class="mt-5">

                                    @foreach($comments as $comment)
                                    <div class="user-comments-section">
                                        <img src="{{ $comment->user->profile->avatar ? Storage::disk('s3')->url('public/users/avatar/' . $comment->user->profile->avatar) : asset('img/user.png') }}"
                                            alt="..." class="img-fluid">
                                        <span>{{ $comment->user->name }}</span>
                                        <span><i class="fa fa-clock-o"></i>
                                            {{ $comment->created_at->diffForHumans() }}</span>
                                        <p> {{ $comment->message }}</p>

                                        <div class="1">
                                            @if(Auth::check())
                                            <a href="#"
                                                class="card-link {{ Auth::user()->id != $comment->user_id && !isCommentLiked($comment->id) ? 'like-comment' : '' }}">
                                                <i class="fa fa-gittip"></i> <span
                                                    class="like-count-txt">{{ formatViewsCount($comment->likes, 1) }}</span>
                                                <span
                                                    class="like-txt">{{ isCommentLiked($comment->id) ? 'Liked' : 'Like' }}</span>
                                            </a>
                                            @else
                                            <a href="{{ route('login') }}" class="card-link"><i
                                                    class="fa fa-gittip"></i> {{ formatViewsCount($comment->likes, 1) }}
                                                Like</a>
                                            @endif

                                            @if(Auth::check() && Auth::user()->id == $podcast->user_id)
                                            <a href="#" class="card-link delete-comment float-right">Delete</a>
                                            @endif
                                        </div>

                                    </div>

                                    @endforeach

                                </div>

                                @if($comments->hasMorePages())
                                <div class="text-center mt-2">
                                    <a href="{{ route('comments.get', ['podcast' => $podcast->id, 'page' => 2]) }}"
                                        class="btn btn-light" id="more_comments">Load More</a>
                                </div>
                                @endif
                                <!-- Post /////-->


                            </div>


                        </div>


                    </div>


                </div>
            </div>
            <div class="col-md-4">
                <div class="single-video-right">
                    <div class="row">
                        <div class="col-md-12">
                            <!--   <div class="adblock">
                                       <div class="img">
                                           Google AdSense<br>
                                           336 x 280
                                       </div>
                                   </div>-->
                            <div class="main-title">

                                <h6>Up Next</h6>
                            </div>
                        </div>
                        <div class="col-md-12">
                            @foreach($relatedPodcasts as $podcast)
                            <div class="video-card video-card-list">
                                <div class="video-card-image">
                                    <a class="play-icon" href="{{ route('podcast.show', $podcast->id) }}"><i
                                            class="fas fa-play-circle"></i></a>
                                    <a href="{{ route('podcast.show', $podcast->id) }}"><img class="img-fluid"
                                            src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}"
                                            alt=""></a>
                                    <div class="time">{{ $podcast->runtime_formatted }}</div>
                                </div>
                                <div class="video-card-body">
                                    {{--<div class="btn-group float-right right-action">
                                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                                                   aria-haspopup="true" aria-expanded="false">
                                                    <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i>
                                                        &nbsp; Top Rated</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i>
                                                        &nbsp; Viewed</a>
                                                    <a class="dropdown-item" href="#"><i
                                                                class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>
                                                </div>
                                            </div>--}}
                                    <div class="video-title">
                                        <a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->title }}</a>
                                    </div>
                                    <div class="video-page text-success">
                                        <a
                                            href="{{ route('channel.show', $podcast->channel_id) }}">{{ $podcast->channel->name }}</a>
                                        @if($podcast->channel->verified)
                                        <a title="Verified" data-placement="top" data-toggle="tooltip" href="#"
                                            data-original-title="Verified"><i
                                                class="fas fa-check-circle text-success"></i></a>
                                        @endif
                                    </div>
                                    <div class="video-view">
                                        {{ formatViewsCount($podcast->views, 1) }} views &nbsp;<i
                                            class="fas fa-calendar-alt"></i> {{ $podcast->created_at->diffForHumans() }}
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            <!-- <div class="adblock mt-0">
                                     <div class="img">
                                         Google AdSense<br>
                                         336 x 280
                                     </div>
                                 </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer')
@if($podcast->file_type == 'video')
<script>
document.addEventListener('DOMContentLoaded', function() {
    new GreenAudioPlayer('.ready-player-1', {
        showTooltips: true,
        showDownloadButton: false,
        enableKeystrokes: true

    });
});
</script>
<!-- Fluid Player -->
<script src="https://cdn.fluidplayer.com/v2/current/fluidplayer.min.js" defer></script>
@else
<!-- wavesurfer -->
<script src="{{ asset('js/wavesurfer.js') }}" defer></script>

@endif

<!-- AlertifyJS -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js" defer></script>

<script src="{{ asset('js/podcast.js') }}" defer></script>
<script src="{{ asset('js/green-audio-player.js') }}"></script>

@endsection