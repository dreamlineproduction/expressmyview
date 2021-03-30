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
<div class="container-fluid pb-0">
  <div class="video-block section-padding">
    <div class="row">
      <div class="col-md-8">
        <div class="single-video-left">
            <div class="single-video">
              @if(!empty($stream))
              <video id="recorded_video">
              </video>
              @endif
            </div>
        <div class="single-video-title box mb-2">

            <div class="row">

                <div class="col-md-6">

                    <h2><a href="#">{{ $stream->title }}</a></h2>
                    <p class="mb-0"><i class="fas fa-eye"></i> {{ number_format($stream->views) }}
                        views
                    </p>
                </div>

                <div class="col-md-6">

                    <div class="text-right">
                        @if(Auth::check() && $stream->user_id == Auth::user()->id)
                        <a class="btn btn-danger mr-2" role="button"
                            href="{{ route('live-stream.edit', $stream->id) }}">
                            Edit
                        </a>
                        @endif

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
                    data-podcast="{{ $stream->id }}"><i class="far fa-thumbs-up"></i> <span
                        id="likes_count">{{ formatSubscribersCount($stream->likes) }}</span>
                </button>
                @else
                <button class="btn btn btn-outline-danger" type="button" id="like_btn"
                    data-podcast="{{ $stream->id }}"><i class="far fa-thumbs-up"></i> <span
                        id="likes_count">{{ formatSubscribersCount($stream->likes) }}</span>
                </button>
                @endif
                @else
                <button class="btn btn btn-outline-danger" type="button"><i class="far fa-thumbs-up"></i>
                    {{ formatSubscribersCount($stream->likes) }}
                </button>
                @endif
                @else
                <a href="{{ route('login') }}" class="btn btn-danger" role="button">
                    <i class="far fa-thumbs-up"></i> {{ formatSubscribersCount($stream->likes) }}
                </a>
                @endif
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <script type="text/javascript"
                    src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ayanloveme2006"></script>

            </div>


            <img class="img-fluid"
                src="{{ $stream->channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $stream->channel->logo) : asset('img/user.png') }}"
                alt="">
            <p>
                <a href="{{ route('channel.show', $stream->channel->id) }}">
                    <strong>{{ $stream->channel->name }}</strong>
                </a>
                @if($stream->channel->verified)
                <span title="verified" data-placement="top" data-toggle="tooltip"
                    data-original-title="Verified">
                    <i class="fas fa-check-circle text-success"></i>
                </span>
                @endif
            </p>
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
    </div>
    </div>
</div>
@endsection

@section('footer')
<!-- Fluid Player -->
<script src="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.js" defer></script>
<!-- <script src="{{ asset('js/clipboard.js') }}"></script> -->
<script src="{{ asset('js/view.js') }}"></script>
<script>
var channelname = "{{ $stream->channelname }}";
var ownerID = "{{ $stream->user_id }}";
var streamid = "{{ $stream->id }}";
var thumbnailurl = "{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}"
var dd = "{{ $cloud_recordings }}";
var cloudRecordingDetails = JSON.parse(dd.replaceAll('&quot;','"'));
</script>
@endsection
