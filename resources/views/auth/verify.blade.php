@extends('layouts.app')

@section('title')
    Verify Account
@endsection

@section('content')
<div class="container-fluid">
    <div class="row justify-content-center mt-5 mb-5">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><strong>{{ __('Verify Your Email Address') }}</strong></div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif

                    <div class="text-center">
                    <img src="{{asset('img/verify_email.svg')}}" width=150  class="mt-5">
                    


                   <h5 class="mt-5"> {{ __('Before proceeding, please check your email for a verification link.') }}</h5>
                   <h6> {{ __('If you did not receive the email') }},
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('click here to request another') }}</button>.
                    </form></h6>
<small>Check your spam folder If you did not receive the email in your inbox</small>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
