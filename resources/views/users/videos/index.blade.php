@extends('layouts.app')

@section('title')
All Video/Audio Podcasts
@endsection

@section('content')
<div class="container-fluid pb-0">
    <hr>
    @if(empty($type) || $type == 'video')
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <div class="btn-group float-right right-action">

                        <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'video', 'orderBy' => 'rating']) }}"><i
                                    class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'video', 'orderBy' => 'popularity']) }}"><i
                                    class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'video', 'orderBy' => 'date']) }}"><i
                                    class="fas fa-fw fa-times-circle"></i> &nbsp;
                                Upload Date</a>
                        </div>
                    </div>
                    <h6>Videos</h6>
                </div>
            </div>
            @forelse($videos as $video)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="video-card">
                    <div class="video-card-image">
                        <a class="play-icon" href="{{ route('podcast.show', $video->id) }}"><i
                                class="fas fa-play-circle"></i></a>
                        <a href="{{ route('podcast.show', $video->id) }}">
                            <img class="img-fluid"
                                src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $video->thumbnail) }}"
                                alt="{{ $video->title }}">
                        </a>
                        <div class="time">{{ formatVideoRuntime($video->runtime) }}</div>
                    </div>
                    <div class="video-card-body">
                        <div class="row">
                            <div class="col-md-10">

                                <div class="video-title text-left">
                                    <a href="{{ route('podcast.show', $video->id) }}">{{ $video->title }}</a>
                                </div>
                            </div>

                            @if(Auth::check() && Auth()->user()->id == $video->user_id)
                            <div class="col-md-2">

                                <div class=" text-right video-edit">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-round-edit" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="{{ route('podcast.edit', $video->id) }}"><i
                                                    class="far fa-edit"></i> Edit Video</a>
                                            <a class="dropdown-item delete-video"
                                                href="{{ route('podcast.delete', $video->id) }}"><i
                                                    class="far fa-trash-alt"></i> Delete Video</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                        </div>
                        <div class="video-page text-success">
                            <a href="{{ route('channel.show', $video->channel->id) }}">{{ $video->channel->name }}</a>
                            @if($video->channel->verified)
                            <a title="#" data-placement="top" data-toggle="tooltip" href="#"
                                data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
                            @endif
                        </div>
                        <div class="video-view float-left">
                            {{ formatViewsCount($video->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                            {{ $video->created_at->diffForHumans() }}
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            @empty

            <div class="col-md-12 mb-3 mt-4 text-center">

                <img class="img-fluid mb-4" src="{{asset('img/no-data.svg')}}" width="120" alt="No Data Avalaible"></a>

                <h3 class="text-muted"> You do not have any videos.</h3>

            </div>

            @endforelse
            {{ $videos->links() }}
        </div>
    </div>
    <hr class="mt-0">
    @endif

    @if(empty($type) || $type == 'audio')
    <div class="video-block section-padding">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <div class="btn-group float-right right-action">

                        <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'audio', 'orderBy' => 'rating']) }}"><i
                                    class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'audio', 'orderBy' => 'popularity']) }}"><i
                                    class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                            <a class="dropdown-item"
                                href="{{ route('podcast.index', ['type' => 'audio', 'orderBy' => 'date']) }}"><i
                                    class="fas fa-fw fa-times-circle"></i> &nbsp;
                                Upload Date</a>
                        </div>
                    </div>
                    <h6>Audios</h6>
                </div>
            </div>
            @forelse($audios as $audio)
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="video-card">
                    <div class="video-card-image">
                        <a class="play-icon" href="{{ route('podcast.show', $audio->id) }}"><i
                                class="fas fa-play-circle"></i></a>
                        <a href="{{ route('podcast.show', $audio->id) }}">
                            <img class="img-fluid"
                                src="{{ Storage::disk('s3')->url('/storage/podcast/thumbnail/' . $audio->thumbnail) }}"
                                alt="{{ $audio->title }}">
                        </a>
                        <div class="time">{{ formatVideoRuntime($audio->runtime) }}</div>
                    </div>
                    <div class="video-card-body">
                        <div class="row">
                            <div class="col-md-10">

                                <div class="video-title text-left">
                                    <a href="{{ route('podcast.show', $audio->id) }}">{{ $audio->title }}</a>
                                </div>
                            </div>

                            @if(Auth::check() && Auth()->user()->id == $audio->user_id)
                            <div class="col-md-2">

                                <div class=" text-right video-edit">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-round-edit" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="{{ route('podcast.edit', $audio->id) }}"><i
                                                    class="far fa-edit"></i> Edit Video</a>
                                            <a class="dropdown-item delete-video"
                                                href="{{ route('podcast.delete', $audio->id) }}"><i
                                                    class="far fa-trash-alt"></i> Delete Video</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                        </div>
                        <div class="video-page text-success">
                            <a href="{{ route('channel.show', $audio->channel->id) }}">{{ $audio->channel->name }}</a>
                            @if($audio->channel->verified)
                            <a title="#" data-placement="top" data-toggle="tooltip" href="#"
                                data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>
                            @endif
                        </div>
                        <div class="video-view float-left">
                            {{ formatViewsCount($audio->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                            {{ $audio->created_at->diffForHumans() }}
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            @empty
            <div class="col-md-12 mb-3 mt-4 text-center">

                <img class="img-fluid mb-4" src="{{asset('img/no-data.svg')}}" width="120" alt="No Data Avalaible"></a>

                <h3 class="text-muted"> You do not have any audio.</h3>

            </div>

            @endforelse
            {{ $audios->links() }}
        </div>
    </div>
    <hr class="mt-0">
    @endif
</div>
@endsection

@section('footer')
<script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js">
</script>


<script src="{{ asset('js/podcast.js') }}"></script>
@endsection