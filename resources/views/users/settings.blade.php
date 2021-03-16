@extends('layouts.app')
@section('title')
    Account Settings
@endsection
@section('content')
    <div class="container-fluid upload-details">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h6>Settings</h6>
                </div>
            </div>
        </div>
        <form action="{{ route('my.settings.update') }}" method="post" id="settings_form">
            @csrf
            @method('put')
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="name">Name <span class="required">*</span></label>
                        <input class="form-control border-form-control" name="name" id="name" value="{{ $user->name }}"
                               placeholder="Name" type="text">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="phone">Phone </label>
                        <input class="form-control border-form-control" name="phone" id="phone"
                               value="{{ $user->profile->phone }}" placeholder="123 456 7890" type="number">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-9">
                            <div class="form-group">
                                <label class="control-label" for="email">Email Address <span
                                            class="required">*</span></label>
                                <input class="form-control border-form-control " name="email" id=""
                                       value="{{ $user->email }}" disabled placeholder="iamosahan@gmail.com"
                                       type="email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email
                                    publically if you choose to
                                    hide your email</small>
                            </div>
                        </div>
                        <div class="col-3">

                            <div class="custom-control custom-checkbox mt-4">
                                <input type="checkbox" class="custom-control-input" id="hide_email" name="hide_email"
                                       value="yes" {{ $user->hide_email == 1 ? 'checked' : '' }}>
                                <label class="custom-control-label" for="hide_email">Hide My Email</label>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="country">Country <span class="required">*</span></label>
                        <select class="custom-select" name="country" id="country">
                            <option value="">Select Country</option>
                            @foreach($countries as $country)
                                <option value="{{ $country }}"
                                        @if($user->profile->country == $country) selected @endif>{{ $country }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="city">City </label>
                        <input type="text" name="city" id="city" value="{{ $user->profile->city }}"
                               class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="zip" class="control-label">Zip Code </label>
                        <input name="zip" id="zip" class="form-control border-form-control"
                               value="{{ $user->profile->zip }}" placeholder="123456" type="number">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="state" class="control-label">State </label>
                        <select name="state" id="state" class="custom-select">
                            <option value="">Select State</option>
                            @foreach($states as $state)
                                <option value="{{ $state }}"
                                        @if($user->profile->state == $state) selected @endif>{{ $state }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="address">Address </label>
                        <textarea class="form-control border-form-control" name="address"
                                  id="address">{{ $user->profile->address }}</textarea>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="avatar">Avatar </label>
                        <div class="col-sm-3 imgUp p-0">
                            <div class="imagePreview"{!! !empty($user->profile->avatar) ? ' style="background-image: url(' . Storage::disk('s3')->url('public/users/avatar/' . $user->profile->avatar) . ')"' : '' !!}></div>
                            <label class="btn btn-outline-primary mt-2">
                                Select Image<input type="file" name="avatar" id="avatar" class="uploadFile img"
                                                   value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                   style="width: 0px;height: 0px;overflow: hidden;">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-right">
                    <a href="{{ route('my.password') }}" class="btn btn-info float-left">Change Password</a>
                    <button type="button" class="btn btn-danger border-none"> Cancel</button>
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