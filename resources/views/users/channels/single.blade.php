@extends('layouts.app')

@section('title')
    {{ $channel->name }}
@endsection

@section('content')
    <div class="single-channel-page" id="content-wrapper">
        @include('users.channels.partials.channel_header')
        <div class="container-fluid">
            <div class="video-block section-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            @if($videos->count() > 0)
                                <div class="btn-group float-right right-action">
                                    <a href="#" class="right-action-link text-gray" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item"
                                           href="{{ route('channel.show', ['channel' => $channel->id, 'orderBy' => 'rating']) }}"><i
                                                    class="fas fa-fw fa-star"></i> &nbsp; Top Rated</a>
                                        <a class="dropdown-item"
                                           href="{{ route('channel.show', ['channel' => $channel->id, 'orderBy' => 'popularity']) }}"><i
                                                    class="fas fa-fw fa-signal"></i> &nbsp; Viewed</a>
                                        <a class="dropdown-item" href="{{ route('channel.show', ['channel' => $channel->id, 'orderBy' => 'date']) }}"><i
                                                    class="fas fa-fw fa-times-circle"></i> &nbsp;
                                            Upload Date</a>
                                    </div>
                                </div>
                            @endif
                            <h6>Podcasts</h6>
                        </div>
                    </div>
                    @forelse($videos as $video)
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a class="play-icon" href="{{ route('podcast.show', $video->id) }}"><i
                                                class="fas fa-play-circle"></i></a>
                                    <a href="{{ route('podcast.show', $video->id) }}"><img class="img-fluid"
                                                                                           src="{{ url('/storage/podcast/thumbnail/' . $video->thumbnail) }}"
                                                                                           alt="{{ $video->title }}"></a>
                                    <div class="time">{{ formatVideoRuntime($video->runtime) }}</div>
                                </div>
                                <div class="video-card-body">
                                    <div class="row">
                                        <div class="col-md-10">
                                            <div class="video-title">
                                                <a href="{{ route('podcast.show', $video->id) }}">{{ $video->title }}</a>
                                                <span class="badge badge-secondary">{{ $video->file_type }}</span>
                                            </div>
                                        </div>

                                        @if(Auth::check() && Auth()->user()->id == $video->user_id)
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
                                                               href="{{ route('podcast.edit', $video->id) }}"><i
                                                                        class="far fa-edit"></i> Edit Video</a>
                                                            <a class="dropdown-item"
                                                               href="{{ route('podcast.delete', $video->id) }}"><i
                                                                        class="far fa-trash-alt"></i> Delete Video</a>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    </div>


                                    <div class="video-page text-danger">
                                        {{ $video->channel->name }} <a title="" data-placement="top"
                                                                       data-toggle="tooltip" href="#"
                                                                       data-original-title="Verified"><i
                                                    class="fas fa-check-circle text-danger"></i></a>
                                    </div>
                                    <div class="video-view mt-3 text-large">
                                        {{ formatViewsCount($video->views, 1) }} views &nbsp;<i
                                                class="fas fa-calendar-alt"></i> {{ $video->created_at->diffForHumans() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <div class="col-md-12 mb-3 text-center">
                            <img src="{{asset('img/sorry_no_podcast.svg')}}" width=150>
                            <h6 class="mt-4"> Sorry! You do not have any podcasts yet.</h6>
                            <a href="{{ route('podcast.create') }}" class="btn btn-primary mt-4">Create</a>
                        </div>
                    @endforelse
                </div>
                {{ $videos->links() }}
            </div>
        </div>
        <!-- /.container-fluid -->
        <!-- Sticky Footer -->
    </div>

    <!-- Gift Modal -->
    <div class="modal fade" id="gift-modal" tabindex="-1" role="dialog" aria-labelledby="gift-modal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="gift-modal">Send Gifts to {{ $channel->name }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="gift-section">
                        <div class="text-center">
                            <h1><i class="fas fa-heart-broken text-primary"></i></h1>
                            <h4>Sorry!</h4>
                            <h6>This feature is not available right now. Please stay tuned for updates</h6>


                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>


    <!-- Donation Modal -->
    <div class="modal fade" id="donation-modal" tabindex="-1" role="dialog" aria-labelledby="donation-modal"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="donation-modal">Send Donations to {{ $channel->name }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="gift-section">
                        <div class="text-center">
                            <h1><i class="fas fa-heart-broken text-primary"></i></h1>
                            <h4>Sorry!</h4>
                            <h6>This feature is not available right now. Please stay tuned for updates</h6>


                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>





    <!-- /.content-wrapper -->
@endsection

@section('footer')
    <script src="{{ asset('js/channels.js') }}" defer></script>
@endsection