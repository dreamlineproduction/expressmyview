@extends('layouts.app')

@section('title')
My Account
@endsection

@section('header')
<!-- Select2 -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<!-- Bootstrap Tags Input -->
<link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection

@section('content')
<div class="container-fluid pb-0">
    <div class="row">
        <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100 border-none">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-users"></i>
                    </div>
                    <div class="mr-5"><b>{{ $channels->count() }}</b> Channels</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="{{ route('my.channels') }}">
                    <span class="float-left">View Details</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
        <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100 border-none">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-video"></i>
                    </div>
                    <div class="mr-5"><b>{{ $videos->count() }}</b> Videos</div>
                </div>
                <a class="card-footer text-white clearfix small z-1"
                    href="{{ route('my.podcasts', ['type' => 'video']) }}">
                    <span class="float-left">View Details</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>
        <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100 border-none">
                <div class="card-body">
                    <div class="card-body-icon">
                        <i class="fas fa-fw fa-list-alt"></i>
                    </div>
                    <div class="mr-5"><b>{{ $audios->count() }}</b> Audios</div>
                </div>
                <a class="card-footer text-white clearfix small z-1"
                    href="{{ route('my.podcasts', ['type' => 'audio']) }}">
                    <span class="float-left">View Details</span>
                    <span class="float-right">
                        <i class="fas fa-angle-right"></i>
                    </span>
                </a>
            </div>
        </div>

    </div>
    <hr>

    @if(!empty($streams))
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    @if($streams->count() > 0)
                    <div class="btn-group float-right right-action">

                        <a href="{{ route('my.livestreams') }}" class="btn btn-primary btn-sm mb-4">View All</a>
                    </div>
                    @endif
                    <h6>My Live Streams</h6>
                </div>
            </div>
            @forelse($streams as $stream)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="video-card">
                    <div class="video-card-image">
                        <a class="play-icon" href="{{ route('live-stream.show', $stream->id) }}"><i
                                class="fas fa-play-circle"></i></a>
                        <a href="{{ route('live-stream.show', $stream->id) }}"><img class="img-fluid"
                                src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}"
                                alt="{{ $stream->title }}"></a>
                        <div class="time">{{ time_elapsed_string($stream->created_at) }}</div>
                    </div>
                    <div class="video-card-body">

                        <div class="row">
                            <div class="col-md-10">

                                <div class="video-title text-left">
                                    <a href="{{ route('live-stream.show', $stream->id) }}">{{ $stream->title }}</a>
                                </div>
                            </div>

                            <div class="col-md-2">

                                <div class=" text-right video-edit">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-round-edit" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item"
                                                href="{{ route('live-stream.edit', $stream->id) }}"><i
                                                    class="far fa-edit"></i> Edit LiveStream</a>
                                            <a class="dropdown-item delete-video"
                                                href="{{ route('live-stream.delete', $stream->id) }}"><i
                                                    class="far fa-trash-alt"></i> Delete Video</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="video-page text-success">
                            <a href="{{ route('channel.show', $stream->channel->id) }}">{{ $stream->channel->name }}</a>
                            @if($stream->channel->verified)
                            <a title="#" data-placement="top" data-toggle="tooltip" href="#"
                                data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
                            @endif
                        </div>
                        <div class="video-view">
                            {{ formatViewsCount($stream->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                            {{ $stream->created_at->diffForHumans() }}
                        </div>


                    </div>
                </div>
            </div>
            @empty
            <div class="col-md-12 mb-3 text-center">
                <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                <h6 class="mt-4"> Sorry! You do not have any live streams yet.</h6>
                <a href="{{ route('live-stream.create') }}" class="btn btn-primary mt-4">Create</a>
            </div>
            @endforelse
        </div>
    </div>
    <hr class="mt-0">
    @endif

    @if(!empty($videos))
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    @if($videos->count() > 0)
                    <div class="btn-group float-right right-action">

                        <a href="{{ route('my.podcasts', ['type' => 'video']) }}"
                            class="btn btn-primary btn-sm mb-4">View All</a>
                    </div>
                    @endif
                    <h6>My Videos</h6>
                </div>
            </div>
            @forelse($videos as $podcast)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="video-card">
                    <div class="video-card-image">
                        <a class="play-icon" href="{{ route('podcast.show', $podcast->id) }}"><i
                                class="fas fa-play-circle"></i></a>
                        <a href="{{ route('podcast.show', $podcast->id) }}"><img class="img-fluid"
                                src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}"
                                alt="{{ $podcast->title }}"></a>


                        <div class="time">{{ formatVideoRuntime($podcast->runtime) }}</div>
                    </div>
                    <div class="video-card-body">

                        <div class="row">
                            <div class="col-md-10">

                                <div class="video-title text-left">
                                    <a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->title }}</a>
                                </div>
                            </div>

                            <div class="col-md-2">

                                <div class=" text-right video-edit">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-round-edit" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="{{ route('podcast.edit', $podcast->id) }}"><i
                                                    class="far fa-edit"></i> Edit Video</a>
                                            <a class="dropdown-item delete-video"
                                                href="{{ route('podcast.delete', $podcast->id) }}"><i
                                                    class="far fa-trash-alt"></i> Delete Video</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="video-page text-success">
                            <a
                                href="{{ route('channel.show', $podcast->channel->id) }}">{{ $podcast->channel->name }}</a>
                            @if($podcast->channel->verified)
                            <a title="#" data-placement="top" data-toggle="tooltip" href="#"
                                data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
                            @endif
                        </div>
                        <div class="video-view">
                            {{ formatViewsCount($podcast->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                            {{ $podcast->created_at->diffForHumans() }}
                        </div>

                    </div>
                </div>
            </div>
            @empty
            <div class="col-md-12 mb-3 text-center">
                <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                <h6 class="mt-4"> Sorry! You do not have any video contents yet.</h6>
                <a href="{{ route('podcast.create') }}" class="btn btn-primary mt-4">Create</a>
            </div>
            @endforelse
        </div>
    </div>
    <hr class="mt-0">
    @endif

    @if(!empty($audios))
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    @if($videos->count() > 0)
                    <div class="btn-group float-right right-action">

                        <a href="{{ route('my.podcasts', ['type' => 'audio']) }}"
                            class="btn btn-primary btn-sm mb-4">View All</a>
                    </div>
                    @endif
                    <h6>My Audios</h6>
                </div>
            </div>
            @forelse($audios as $podcast)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="video-card">
                    <div class="video-card-image">
                        <a class="play-icon" href="{{ route('podcast.show', $podcast->id) }}"><i
                                class="fas fa-play-circle"></i></a>
                        <a href="{{ route('podcast.show', $podcast->id) }}"><img class="img-fluid"
                                src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}"
                                alt="{{ $podcast->title }}"></a>
                        <div class="time">{{ formatVideoRuntime($podcast->runtime) }}</div>
                    </div>
                    <div class="video-card-body">

                        <div class="row">
                            <div class="col-md-10">

                                <div class="video-title text-left">
                                    <a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->title }}</a>
                                </div>
                            </div>

                            <div class="col-md-2">

                                <div class=" text-right video-edit">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-round-edit" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="{{ route('podcast.edit', $podcast->id) }}"><i
                                                    class="far fa-edit"></i> Edit Video</a>
                                            <a class="dropdown-item delete-video"
                                                href="{{ route('podcast.delete', $video->id) }}"><i
                                                    class="far fa-trash-alt"></i> Delete Video</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="video-page text-success">
                            <a
                                href="{{ route('channel.show', $podcast->channel->id) }}">{{ $podcast->channel->name }}</a>
                            @if($podcast->channel->verified)
                            <a title="#" data-placement="top" data-toggle="tooltip" href="#"
                                data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
                            @endif
                        </div>
                        <div class="video-view">
                            {{ formatViewsCount($podcast->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                            {{ $podcast->created_at->diffForHumans() }}
                        </div>

                    </div>
                </div>
            </div>
            @empty
            <div class="col-md-12 mb-3 text-center">
                <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                <h6 class="mt-4"> Sorry! You do not have any audio contents yet.</h6>
                <a href="{{ route('podcast.create') }}" class="btn btn-primary mt-4">Create</a>
            </div>
            @endforelse
        </div>
    </div>
    <hr class="mt-0">
    @endif

    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <div class="text-right">
                        <a href="{{ route('channel.create') }}" class="btn btn-primary btn-sm">Create New
                            Channel</a>
                    </div>
                    <h6>My Channels</h6>
                </div>
            </div>
            @forelse($channels as $channel)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="channels-card">
                    <div class="channels-card-image">
                        <a href="{{ route('channel.show', $channel->id) }}"><img class="img-fluid"
                                src="{{ asset('img/s1.png') }}" alt=""></a>
                        <div class="channels-card-image-btn"><a href="{{ route('channel.show', $channel->id) }}"
                                type="button" class="btn btn-danger btn-sm">Go
                                to channel </a></div>
                    </div>
                    <div class="channels-card-body">
                        <div class="channels-title">
                            <a href="#">{{ $channel->name }}</a>
                        </div>
                        <div class="channels-view">
                            {{ formatSubscribersCount($channel->subscribers) }} subscribers
                        </div>
                    </div>
                </div>
            </div>
            @empty
            <div class="col-md-12 mb-3 text-center">
                <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                <h6 class="mt-4"> Sorry! You do not have any channels yet.</h6>
                <a href="{{ route('channel.create') }}" class="btn btn-primary mt-4">Create One</a>
            </div>
            @endforelse
        </div>
    </div>
</div>
@endsection

@section('footer')
<!-- Sweetalert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" defer></script>
<!-- jQuery Form -->
<script src="https://malsup.github.io/jquery.form.js" defer></script>
<!-- Select2 -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js" defer></script>
<!-- jQuery Validation -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>
<!-- Bootstrap Tags Input -->
<script src="{{ asset('js/bootstrap-tagsinput.js') }}" defer></script>

<script src="{{ asset('js/podcast.js') }}"></script>
<script src="{{ asset('js/live-streams.js') }}"></script>
@endsection
