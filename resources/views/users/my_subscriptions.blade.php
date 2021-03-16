@extends('layouts.app')

@section('title')
    Explore All Channels
@endsection

@section('content')
    <div class="container-fluid pb-0">
        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <h6>My Subscriptions</h6>
                    </div>
                </div>
                @forelse($channels as $channel)
                    <div class="col-xl-3 col-sm-6 mb-3 single-channel">
                        <div class="single-channel-image">
                            <img class="img-fluid" alt="" src="{{ $channel->banner ? Storage::disk('s3')->url('public/users/banner/' . $channel->banner) : asset('img/banner.jpg') }}">
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
                                                <button type="button" class="btn btn-danger btn-sm subscribe_btn"
                                                        data-channel="{{ $channel->id }}">Unsubscribe
                                                </button>
                                            @else
                                                <button type="button" class="btn btn-outline-danger btn-sm subscribe_btn"
                                                        data-channel="{{ $channel->id }}">Subscribe
                                                </button>
                                            @endif
                                        @endif
                                    @else
                                        <a href="{{ route('login') }}" type="button" class="btn btn-outline-danger btn-sm subscribe_btn">Subscribe</a>
                                    @endif
                                </div>
                            </div>
                            <div class="channels-card-body">
                                <div class="channels-title">
                                    <a href="{{ route('channel.show', $channel->id) }}">{{ $channel->name }}</a>
                                </div>
                                <div class="channels-view">
                                    <span class="subscribers-count">{{ $channel->subscribers }}</span> subscribers
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-md-12 mb-3 mt-4 text-center">
                    
                    <img class="img-fluid mb-4" src="{{asset('img/no-data.svg')}}" width="120" alt="No Data Avalaible"></a>
                   
                   <h3 class="text-muted"> No subscriptions found</h3>
                    
                    </div>
                @endforelse
            </div>
            {{ $channels->links() }}
        </div>
        <hr>
    </div>
    <!-- /.container-fluid -->
@endsection
