@extends('layouts.app')

@section('title')
    Live streams
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
                       href="{{ route('my.livestreams', ['type' => 'video', 'orderBy' => 'rating']) }}"><i
                                class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                    <a class="dropdown-item"
                       href="{{ route('my.livestreams', ['type' => 'video', 'orderBy' => 'popularity']) }}"><i
                                class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                    <a class="dropdown-item" href="{{ route('my.livestreams', ['type' => 'video', 'orderBy' => 'date']) }}"><i
                                class="fas fa-fw fa-times-circle"></i> &nbsp;
                        Streamed Date</a>
                </div>
            </div>
            <h6>All Live Streams</h6>
        </div>
    </div>
    @foreach ($streams as $stream)

    <div class="col-xl-3 col-sm-6 mb-3">
                              <div class="video-card">
                                  <div class="video-card-image">
                                      <a class="play-icon" href="{{ route('live-stream.show', $stream->id) }}"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                                      <a href="{{ route('live-stream.show', $stream->id) }}">
                                          <img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}" alt="video">
                                      </a>
                                      <div class="time"><i class="fas fa-video"></i></div>
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
                                                            id="dropdownMenuButton" data-toggle="dropdown"
                                                            aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-h"></i>
                                                    </button>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item"
                                                           href="{{ route('live-stream.edit', $stream->id) }}"><i
                                                                    class="far fa-edit"></i> Edit LiveStream</a>
                                                        <a class="dropdown-item delete-stream"
                                                           href="{{ route('live-stream.delete', $stream->id) }}"><i
                                                                    class="far fa-trash-alt"></i> Delete LiveStream</a>

                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                                                              </div>
                                      <div class="video-page text-success">
                                          <a href="{{ route('channel.show', $stream->channel->id) }}">{{ $stream->channel->name }}</a>
                                                                              </div>
                                      <div class="video-view float-left">
                                          <i class="fas fa-calendar-alt" aria-hidden="true"></i> {{ $stream->created_at->diffForHumans() }}
                                      </div>

                                      <div class="clearfix"></div>
                                  </div>
                              </div>
                          </div>




    @endforeach
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

<script src="{{ asset('js/live-streams.js') }}"></script>
@endsection
