@extends('layouts.app')

@section('title')
    All Live Streams
@endsection

@section('content')
<div class="container-fluid pb-0">
        <hr>

        <div class="video-block section-padding">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-title">
                            <div class="btn-group float-right right-action">

                                <a href="#" class="right-action-link text-gray" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sort by <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="http://localhost/expressmyview/public/podcasts/video?orderBy=rating"><i class="fas fa-fw fa-star" aria-hidden="true"></i> &nbsp; Top Rated</a>
                                    <a class="dropdown-item" href="http://localhost/expressmyview/public/podcasts/video?orderBy=popularity"><i class="fas fa-fw fa-signal" aria-hidden="true"></i> &nbsp; Viewed</a>
                                    <a class="dropdown-item" href="http://localhost/expressmyview/public/podcasts/video?orderBy=date"><i class="fas fa-fw fa-times-circle" aria-hidden="true"></i> &nbsp;
                                        Upload Date</a>
                                </div>
                            </div>
                            <h6> All Live Streams</h6>
                        </div>
                    </div>
                                            <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a class="play-icon" href="http://localhost/expressmyview/public/podcast/1"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                                    <a href="http://localhost/expressmyview/public/podcast/1">
                                        <img class="img-fluid" src="{{ url('/storage/podcast/thumbnail/' . $video->thumbnail) }}" alt="video">
                                    </a>
                                    <div class="time">0:8</div>
                                </div>
                                <div class="video-card-body">
                                    <div class="row">
                                        <div class="col-md-10">

                                            <div class="video-title text-left">
                                                <a href="http://localhost/expressmyview/public/podcast/1">video</a>
                                            </div>
                                        </div>

                                                                            </div>
                                    <div class="video-page text-success">
                                        <a href="http://localhost/expressmyview/public/channel/1">Pubg Live</a>
                                                                            </div>
                                    <div class="video-view float-left">
                                        0 views &nbsp;<i class="fas fa-calendar-alt" aria-hidden="true"></i> 1 week ago
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                                            <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a class="play-icon" href="http://localhost/expressmyview/public/podcast/2"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                                    <a href="http://localhost/expressmyview/public/podcast/2">
                                        <img class="img-fluid" src="http://localhost/expressmyview/public/storage/podcast/thumbnail/zejbApdBM3.jpg" alt="video">
                                    </a>
                                    <div class="time">0:8</div>
                                </div>
                                <div class="video-card-body">
                                    <div class="row">
                                        <div class="col-md-10">

                                            <div class="video-title text-left">
                                                <a href="http://localhost/expressmyview/public/podcast/2">video</a>
                                            </div>
                                        </div>

                                                                            </div>
                                    <div class="video-page text-success">
                                        <a href="http://localhost/expressmyview/public/channel/1">Pubg Live</a>
                                                                            </div>
                                    <div class="video-view float-left">
                                        1 views &nbsp;<i class="fas fa-calendar-alt" aria-hidden="true"></i> 1 week ago
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                                            <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a class="play-icon" href="http://localhost/expressmyview/public/podcast/3"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                                    <a href="http://localhost/expressmyview/public/podcast/3">
                                        <img class="img-fluid" src="http://localhost/expressmyview/public/storage/podcast/thumbnail/08GV72bb1q.jpg" alt="video">
                                    </a>
                                    <div class="time">0:8</div>
                                </div>
                                <div class="video-card-body">
                                    <div class="row">
                                        <div class="col-md-10">

                                            <div class="video-title text-left">
                                                <a href="http://localhost/expressmyview/public/podcast/3">video</a>
                                            </div>
                                        </div>

                                                                            </div>
                                    <div class="video-page text-success">
                                        <a href="http://localhost/expressmyview/public/channel/1">Pubg Live</a>
                                                                            </div>
                                    <div class="video-view float-left">
                                        0 views &nbsp;<i class="fas fa-calendar-alt" aria-hidden="true"></i> 1 week ago
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                                            <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="video-card">
                                <div class="video-card-image">
                                    <a class="play-icon" href="http://localhost/expressmyview/public/podcast/4"><i class="fas fa-play-circle" aria-hidden="true"></i></a>
                                    <a href="http://localhost/expressmyview/public/podcast/4">
                                        <img class="img-fluid" src="http://localhost/expressmyview/public/storage/podcast/thumbnail/a9XjqbjBn5.jpg" alt="yt1s.com - Sadhgurus Life Advice for College Students  BeerBiceps Mental Fitness_1080p">
                                    </a>
                                    <div class="time">3:32</div>
                                </div>
                                <div class="video-card-body">
                                    <div class="row">
                                        <div class="col-md-10">

                                            <div class="video-title text-left">
                                                <a href="http://localhost/expressmyview/public/podcast/4">yt1s.com - Sadhgurus Life Advice for College Students  BeerBiceps Mental Fitness_1080p</a>
                                            </div>
                                        </div>

                                                                            </div>
                                    <div class="video-page text-success">
                                        <a href="http://localhost/expressmyview/public/channel/1">Pubg Live</a>
                                                                            </div>
                                    <div class="video-view float-left">
                                        0 views &nbsp;<i class="fas fa-calendar-alt" aria-hidden="true"></i> 1 week ago
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                                        
                </div>
            </div>



</div>        
@endsection