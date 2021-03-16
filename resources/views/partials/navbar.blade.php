<nav class="navbar navbar-expand navbar-light bg-white static-top osahan-nav sticky-top">
    &nbsp;&nbsp;
    <button class="btn btn-link btn-sm text-secondary order-1 order-sm-0" id="sidebarToggle">
        <i class="fas fa-bars"></i>
    </button> &nbsp;&nbsp;
    <a class="navbar-brand mr-1 logo-bar" href="{{ route('home') }}"><img class="img-fluid" alt="" src="{{ asset('img/logo_color.svg') }}"></a>
    <!-- Navbar Search -->
    <form action="{{ route('search') }}" id="search" class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0 osahan-navbar-search">
        <div class="input-group">
            <input name="q" type="text" class="form-control" value="{{ !empty($query) ? $query : '' }}" placeholder="Search for...">
            <div class="input-group-append">
                <button class="btn btn-light" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>
    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0 osahan-right-navbar">
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <strong class="text-primary"> Upload Podcats</strong>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                <a class="dropdown-item" href="{{ empty($channel) ? route('live-stream.create') : route('live-stream.create', ['channel' => $channel->id]) }}"><i class="fas fa-video"></i> &nbsp; Create Live Podcast</a>
                <a class="dropdown-item" href="{{ empty($channel) ? route('podcast.create') : route('podcast.create', ['channel' => $channel->id]) }}"><i class="fas fa-play-circle"></i> &nbsp; Upload Podcasts</a>

            </div>
        </li>
        @guest
            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}"><i class="fas fa-user"></i> {{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
                <li class="nav-item">
                <a class="btn btn-primary mt-2" href="{{ route('register') }}" role="button">{{ __('Register') }}</a>
                    
                </li>
            @endif
        @else
            
            <!--
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <span class="badge badge-success">7</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-edit "></i> &nbsp; Action</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-headphones-alt "></i> &nbsp; Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="fas fa-fw fa-star "></i> &nbsp; Something else here</a>
                            </div>
                        </li>
            -->
            <li class="nav-item dropdown no-arrow osahan-right-navbar-user">
                <a class="nav-link dropdown-toggle user-dropdown-link" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @php
                        $user = \Illuminate\Support\Facades\Auth::user();
                    @endphp
                    <img class="nav-avatar" alt="Avatar" src="{{ !empty($user->profile->avatar) ? Storage::disk('s3')->url('public/users/avatar/' . $user->profile->avatar) : asset('img/user.png') }}">
                    <span class="nav-user">{{ !empty($user->name) ? $user->name : $user->email }}</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="{{ route('my.account') }}"><i class="fas fa-fw fa-user-circle"></i> &nbsp; My Account</a>
                    <a class="dropdown-item" href="{{ route('my.channels') }}"><i class="fas fa-fw fa-video"></i> &nbsp; My Channels</a>
                    <a class="dropdown-item" href="{{ route('my.subscriptions') }}"><i class="fas fa-fw fa-video"></i> &nbsp; My Subscriptions</a>
                    <a class="dropdown-item" href="{{ route('channel.create') }}"><i class="fas fa-align-left"></i> &nbsp; Create Channel</a>
                    <a class="dropdown-item" href="{{ route('my.settings') }}"><i class="fas fa-fw fa-cog"></i> &nbsp; Settings</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                        <i class="fas fa-fw fa-sign-out-alt"></i> &nbsp; Logout
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </li>
        @endguest
    </ul>
</nav>