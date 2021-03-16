@extends('layouts.app')

@section('title')
    {{ !empty($page_title) ? $page_title : 'Explore All Channels' }}
@endsection

@section('content')
    <div class="container-fluid pb-0">
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
                                   href="{{ route('channel.index', ['orderBy' => 'subscribers']) }}"><i
                                            class="fas fa-fw fa-star"></i> &nbsp; Most Popular</a>
                                <a class="dropdown-item" href="{{ route('channel.index', ['orderBy' => 'date']) }}"><i
                                            class="fas fa-fw fa-signal"></i> &nbsp; Newest</a>
                            </div>
                        </div>
                        <h6>{{ !empty($heading) ? $heading : 'Channels' }}</h6>
                    </div>
                </div>
                @forelse($channels as $channel)
                    <div class="col-xl-3 col-sm-6 mb-3 single-channel">
                        <div class="single-channel-image">
                            <img class="img-fluid" alt=""
                                 src="{{ $channel->banner ? Storage::disk('s3')->url('public/users/banner/' . $channel->banner) : asset('img/banner.jpg') }}">
                        </div>
                        <div class="channels-card">

                            <div class="channels-card-image">
                                <a href="{{ route('channel.show', $channel->id) }}"><img class="img-fluid"
                                                                                         src="{{ $channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $channel->logo) : asset('img/user.png') }}"
                                                                                         alt="Channel Logo"></a>
                                <div class="channels-card-image-btn">
                                    @if(Auth::check())
                                        @if($channel->user_id != Auth::user()->id)
                                            @if(isSubscribed($channel->id, Auth::user()->id))
                                                <button type="button"
                                                        class="btn btn-outline-danger btn-sm subscribe_btn"
                                                        data-channel="{{ $channel->id }}">Unsubscribe
                                                </button>
                                            @else
                                                <button type="button"
                                                        class="btn btn-outline-danger btn-sm subscribe_btn"
                                                        data-channel="{{ $channel->id }}">Subscribe
                                                </button>
                                            @endif
                                        @endif
                                    @else
                                        <a href="{{ route('login') }}" type="button"
                                           class="btn btn-outline-danger btn-sm subscribe_btn">Subscribe</a>
                                    @endif
                                </div>
                            </div>
                            <div class="channels-card-body">

                                <div class="row">
                                    <div class="col-md-10 text-left">

                                        <div class="channels-title">
                                            <a href="{{ route('channel.show', $channel->id) }}">{{ $channel->name }}</a>
                                        </div>
                                        <div class="channels-view">
                                            <span class="subscribers-count">{{ $channel->subscribers }}</span>
                                            subscribers
                                        </div>


                                    </div>

                                    @if(Auth::check() && Auth::user()->id == $channel->user_id)
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
                                                           href="{{ route('channel.edit', $channel->id) }}"><i
                                                                    class="far fa-edit"></i> Edit Channel</a>
                                                        <a class="dropdown-item delete"
                                                           data-channel="{{ $channel->id }}" href="#"><i
                                                                    class="far fa-trash-alt"></i> Delete Channel</a>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif


                                </div>


                            </div>
                        </div>
                    </div>
                @empty
                    <div>No channels</div>
                @endforelse
            </div>
            {{ $channels->links() }}
            {{--<nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center pagination-sm mb-4">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>--}}
        </div>
        <hr>
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
        {{--                        <h6>Featured Videos</h6>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--                <div class="col-xl-3 col-sm-6 mb-3">--}}
        {{--                    <div class="video-card">--}}
        {{--                        <div class="video-card-image">--}}
        {{--                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>--}}
        {{--                            <a href="#"><img class="img-fluid" src="img/v5.png" alt=""></a>--}}
        {{--                            <div class="time">3:50</div>--}}
        {{--                        </div>--}}
        {{--                        <div class="video-card-body">--}}
        {{--                            <div class="video-title">--}}
        {{--                                <a href="#">There are many variations of passages of Lorem</a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-page text-success">--}}
        {{--                                Education  <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-view">--}}
        {{--                                1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--                <div class="col-xl-3 col-sm-6 mb-3">--}}
        {{--                    <div class="video-card">--}}
        {{--                        <div class="video-card-image">--}}
        {{--                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>--}}
        {{--                            <a href="#"><img class="img-fluid" src="img/v6.png" alt=""></a>--}}
        {{--                            <div class="time">3:50</div>--}}
        {{--                        </div>--}}
        {{--                        <div class="video-card-body">--}}
        {{--                            <div class="video-title">--}}
        {{--                                <a href="#">There are many variations of passages of Lorem</a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-page text-danger">--}}
        {{--                                Education  <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Unverified"><i class="fas fa-frown text-danger"></i></a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-view">--}}
        {{--                                1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--                <div class="col-xl-3 col-sm-6 mb-3">--}}
        {{--                    <div class="video-card">--}}
        {{--                        <div class="video-card-image">--}}
        {{--                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>--}}
        {{--                            <a href="#"><img class="img-fluid" src="img/v7.png" alt=""></a>--}}
        {{--                            <div class="time">3:50</div>--}}
        {{--                        </div>--}}
        {{--                        <div class="video-card-body">--}}
        {{--                            <div class="video-title">--}}
        {{--                                <a href="#">There are many variations of passages of Lorem</a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-page text-success">--}}
        {{--                                Education  <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-view">--}}
        {{--                                1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--                <div class="col-xl-3 col-sm-6 mb-3">--}}
        {{--                    <div class="video-card">--}}
        {{--                        <div class="video-card-image">--}}
        {{--                            <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>--}}
        {{--                            <a href="#"><img class="img-fluid" src="img/v8.png" alt=""></a>--}}
        {{--                            <div class="time">3:50</div>--}}
        {{--                        </div>--}}
        {{--                        <div class="video-card-body">--}}
        {{--                            <div class="video-title">--}}
        {{--                                <a href="#">There are many variations of passages of Lorem</a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-page text-success">--}}
        {{--                                Education  <a title="" data-placement="top" data-toggle="tooltip" href="#" data-original-title="Verified"><i class="fas fa-check-circle text-success"></i></a>--}}
        {{--                            </div>--}}
        {{--                            <div class="video-view">--}}
        {{--                                1.8M views &nbsp;<i class="fas fa-calendar-alt"></i> 11 Months ago--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--            </div>--}}
        {{--        </div>--}}
    </div>
    <!-- /.container-fluid -->
@endsection

@section('footer')
    <script src="{{ asset('js/channels.js') }}"></script>
@endsection