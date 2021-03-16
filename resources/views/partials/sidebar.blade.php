<!-- Sidebar -->
<ul class="sidebar navbar-nav">
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('home') }}">
            <i class="fas fa-fw fa-home"></i>
            <span>Home</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('channel.index') }}">
            <i class="fas fa-fw fa-users"></i>
            <span>Channels</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('live-stream.index') }}">
            <i class="fas fa-fw fa-video"></i>
            <span>Live Podcasts</span>
        </a>
    </li>


    <li class="nav-item">
        <a class="nav-link" href="{{ route('podcast.index',['type' => 'audio']) }}">
            <i class="fas fa-fw fa-cloud-upload-alt"></i>
            <span>Audio Podcasts</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('podcast.index',['type' => 'video']) }}">
            <i class="fas fa-fw fa-cloud-upload-alt"></i>
            <span>Video Podcasts</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('history.index') }}">
            <i class="fas fa-fw fa-history"></i>
            <span>History Page</span>
        </a>
    </li>
    @if(Auth::check())
        <li class="nav-item channel-sidebar-list">
            <h6>MY SUBSCRIPTIONS</h6>
            @if($subscriptions->count() > 0)
                <ul>
                    @foreach($subscriptions as $subscription)
                        <li>
                            <a href="{{ route('channel.show', $subscription->id) }}">
                                <img class="img-fluid" alt=""
                                     src="{{ $subscription->logo ? Storage::disk('s3')->url('public/users/logo/' . $subscription->logo) : asset('img/user.png') }}"> {{ $subscription->name }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            @else
                <div class="text-white text-center">
                    <i class="far fa-sad-tear" style="font-size: 52px;margin-bottom: 20px;margin-top: 20px;"
                       aria-hidden="true"></i>

                    <p class="text-white text-center">You have no subscriptions.</p>

                    <a class="btn btn-success" href="{{ route('channel.index') }}" role="button"><i
                                class="far fa-play-circle"></i> View Channels</a>


                </div>
            @endif
        </li>
    @endif
    <li class="nav-item channel-sidebar-list">
        <h6>Useful Information</h6>
        <ul>
            <li>
                <small> <a href="{{ route('page.show', 'terms-conditions') }}">
                        <i class="fa fa-circle" aria-hidden="true" style="font-size: 6px;"></i> Terms & Conditions
                    </a></small>
            </li>
            <li>
                <small> <a href="{{ route('page.show', 'privacy-policy') }}">
                        <i class="fa fa-circle" aria-hidden="true" style="font-size: 6px;"></i> Privacy Policy
                    </a></small>
            </li>
            <li>
                <small> <a href="{{ route('page.show', 'cookie-policy') }}">
                        <i class="fa fa-circle" aria-hidden="true" style="font-size: 6px;"></i> Cookie Policy
                    </a></small>
            </li>
            <li>
                <small> <a href="subscriptions.html">
                        <i class="fa fa-circle" aria-hidden="true" style="font-size: 6px;"></i> Contact Us
                    </a></small>
            </li>
        </ul>
    </li>


    <div class="row">
        <div class="col">
            <div class="social-foot text-center">
                <a href="{{ $settings['facebook_link'] ?: '#' }}" class="fa fa-facebook" target="_blank"></a>
                <a href="{{ $settings['twitter_link'] ?: '#' }}" class="fa fa-twitter" target="_blank"></a>
                <a href="{{ $settings['youtube_link'] ?: '#' }}" class="fa fa-google" target="_blank"></a>


            </div>

        </div>


    </div>

</ul>
