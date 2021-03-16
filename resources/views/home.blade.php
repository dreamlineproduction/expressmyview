@extends('layouts.app')

@section('title')
    Video Streaming Website
@endsection

@section('content')
    <div class="container-fluid pb-0">
        <div class="top-mobile-search">
            <div class="row">
                <div class="col-md-12">
                    <form class="mobile-search">
                        <div class="input-group">
                            <input type="text" placeholder="Search for..." class="form-control">
                            <div class="input-group-append">
                                <button type="button" class="btn btn-dark"><i class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="top-category section-padding mb-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                      
                        <h6>Popular Channels</h6>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="owl-carousel owl-carousel-category">
                        @foreach($channels as $channel)
                            <div class="item">
                                <div class="category-item">
                                    <a href="{{ route('channel.show', $channel->id) }}">
                                        <img class="img-fluid" src="{{ $channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $channel->logo) : asset('img/user.png') }}" alt="">
                                        <h6>{{ $channel->name }}</h6>
                                        <p>{{ number_format($channel->subscribers) }} subscribers</p>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="{{ route('podcast.index', ['type' => 'video', 'orderBy' => 'date']) }}">View More</a>
                        </div>
                        <h6>Latest Video Podcasts</h6>
                    </div>
                </div>

                @forelse($latestVideos as $video)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="{{ route('podcast.show', $video->id) }}"><i class="fas fa-play-circle"></i></a>
                                <a href="{{ route('podcast.show', $video->id) }}"><img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $video->thumbnail) }}" alt="{{ $video->title }}"></a>
                                <div class="time">{{ formatVideoRuntime($video->runtime) }}</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="{{ route('podcast.show', $video->id) }}">{{ $video->title }}</a>
                                </div>
                                <div class="video-page text-success">
                                     <a href="{{ route('channel.show', $video->channel->id) }}">{{ $video->channel->name }}</a>
                                </div>
                                <div class="video-view">
                                    {{ formatViewsCount($video->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i> {{ $video->created_at->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-md-12 mb-3 text-center">
                        <h6 class="mt-4"> No videos are currently available.</h6>
                    </div>
                @endforelse

            </div>
        </div>
        <hr class="mt-0">

        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="{{ route('podcast.index') }}">View More</a>
                        </div>
                        <h6>Streaming Now</h6>
                    </div>
                </div>

                <div class="col-12 mb-3">No podcasts are streaming now.</div>

            </div>
        </div>
        <hr class="mt-0">

        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="{{ route('podcast.index', ['type' => 'video', 'orderBy' => 'views']) }}">View More</a>
                        </div>
                        <h6>Popular Video Podcasts</h6>
                    </div>
                </div>

                @forelse($popularVideos as $video)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="{{ route('podcast.show', $video->id) }}"><i class="fas fa-play-circle"></i></a>
                                <a href="{{ route('podcast.show', $video->id) }}"><img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $video->thumbnail) }}" alt="{{ $video->title }}"></a>
                                <div class="time">{{ formatVideoRuntime($video->runtime) }}</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="{{ route('podcast.show', $video->id) }}">{{ $video->title }}</a>
                                </div>
                                <div class="video-page text-success">
                                    <a href="{{ route('channel.show', $video->channel->id) }}">{{ $video->channel->name }}</a>
                                </div>
                                <div class="video-view">
                                    {{ formatViewsCount($video->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i> {{ $video->created_at->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-md-12 mb-3 text-center">
                        <h6 class="mt-4"> No videos are currently available.</h6>
                    </div>
                @endforelse

            </div>
        </div>

        <hr class="mt-0">

        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="{{ route('podcast.index', ['type' => 'audio', 'orderBy' => 'date']) }}">View More</a>
                        </div>
                        <h6>Latest Audio Podcasts</h6>
                    </div>
                </div>

                @forelse($latestAudios as $audio)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="{{ route('podcast.show', $audio->id) }}"><i class="fas fa-play-circle"></i></a>
                                <a href="{{ route('podcast.show', $audio->id) }}"><img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $audio->thumbnail) }}" alt="{{ $audio->title }}"></a>
                                <div class="time">{{ formatVideoRuntime($audio->runtime) }}</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="{{ route('podcast.show', $audio->id) }}">{{ $audio->title }}</a>
                                </div>
                                <div class="video-page text-success">
                                    <a href="{{ route('channel.show', $audio->channel->id) }}">{{ $audio->channel->name }}</a>
                                </div>
                                <div class="video-view">
                                    {{ formatViewsCount($audio->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i> {{ $audio->created_at->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-md-12 mb-3 text-center">
                        <h6 class="mt-4"> No audios are currently available.</h6>
                    </div>
                @endforelse

            </div>
        </div>

        <hr class="mt-0">

        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <div class="btn-group float-right right-action">
                            <a href="{{ route('podcast.index', ['type' => 'audio', 'orderBy' => 'views']) }}">View More</a>
                        </div>
                        <h6>Popular Audio Podcasts</h6>
                    </div>
                </div>

                @forelse($popularAudios as $audio)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="{{ route('podcast.show', $audio->id) }}"><i class="fas fa-play-circle"></i></a>
                                <a href="{{ route('podcast.show', $video->id) }}"><img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $audio->thumbnail) }}" alt="{{ $audio->title }}"></a>
                                <div class="time">{{ formatVideoRuntime($audio->runtime) }}</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="{{ route('podcast.show', $audio->id) }}">{{ $audio->title }}</a>
                                </div>
                                <div class="video-page text-success">
                                    <a href="{{ route('channel.show', $audio->channel->id) }}">{{ $audio->channel->name }}</a>
                                </div>
                                <div class="video-view">
                                    {{ formatViewsCount($audio->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i> {{ $audio->created_at->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-md-12 mb-3 text-center">
                        <h6 class="mt-4"> No audios are currently available.</h6>
                    </div>
                @endforelse

            </div>
        </div>
{{--        <hr class="mt-0">--}}
{{--        <div class="video-block section-padding">--}}
{{--            <div class="row">--}}
{{--                <div class="col-md-12">--}}
{{--                    <div class="main-title">--}}
{{--                        <div class="btn-group float-right right-action">--}}
{{--                            <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--}}
{{--                                Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>--}}
{{--                            </a>--}}
{{--                            <div class="dropdown-menu dropdown-menu-right">--}}
{{--                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>--}}
{{--                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>--}}
{{--                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-times-circle"></i> &nbsp; Close</a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <h6>Popular Channels</h6>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                @foreach($channels as $channel)--}}
{{--                    <div class="col-xl-3 col-sm-6 mb-3">--}}
{{--                        <div class="channels-card">--}}
{{--                            <div class="channels-card-image">--}}
{{--                                <a href="#"><img class="img-fluid" src="{{ url('/storage/users/logo/' . $channel->logo) }}" alt=""></a>--}}
{{--                                <div class="channels-card-image-btn"><button type="button" class="btn btn-outline-danger btn-sm">Subscribe <strong>1.4M</strong></button></div>--}}
{{--                            </div>--}}
{{--                            <div class="channels-card-body">--}}
{{--                                <div class="channels-title">--}}
{{--                                    <a href="#">{{ $channel->name }}</a>--}}
{{--                                </div>--}}
{{--                                <div class="channels-view">--}}
{{--                                    382,323 subscribers--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                @endforeach--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
@endsection
