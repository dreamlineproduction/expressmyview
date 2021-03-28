@extends('layouts.app')

@section('title')
Video Streaming Website
@endsection

@section('content')
<div id="content-wrapper">
    <div class="container-fluid">
        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <h6>Watch History</h6>
                    </div>
                </div>
                @forelse($history as $historyItem)
                <div class="col-xl-3 col-sm-6 mb-3 history-single">
                    <div class="video-card history-video">
                        <div class="video-card-image">
                            <a class="video-close" href="#" data-history="{{ $historyItem->id }}"><i
                                    class="fas fa-times-circle"></i></a>
                            <a class="play-icon" href="{{ route('podcast.show', $historyItem->podcast->id) }}"><i
                                    class="fas fa-play-circle"></i></a>
                            <a href="{{ route('podcast.show', $historyItem->podcast->id) }}">

                                <img class="img-fluid"
                                    src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $historyItem->podcast->thumbnail) }}"
                                    alt="Video thumbnail"></a>
                            <div class="time">{{ $historyItem->podcast->runtime_formatted }}</div>
                        </div>
                        {{--<div class="progress">
                                    <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">1:40</div>
                                </div>--}}
                        <div class="video-card-body">
                            <div class="video-title">
                                <a
                                    href="{{ route('podcast.show', $historyItem->podcast->id) }}">{{ $historyItem->podcast->title }}</a>
                            </div>
                            <div class="video-page text-success">
                                {{ $historyItem->podcast->channel->name }} <a title="" data-placement="top"
                                    data-toggle="tooltip" href="#" data-original-title="Verified"><i
                                        class="fas fa-check-circle text-success"></i></a>
                            </div>
                            <div class="video-view">
                                {{ formatViewsCount($historyItem->podcast->views) }} views &nbsp;<i
                                    class="fas fa-calendar-alt"></i>
                                {{ $historyItem->podcast->created_at->diffForHumans() }}
                            </div>
                        </div>
                    </div>
                </div>
                @empty
                <div class="col-md-12 mb-3 mt-4 text-center">

                    <img class="img-fluid mb-4" src="{{asset('img/no-data.svg')}}" width="120"
                        alt="No Data Avalaible"></a>

                    <h3 class="text-muted"> Your history is empty.</h3>

                </div>

                @endforelse
            </div>
            {{ $history->links() }}
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('footer')
<script src="{{ asset('js/history.js') }}"></script>
@endsection