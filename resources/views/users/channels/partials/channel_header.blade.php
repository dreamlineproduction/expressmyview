<div class="single-channel-image user-channels2">
    <img class="img-fluid" alt=""
         src="{{ $channel->banner ? Storage::disk('s3')->url('public/users/banner/' . $channel->banner) : asset('img/banner.jpg') }}">
    <div class="channel-profile">
        <img class="channel-profile-img" alt=""
             src="{{ $channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $channel->logo) : asset('img/user.png') }}">
        <div class="social hidden-xs">
            @if($channel->facebook || $channel->twitter || $channel->youtube || $channel->instagram || $channel->pinterest || $channel->linkedin || $channel->tiktok)
                Social &nbsp;
            @endif
            @if(!empty($channel->facebook))
                <a class="fb" href="{{ $channel->facebook }}" target="_blank">Facebook</a>
            @endif
            @if(!empty($channel->twitter))
                <a class="tw" href="{{ $channel->twitter }}" target="_blank">Twitter</a>
            @endif
            @if(!empty($channel->youtube))
                <a class="tw" href="{{ $channel->youtube }}" target="_blank">Youtube</a>
            @endif
            @if(!empty($channel->instagram))
                <a class="tw" href="{{ $channel->instagram }}" target="_blank">Instagram</a>
            @endif
            @if(!empty($channel->pinterest))
                <a class="tw" href="{{ $channel->pinterest }}" target="_blank">Pinterest</a>
            @endif
            @if(!empty($channel->linkedin))
                <a class="tw" href="{{ $channel->linkedin }}" target="_blank">Linkedin</a>
            @endif
            @if(!empty($channel->tiktok))
                <a class="tw" href="{{ $channel->tiktok }}" target="_blank">Tiktok</a>
            @endif
        </div>
    </div>
</div>
<div class="single-channel-nav">
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="channel-brand" href="#">{{ $channel->name }}
            @if($channel->verified)
                <span title="verified" data-placement="top" data-toggle="tooltip"
                      data-original-title="Verified">
                            <i class="fas fa-check-circle text-success"></i>
                        </span>
            @endif
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item {{ $page == 'podcasts' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('channel.show',$channel->id) }}">Podcasts <span
                                class="sr-only">(current)</span></a>
                </li>
                {{--<li class="nav-item">
                    <a class="nav-link" href="#">Playlist</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Channels</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Discussion</a>
                </li>--}}
                <li class="nav-item {{ $page == 'about' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('channel.about',$channel->id) }}">About <span
                                class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Donate
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#gift-modal"> <i
                                    class="fas fa-gift"></i> Send Gifts</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#donation-modal"> <i
                                    class="fas fa-hand-holding-usd"></i> Send Donations</a>

                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">

                @if(Auth::check())
                    @if($channel->user_id != Auth::user()->id)
                        @if(isSubscribed($channel->id, Auth::user()->id))
                            <button class="btn btn-danger" type="button" id="subscribe_btn"
                                    data-channel="{{ $channel->id }}">
                                <span class="sub-status">Unsubscribe</span>
                                <strong class="sub-count">{{ $channel->subscribers }}</strong>
                            </button>
                        @else
                            <button class="btn btn-danger" type="button" id="subscribe_btn"
                                    data-channel={{ $channel->id }}>
                                <span class="sub-status">Subscribe</span>
                                <strong class="sub-count">{{ $channel->subscribers }}</strong>
                            </button>
                        @endif
                    @else
                        <button class="btn btn-outline-danger btn-sm" type="button">Subscribers
                            <strong>{{ $channel->subscribers }}</strong>
                        </button>
                    @endif
                @else
                    <a href="{{ route('login') }}" class="btn btn-outline-danger btn-sm" role="button">
                        Subscribe
                        <strong>{{ $channel->subscribers }}</strong>
                    </a>
                @endif
                {{--<button class="btn btn-outline-danger btn-sm readonly" type="button">
                    <strong>{{ formatSubscribersCount($channel->subscribers) }}</strong> Subscribers
                </button>--}}
                @if(Auth::check() && Auth::user()->id == $channel->user_id)
                    <a href="{{ route('channel.verify.request', $channel->id) }}"
                       class="btn btn-primary float-left ml-3">Verify your channel</a>
                @endif
            </form>
        </div>
    </nav>
</div>