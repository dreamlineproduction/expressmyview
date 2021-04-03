@extends('layouts.app')

@section('title')
    Recorded streams
@endsection

@section('header')
<!-- Select2 -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<!-- Bootstrap Tags Input -->
<link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection

@section('content')
<div class="container-fluid pb-0">
  <hr>

  @if(!empty($recordedStreams))
  <div class="video-block section-padding">
    <div class="row">
    <div class="col-md-12">
        <div class="main-title">
            <div class="btn-group float-right right-action">

                <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                   aria-haspopup="true"
                   aria-expanded="false">
                    Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item"
                       href="{{ route('my.recordedstreams', ['type' => 'video', 'orderBy' => 'rating']) }}"><i
                                class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                    <a class="dropdown-item"
                       href="{{ route('my.recordedstreams', ['type' => 'video', 'orderBy' => 'popularity']) }}"><i
                                class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                    <a class="dropdown-item" href="{{ route('my.recordedstreams', ['type' => 'video', 'orderBy' => 'date']) }}"><i
                                class="fas fa-fw fa-times-circle"></i> &nbsp;
                        Streamed Date</a>
                </div>
            </div>
            <h6>All Recorded Streams</h6>
            <h6>Click on poster to publish</h6>
        </div>
    </div>
    @forelse($recordedStreams as $rstream)

    <div class="col-xl-3 col-sm-6 mb-3">
        <div class="video-card">
            <div class="video-card-image">
                <a class="play-icon publish-stream" href="{{ route('live-stream.publish', $rstream->id) }}">
                  <i class="fas fa-cloud-upload-alt"></i>
                </a>
                <img class="img-fluid"
                        src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $rstream->thumbnail) }}"
                        alt="{{ $rstream->title }}">
                <div class="time">{{ time_elapsed_string($rstream->created_at) }}</div>
            </div>
            <div class="video-card-body">

                <div class="row">
                    <div class="col-md-10">

                        <div class="video-title text-left">
                            <p>{{ $rstream->title }}</p>
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
                                        href="{{ route('live-stream.edit', $rstream->id) }}"><i
                                            class="far fa-edit"></i> Edit LiveStream</a>
                                    <a class="dropdown-item delete-stream"
                                        href="{{ route('live-stream.delete', $rstream->id) }}"><i
                                            class="far fa-trash-alt"></i> Delete Video</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="video-view">
                    {{ formatViewsCount($rstream->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                    {{ $rstream->created_at->diffForHumans() }}
                </div>


            </div>
        </div>
    </div>
  @empty
  <div class="col-md-12 mb-3 text-center">
      <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
      <h6 class="mt-4"> Sorry! You do not have any Recorded streams yet.</h6>
      <a href="{{ route('live-stream.create') }}" class="btn btn-primary mt-4">Create</a>
  </div>
    @endforelse
    </div>
  </div>
  @endif

  @if(!empty($publishedStreams))
  <div class="video-block section-padding">
    <div class="row">
    <div class="col-md-12">
        <div class="main-title">
            <h6>All published Streams</h6>
            <h6>Click on poster to view</h6>
        </div>
    </div>
    @forelse($publishedStreams as $rstream)

    <div class="col-xl-3 col-sm-6 mb-3">
        <div class="video-card">
            <div class="video-card-image">
              <a class="play-icon" href="{{ route('live-streams.view', $rstream->id) }}"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
              <a href="{{ route('live-streams.view', $rstream->id) }}">
                  <img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $rstream->thumbnail) }}" alt="video">
              </a>
                <div class="time">{{ time_elapsed_string($rstream->created_at) }}</div>
            </div>
            <div class="video-card-body">

                <div class="row">
                    <div class="col-md-10">

                        <div class="video-title text-left">
                            <p>{{ $rstream->title }}</p>
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
                                        href="{{ route('live-stream.edit', $rstream->id) }}"><i
                                            class="far fa-edit"></i> Edit LiveStream</a>
                                    <a class="dropdown-item delete-stream"
                                        href="{{ route('live-stream.delete', $rstream->id) }}"><i
                                            class="far fa-trash-alt"></i> Delete Video</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="video-view">
                    {{ formatViewsCount($rstream->views, 1) }} views &nbsp;<i class="fas fa-calendar-alt"></i>
                    {{ $rstream->created_at->diffForHumans() }}
                </div>


            </div>
        </div>
    </div>
  @empty
  <div class="col-md-12 mb-3 text-center">
      <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
      <h6 class="mt-4"> Sorry! You do not have any published streams yet.</h6>
      <a href="{{ route('live-stream.create') }}" class="btn btn-primary mt-4">Create</a>
  </div>
    @endforelse
    </div>
  </div>
  @endif

  <hr>
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

<script src="{{ asset('js/live-streams.js') }}"></script>
@endsection
