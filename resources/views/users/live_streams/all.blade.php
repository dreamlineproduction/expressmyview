@extends('layouts.app')

@section('title')
    All Live Streams
@endsection

@section('content')
<div class="container-fluid pb-0">
        <hr>
        @if(!empty($streams))
        <div class="video-block section-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <div class="btn-group float-right right-action">

                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                  <a class="dropdown-item"
                                     href="{{ route('live-streams.all', ['type' => 'video', 'orderBy' => 'rating']) }}"><i
                                              class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                  <a class="dropdown-item"
                                     href="{{ route('live-streams.all', ['type' => 'video', 'orderBy' => 'popularity']) }}"><i
                                              class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                  <a class="dropdown-item" href="{{ route('live-streams.all', ['type' => 'video', 'orderBy' => 'date']) }}"><i
                                              class="fas fa-fw fa-times-circle"></i> &nbsp;
                                      Stremed Date</a>
                                </div>
                            </div>
                            <h6> All Live Streams</h6>
                        </div>
                    </div>
                    @forelse ($streams as $stream)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                              <a class="play-icon" href="{{ route('live-streams.watch', $stream->id) }}"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                              <a href="{{ route('live-streams.watch', $stream->id) }}">
                                  <img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}" alt="video">
                              </a>
                              <div class="time"><i class="fas fa-video"></i></div>
                            </div>
                            <div class="video-card-body">
                                <div class="row">
                                    <div class="col-md-10">

                                      <div class="video-title text-left">
                                          <a href="{{ route('live-streams.watch', $stream->id) }}">{{ $stream->title }}</a>
                                      </div>
                                  </div>

                                                                              <div class="col-md-2">


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
                    @empty
                    <div class="col-md-12 mb-3 text-center">
                        <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                        <h6 class="mt-4"> Sorry! There are not live streams currently.</h6>
                        <a href="{{ route('live-stream.create') }}" class="btn btn-primary mt-4">Create</a>
                        <h6 class="mt-4"> OR </h6>
                        <a href="{{ route('my.livestreams') }}" class="btn btn-primary mt-4">Relaunch</a>
                    </div>
                    @endforelse
                </div>
            </div>
            <hr class="mt-0">
        @endif
        <hr>
        @if(!empty($recordedStreams))
        <div class="video-block section-padding">
            <div class="row">
              <div class="col-md-12">
                  <div class="main-title">
                      <h6> Past recorded Streams</h6>
                  </div>
              </div>
                @forelse ($recordedStreams as $rstream)
                <div class="col-xl-3 col-sm-6 mb-3">
                    <div class="video-card">
                        <div class="video-card-image">
                          <a class="play-icon" href="{{ route('live-streams.view', $rstream->id) }}"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                          <a href="{{ route('live-streams.view', $rstream->id) }}">
                              <img class="img-fluid" src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $rstream->thumbnail) }}" alt="video">
                          </a>
                          <div class="time"><i class="fas fa-video"></i></div>
                        </div>
                        <div class="video-card-body">
                            <div class="row">
                                <div class="col-md-10">

                                  <div class="video-title text-left">
                                      <a href="{{ route('live-streams.view', $rstream->id) }}">{{ $rstream->title }}</a>
                                  </div>
                              </div>

                                                                          <div class="col-md-2">


                                  </div>
                                                                  </div>
                          <div class="video-page text-success">
                              <a href="{{ route('channel.show', $rstream->channel->id) }}">{{ $rstream->channel->name }}</a>
                                                                  </div>
                          <div class="video-view float-left">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i> {{ $rstream->created_at->diffForHumans() }}
                          </div>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                @empty
                <div class="col-md-12 mb-3 text-center">
                    <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                    <h6 class="mt-4"> Sorry! There are not recorded streams currently.</h6>
                    <a href="{{ route('live-stream.create') }}" class="btn btn-primary mt-4">Create</a>
                </div>
                @endforelse
            </div>
        </div>
        <hr class="mt-0">
        @endif



</div>
@endsection
