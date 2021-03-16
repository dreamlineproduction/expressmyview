@extends('layouts.app')
<title>{{ env('APP_NAME') }} - Password</title>
@section('content')
    <div class="container-fluid upload-details">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h6>Change Password</h6>
                </div>
            </div>
        </div>

        @if(session()->has('success_msg'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <span>{{ session()->get('success_msg') }}</span>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif
        @if(session()->has('error_msg'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <span>{{ session()->get('error_msg') }}</span>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        <form action="{{ route('my.password.update') }}" method="post" id="password_form">
            @csrf
            @method('put')
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="current_password">Current Password <span
                                    class="required">*</span></label>
                        <input class="form-control border-form-control @error('current_password') is-invalid @enderror"
                               name="current_password" id="current_password" placeholder="Current password"
                               type="password">
                        @error('current_password')
                        <div class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="password">New Password <span class="required">*</span></label>
                        <input class="form-control border-form-control @error('password') is-invalid @enderror"
                               name="password" id="password" placeholder="New password" type="password">
                        @error('password')
                        <div class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="password_confirmation">Retype New Password <span
                                    class="required">*</span></label>
                        <input class="form-control border-form-control @error('password_confirmation') is-invalid @enderror"
                               name="password_confirmation" id="password_confirmation" placeholder="Retype new password"
                               type="password">
                        @error('password_confirmation')
                        <div class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-right">
                    <button type="button" class="btn btn-danger border-none"
                            onclick="window.location='{{ route('my.settings') }}'"> Cancel
                    </button>
                    <button type="submit" class="btn btn-success border-none" id="submit_btn"> Save Changes</button>
                </div>
            </div>
        </form>
    </div>
    <!-- /.container-fluid -->
@endsection

@section('footer')
    <!-- jQuery Validation -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>

    <script src="{{ asset('js/settings.js') }}" defer></script>
@endsection