<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="Myview Admin Pane" />
    <meta name="description" content="Myview Admin Pane" />
    <meta name="author" content="info@dreamlineproduction.in" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Myview Admin Panel</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="{{ asset('img/favicon.png') }}">

    <!-- Font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Poppins:200,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900">

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('admin_assets/css/styles.css') }}" />

    @yield('header')
</head>

<body>

    <div class="wrapper">

        <!--=================================
     preloader -->

        <div id="pre-loader">
            <img src="{{ asset('img/loader-01.svg') }}" alt="">
        </div>

        <!--=================================
     preloader -->


        <!--=================================
     header start-->

        <nav class="admin-header navbar navbar-default col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <!-- logo -->
            <div class="text-left navbar-brand-wrapper">
                <a class="navbar-brand brand-logo" href="{{ route('admin.dashboard') }}"><img
                        src="{{ asset('img/logo_color.svg') }}" alt="" width="155"></a>
                <a class="navbar-brand brand-logo-mini" href="{{ route('admin.dashboard') }}"><img
                        src="{{ asset('admin_assets/images/logo-icon-dark.png') }}" alt=""></a>
            </div>
            <!-- Top bar left -->
            <ul class="nav navbar-nav mr-auto">
                <li class="nav-item">
                    <a id="button-toggle" class="button-toggle-nav inline-block ml-20 pull-left"
                        href="javascript:void(0);"><i class="zmdi zmdi-menu ti-align-right"></i></a>
                </li>

            </ul>
            <!-- top bar right -->
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item fullscreen">
                    <a id="btnFullscreen" href="#" class="nav-link"><i class="ti-fullscreen"></i></a>
                </li>


                <li class="nav-item dropdown mr-30">
                    <a class="nav-link nav-pill user-avatar" data-toggle="dropdown" href="#" role="button"
                        aria-haspopup="true" aria-expanded="false">
                        <img src="{{ asset('admin_assets/images/profile-avatar.jpg') }}" alt="avatar">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-header">
                            <div class="media">
                                <div class="media-body">
                                    <h5 class="mt-0 mb-0">Welcome! Admin</h5>
                                    <span>{{ Auth::user()->email }}</span>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{ route('admin.password.edit') }}"><i
                                class="text-secondary ti-reload"></i>Change Password</a>

                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="{{ route('home') }}" target="_blank"><i
                                class="text-info ti-settings"></i>View Site</a>
                        <a class="dropdown-item" href="#" onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                            <i class="text-danger ti-unlock"></i>Logout
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </div>
                </li>
            </ul>
        </nav>

        <!--=================================
     header End-->

        <!--=================================
     Main content -->

        <div class="container-fluid">
            <div class="row">
                <!-- Left Sidebar start-->
                <div class="side-menu-fixed">
                    <div class="scrollbar side-menu-bg">
                        <ul class="nav navbar-nav side-menu" id="sidebarnav">
                            <!-- menu item Dashboard-->

                            <li>
                                <a href="{{ route('admin.dashboard') }}"><i class="ti-home"></i><span
                                        class="right-nav-text">Dashboard</span> </a>
                            </li>


                            <li>
                                <a href="{{ route('admin.user.index') }}"><i class="ti-user"></i><span
                                        class="right-nav-text">User Management</span> </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.podcast.index', ['type' => 'video']) }}"><i
                                        class="ti-video-camera"></i><span class="right-nav-text">Video Podcast</span>
                                </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.podcast.index', ['type' => 'audio']) }}"><i
                                        class="ti-music"></i><span class="right-nav-text">Audio Podcast</span> </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.channel.index') }}"><i class="ti-comments"></i><span
                                        class="right-nav-text">Channels</span> </a>
                            </li>


                            <li>
                                <a href="{{ route('admin.category.index') }}"><i class="ti-list"></i><span
                                        class="right-nav-text">Categories</span> </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.page.index') }}"><i class="ti-file"></i><span
                                        class="right-nav-text">Pages</span> </a>
                            </li>

                            <li>
                                <a href="{{ route('admin.settings.edit') }}"><i class="ti-settings"></i><span
                                        class="right-nav-text">Settings</span> </a>
                            </li>


                        </ul>
                    </div>
                </div>

                <!-- Left Sidebar End-->

                <!--=================================
           wrapper -->

                <div class="content-wrapper">
                    @yield('content')

                    <!--=================================
                 wrapper -->

                    <!--=================================
                 footer -->

                    <footer class="bg-white p-4">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-center text-md-left">
                                    <p class="mb-0"> &copy; Copyright <span id="copyright">
                                            <script>
                                            document.getElementById('copyright').appendChild(document.createTextNode(
                                                new Date().getFullYear()))
                                            </script>
                                        </span>. <a href="#"> MyView </a> All Rights Reserved. </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <ul class="text-center text-md-right">
                                    <li class="list-inline-item"><a href="#">Terms &amp; Conditions </a> </li>
                                    <li class="list-inline-item"><a href="#">API Use Policy </a> </li>
                                    <li class="list-inline-item"><a href="#">Privacy Policy </a> </li>
                                </ul>
                            </div>
                        </div>
                    </footer>
                </div><!-- main content wrapper end-->
            </div>
        </div>
    </div>

    <!--=================================
 footer -->



    <!--=================================
 jquery -->

    <!-- jQuery Full -->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"
        integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

    <!-- plugins-jquery -->
    <script src="{{ asset('admin_assets/js/plugins-jquery.js') }}"></script>

    <!-- plugin_path -->
    <script>
    var plugin_path = '{{ url('
    admin_assets / js ') }}/';
    </script>

    <!-- chart -->
    <script src="{{ asset('admin_assets/js/chart-init.js') }}"></script>

    <!-- calendar -->
    <script src="{{ asset('admin_assets/js/calendar.init.js') }}"></script>

    <!-- charts sparkline -->
    <script src="{{ asset('admin_assets/js/sparkline.init.js') }}"></script>

    <!-- charts morris -->
    <script src="{{ asset('admin_assets/js/morris.init.js') }}"></script>

    <!-- datepicker -->
    <script src="{{ asset('admin_assets/js/datepicker.js') }}"></script>

    <!-- sweetalert2 -->
    <script src="{{ asset('admin_assets/js/sweetalert2.js') }}"></script>

    <!-- toastr -->
    <script src="{{ asset('admin_assets/js/toastr.js') }}"></script>

    <!-- validation -->
    <script src="{{ asset('admin_assets/js/validation.js') }}"></script>

    <!-- lobilist -->
    <script src="{{ asset('admin_assets/js/lobilist.js') }}"></script>

    <!-- custom -->
    <script src="{{ asset('admin_assets/js/custom.js') }}"></script>

    @yield('footer')
</body>

</html>