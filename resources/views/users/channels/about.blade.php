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
                        {{ $channel->description }}
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12">
                        <table>
                            <tr>
                                <td>Total Podcasts</td>
                                <td>{{ $channel->podcasts()->count() }}</td>
                            </tr>
                            <tr>
                                <td>Total Views</td>
                                <td>{{ number_format($views, 0) }}</td>
                            </tr>
                            @if($channel->user->profile->country)
                                <tr>
                                    <td>Country</td>
                                    <td>{{ $channel->user->profile->country }}</td>
                                </tr>
                            @endif
                            @if($channel->user->hide_email == 0)
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        @if(Auth::check())
                                            {{ $channel->user->email }}
                                        @else
                                            <a href="{{ route('login') }}">Log in to view this user's email address</a>
                                        @endif
                                    </td>
                                </tr>
                            @endif
                        </table>
                    </div>
                </div>

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