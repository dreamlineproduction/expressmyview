<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Askbootstrap">
    <meta name="author" content="Askbootstrap">
    <title>Reset Password - MyView</title>
    <!-- Favicon Icon -->
    <link rel="icon" type="image/png" href="{{ asset('img/favicon.png') }}">
    <!-- Bootstrap core CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Custom fonts for this template-->
    <script src="https://kit.fontawesome.com/59c9493eb5.js" crossorigin="anonymous"></script>
    <!-- Custom styles for this template-->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
</head>



<body class="login-main-body">
    <section class="login-main-wrapper">
        <div class="container-fluid pl-0 pr-0">
            <div class="row no-gutters">
                <div class="col-md-5 p-5 bg-white full-height">
                    <div class="login-main-left">
                        <div class="text-center mb-5 login-main-left-header pt-4">
                            <img src="{{ asset('img/favicon.png') }}" class="img-fluid" alt="LOGO">
                            <h5 class="mt-3 mb-3">Welcome to {{ env('APP_NAME') }}</h5>
                            <p>It is a long established fact that a reader <br> will be distracted by the readable.</p>
                        </div>
                        @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                        @endif
                        <form method="POST" action="{{ route('password.email') }}">
                            @csrf

                            <div class="form-group">
                                <label for="email">{{ __('E-Mail Address') }}</label>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                            </div>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror


                            <div class="form-group row mb-0">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-outline-primary btn-block btn-lg">
                                        {{ __('Send Password Reset Link') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                        <div class="text-center mt-5">
                            <p class="light-gray">Don’t have an account? <a
                                    href="{{ route('register') }}">{{ __('Sign Up') }}</a></p>
                        </div>

                        <div class="text-center mt-2">
                            <p class="light-gray">{{ __('Allready have an account?') }}? <a
                                    href="{{ route('login') }}">{{ __('Login') }}</a></p>
                        </div>



                        <div class="text-center mt-5">
                            <p class="light-gray"> <a href="{{ route('home') }}"><i
                                        class="fas fa-long-arrow-alt-left"></i> {{ __('Back to Home') }}</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="login-main-right bg-white p-5 mt-5 mb-5">
                        <div class="owl-carousel owl-carousel-login">
                            <div class="item">
                                <div class="carousel-login-card text-center">
                                    <img src="{{ asset('img/login_image1.svg') }}" class="img-fluid" alt="LOGO">
                                    <h5 class="mt-5 mb-3">Watch Live Streams</h5>
                                    <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it
                                        to make a type specimen book. It has survived not <br>only five centuries</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="carousel-login-card text-center">
                                    <img src="{{ asset('img/login_image2.svg') }}" class="img-fluid" alt="LOGO">
                                    <h5 class="mt-5 mb-3">View Millions of Podcasts</h5>
                                    <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it
                                        to make a type specimen book. It has survived not <br>only five centuries</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="carousel-login-card text-center">
                                    <img src="{{ asset('img/login_image3.svg') }}" class="img-fluid" alt="LOGO">
                                    <h5 class="mt-5 mb-3">Get Notified from your Subscription</h5>
                                    <p class="mb-4">when an unknown printer took a galley of type and scrambled<br> it
                                        to make a type specimen book. It has survived not <br>only five centuries</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="card cookie-alert">
        <div class="card-body text-white">
            <h5 class="card-title text-white">&#x1F36A; Your privacy</h5>
            <p class="card-text">By clicking “Accept all cookies”, you agree MyView can store cookies on your
                device and disclose information in accordance with our Cookie Policy.</p>
            <div class="btn-toolbar">
                <a href="#" class="btn btn-success accept-cookies btn-block">Accept all cookies</a>
                <a href="{{ route('page.show', 'cookie-policy') }}" target="_blank" class="btn btn-link btn-block">Learn
                    more</a>

            </div>
        </div>
    </div>



    <script src="{{ asset('js/app.js') }}" defer></script>
    <!-- Core plugin JavaScript-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"
        integrity="sha256-H3cjtrm/ztDeuhCN9I4yh4iN2Ybx/y1RM7rMmAesA0k=" crossorigin="anonymous" defer></script>
    <!-- Owl Carousel -->
    <script src="{{ asset('js/owl.carousel.min.js') }}" defer></script>
    <!-- jQuery Validation -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>
    <!-- Custom scripts for all pages-->
    <script src="{{ asset('js/custom.js') }}" defer></script>
    <script src="{{ asset('js/login.js') }}" defer></script>
    <script>
    (function() {
        "use strict";

        var cookieAlert = document.querySelector(".cookie-alert");
        var acceptCookies = document.querySelector(".accept-cookies");

        cookieAlert.offsetHeight; // Force browser to trigger reflow (https://stackoverflow.com/a/39451131)

        if (!getCookie("acceptCookies")) {
            cookieAlert.classList.add("show");
        }

        acceptCookies.addEventListener("click", function() {
            setCookie("acceptCookies", true, 60);
            cookieAlert.classList.remove("show");
        });
    })();

    // Cookie functions stolen from w3schools
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }

    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }
    </script>
</body>

</html>