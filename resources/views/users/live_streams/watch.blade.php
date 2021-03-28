@extends('layouts.app')

@section('title')
Streaming Now - {{ $stream->title }}
@endsection

@section('header')
<!-- Fluid Player -->
<!-- <link rel="stylesheet" href="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.css" type="text/css" /> -->

<!-- Emoji Set -->
<link href="https://emoji-css.afeld.me/emoji.css" rel="stylesheet">
<link href="{{ asset('css/spinkit.css') }}" rel="stylesheet" type="text/css">


@endsection

@section('content')

<div id="content-wrapper">
    <div class="container-fluid pb-0">
        <div class="video-block-right-list section-padding">
            <div class="row mb-4">
                <div class="col-md-8">
                    <div class="single-video-left">
                        <div class="single-video live-strm">
                            <span id="connectionState"></span>
                            <div id="buttons-container" class="row justify-content-end">
                                <div class="col-md-6 text-center">
                                    <label for="volumelevel">Decible level: </label>
                                    <meter id="volumelevel" value="0" min="0" max="1"></meter>
                                </div>
                                <div class="col-md-2 text-center">
                                    <button id="switchWindow" type="button" class="btn btn-block btn-success btn-lg">
                                        <i class="far fa-window-restore"></i>
                                    </button>
                                </div>
                                <div class="col-md-2 text-center">
                                    <button id="golive-btn" type="button" class="btn btn-block btn-success btn-lg">
                                        <i id="golive-icon" class="fas fa-podcast"></i>
                                    </button>
                                </div>

                                <div class="col-md-2 text-center">
                                    <button id="exit-btn" type="button" class="btn btn-block btn-danger btn-lg">
                                        <i id="exit-icon" class="fas fa-phone-slash"></i>
                                    </button>
                                </div>
                            </div>


                            <div id="external-broadcasts-container">

                            </div>
                            <div class="col-md-12" id='posterimage'>
                                <div id="statusScreen" class="alert alert-primary align-self-center">
                                    <span></span>
                                </div>
                                <div class="sk-wave sk-center" id='spinner'>
                                    <div class="sk-wave-rect"></div>
                                    <div class="sk-wave-rect"></div>
                                    <div class="sk-wave-rect"></div>
                                    <div class="sk-wave-rect"></div>
                                    <div class="sk-wave-rect"></div>
                                </div>

                            </div>
                            <!-- <div id="fluid-player">
                            <video id='fluidplayerdiv'>
                              <source src='/videos/bannerg004.mp4' />
                            </video>
                          </div> -->



                        </div>
                        <div class="single-video-title box mb-2">

                            <div class="row">

                                <div class="col-md-6">

                                    <h2><a href="#">{{ $stream->title }}</a></h2>
                                    <!-- <p class="mb-0"><i class="fas fa-eye"></i> {{ number_format($stream->views) }}
                                    </p> -->
                                    <p class="mb-0" id="liveviewerscount">Total <i class="fas fa-eye"></i> -- </p>
                                </div>

                                <div class="col-md-6">

                                    <div class="text-right">
                                        @if(Auth::check())
                                        @if($stream->user_id != Auth::user()->id)
                                        @if(isSubscribed($stream->channel->id, Auth::user()->id))
                                        <button class="btn btn-danger" type="button" id="subscribe_btn"
                                            data-channel="{{ $stream->channel_id }}">
                                            <span class="sub-status">Unsubscribe</span>
                                            <strong class="sub-count">{{ $stream->channel->subscribers }}</strong>
                                        </button>
                                        @else
                                        <button class="btn btn-danger" type="button" id="subscribe_btn"
                                            data-channel={{ $stream->channel_id }}>
                                            <span class="sub-status">Subscribe</span>
                                            <strong class="sub-count">{{ $stream->channel->subscribers }}</strong>
                                        </button>
                                        @endif
                                        <button class="btn btn btn-outline-danger" type="button"><i
                                                class="fas fa-bell"></i></button>
                                        @else
                                        <button class="btn btn-danger" type="button">Subscribers
                                            <strong>{{ $stream->channel->subscribers }}</strong>
                                        </button>
                                        @endif
                                        @else
                                        <a href="{{ route('login') }}" class="btn btn-danger" role="button">
                                            Subscribe
                                            <strong>{{ $stream->channel->subscribers }}</strong>
                                        </a>
                                        @endif
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="single-video-author box mb-2">
                            <div class="float-right">

                                @if(Auth::check())
                                @if($stream->user_id != Auth::user()->id)
                                @if(isLiked($stream->id, Auth::user()->id))
                                <button class="btn btn btn-danger" type="button" id="like_btn"
                                    data-stream="{{ $stream->id }}"><i class="far fa-thumbs-up"></i> <span
                                        id="likes_count">{{ formatSubscribersCount($stream->likes) }}</span>
                                </button>
                                @else
                                <button class="btn btn btn-outline-danger" type="button" id="like_btn"
                                    data-stream="{{ $stream->id }}"><i class="far fa-thumbs-up"></i> <span
                                        id="likes_count">{{ formatSubscribersCount($stream->likes) }}</span>
                                </button>
                                @endif
                                @else
                                <button class="btn btn btn-outline-danger" type="button"><i
                                        class="far fa-thumbs-up"></i> {{ formatSubscribersCount($stream->likes) }}
                                </button>
                                @endif
                                @else
                                <a href="{{ route('login') }}" class="btn btn-danger" role="button">
                                    <i class="far fa-thumbs-up"></i> {{ formatSubscribersCount($stream->likes) }}
                                </a>
                                @endif

                                <button class="btn btn btn-outline-warning" type="button"><i
                                        class="far fa-share-square"></i></button>

                            </div>


                            <img class="img-fluid" src="{{ asset('img/s4.png') }}" alt="">
                            <p><a href="#"><strong>{{ $stream->channel->name }}</strong></a> <span title=""
                                    data-placement="top" data-toggle="tooltip" data-original-title="Verified"><i
                                        class="fas fa-check-circle text-success"></i></span></p>
                            <small>Published on {{ $stream->created_at->format('M d, Y') }}</small>
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
                                    <p>{{ $stream->description }}</p>

                                </div>


                            </div>


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-video-right">
                        <div class="row">

                            <div class="page-content w-100 page-container" id="page-content">
                                <div class="1">

                                    <div class="chat-ui">
                                        <div class="col-md-12">
                                            <div class="card card-bordered">
                                                <div class="card-header">
                                                    <h4 class="card-title"><strong>Live Chat</strong></h4>
                                                </div>
                                                @if($usersignedin)
                                                <div class="ps-container ps-theme-default ps-active-y" id="chat-content"
                                                    style="overflow-y: scroll !important; height:500px !important;">





                                                    <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                                                        <div class="ps-scrollbar-x" tabindex="0"
                                                            style="left: 0px; width: 0px;"></div>
                                                    </div>
                                                    <div class="ps-scrollbar-y-rail"
                                                        style="top: 0px; height: 0px; right: 2px;">
                                                        <div class="ps-scrollbar-y" tabindex="0"
                                                            style="top: 0px; height: 2px;"></div>
                                                    </div>
                                                </div>
                                                <div class="publisher bt-1 border-light">
                                                    @php
                                                    $user = \Illuminate\Support\Facades\Auth::user();
                                                    @endphp
                                                    <img alt="($user->name)" class="avatar avatar-xs"
                                                        src="{{ !empty($user->profile->avatar) ? url('/storage/users/avatar/' . $user->profile->avatar) : asset('img/user.png') }}">


                                                    <input class="publisher-input" type="text" id="publisher-input"
                                                        placeholder="Write something">
                                                    <div class="btn-group dropup">
                                                        <button type="button" class="publisher-btn" id="emojidrop"
                                                            data-toggle="dropdown" aria-haspopup="true"
                                                            aria-expanded="false">
                                                            <i class="fa fa-smile"></i>
                                                        </button>
                                                        <div class="dropdown-menu emoji-item">

                                                            <a href="#"><i class="em em---1" aria-role="presentation"
                                                                    aria-label="THUMBS UP SIGN"></i></a>
                                                            <a href="#"><i class="em em--1" aria-role="presentation"
                                                                    aria-label="THUMBS DOWN SIGN"></i></a>
                                                            <a href="#"><i class="em em-100" aria-role="presentation"
                                                                    aria-label="HUNDRED POINTS SYMBOL"></i></a>
                                                            <a href="#"><i class="em em-angry" aria-role="presentation"
                                                                    aria-label="ANGRY FACE"></i></a>
                                                            <a href="#"><i class="em em-astonished"
                                                                    aria-role="presentation"
                                                                    aria-label="ASTONISHED FACE"></i></a>
                                                            <a href="#"><i class="em em-blush" aria-role="presentation"
                                                                    aria-label="SMILING FACE WITH SMILING EYES"></i></a>
                                                            <a href="#"><i class="em em-clap" aria-role="presentation"
                                                                    aria-label="CLAPPING HANDS SIGN"></i></a>
                                                            <a href="#"><i class="em em-clown_face"
                                                                    aria-role="presentation"
                                                                    aria-label="CLOWN FACE"></i></a>
                                                            <a href="#"><i class="em em-cold_sweat"
                                                                    aria-role="presentation"
                                                                    aria-label="FACE WITH OPEN MOUTH AND COLD SWEAT"></i></a>
                                                            <a href="#"><i class="em em-confounded"
                                                                    aria-role="presentation"
                                                                    aria-label="CONFOUNDED FACE"></i></a>
                                                            <a href="#"><i class="em em-confused"
                                                                    aria-role="presentation"
                                                                    aria-label="CONFUSED FACE"></i></a>
                                                            <a href="#"><i class="em em-cry" aria-role="presentation"
                                                                    aria-label="CRYING FACE"></i></a>
                                                            <a href="#"><i class="em em-disappointed"
                                                                    aria-role="presentation"
                                                                    aria-label="DISAPPOINTED FACE"></i></a>
                                                            <i class="em em-heart_eyes" aria-role="presentation"
                                                                aria-label="SMILING FACE WITH HEART-SHAPED EYES"></i>
                                                            <a href="#"><i class="em em-bird" aria-role="presentation"
                                                                    aria-label="BIRD"></i></a>
                                                            <a href="#"><i class="em em-facepunch"
                                                                    aria-role="presentation"
                                                                    aria-label="FISTED HAND SIGN"></i></a>
                                                            <a href="#"><i class="em em-face_with_rolling_eyes"
                                                                    aria-role="presentation"
                                                                    aria-label="FACE WITH ROLLING EYES"></i></a>
                                                            <a href="#"><i class="em em-hankey" aria-role="presentation"
                                                                    aria-label="PILE OF POO"></i></a>
                                                            <a href="#"><i class="em em-heart" aria-role="presentation"
                                                                    aria-label="HEAVY BLACK HEART"></i></a>
                                                            <a href="#"><i class="em em-laughing"
                                                                    aria-role="presentation"
                                                                    aria-label="SMILING FACE WITH OPEN MOUTH AND TIGHTLY-CLOSED EYES"></i></a>
                                                        </div>
                                                    </div>


                                                    <a class="publisher-btn text-info" href="#" data-abc="true"
                                                        id="publisher-btn"><i class="fa fa-paper-plane"></i></a>

                                                </div>
                                                @else
                                                <div class="col-md-12 mb-3 text-center">
                                                    <h6 class="mt-4">
                                                        Sign in to participate in the chat!
                                                    </h6>
                                                    <a href="{{ route('login') }}"
                                                        class="btn btn-primary mt-4">Login</a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>






                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>



</div>

@endsection

@section('footer')
<!-- Fluid Player -->
<script src="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.js" defer></script>
<script src="{{ asset('js/clipboard.js') }}"></script>
<script src="{{ asset('js/viewer.js') }}"></script>
<script>
var channelname = "{{ $stream->channelname }}";
var ownerID = "{{ $stream->user_id }}";
var streamid = "{{ $stream->id }}";
var APP_ENV = "{{ env("APP_ENV") }}";
var APP_DEBUG = "{{ env("APP_DEBUG") }}";
var AGORA_APP_ID = "{{ env("AGORA_APP_ID") }}";
var servertoken = "{{ $token }}";
var servertokenrtm = "{{ $tokenrtm }}";
var userrtm = "{{ $userrtm }}";
var usersignedin = "{{ $usersignedin }}";
var displayname = "{{ $displayname }}";
var profilepic = "{{ $profilepic }}";
var thumbnailurl = "{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}"
</script>
@endsection
