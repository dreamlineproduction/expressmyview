@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">User Management </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Edit User</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Edit User</h5>
                    @include('admin.partials.alert')
                    <form action="{{ route('admin.user.update', $user->id) }}" method="post">
                        @csrf
                        @method('put')
                        <div class="form-group">
                            <label class="control-label" for="name">Name <span class="required">*</span></label>
                            <input class="form-control border-form-control" name="name" id="name" value="{{ $user->name }}" placeholder="Name" type="text">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="phone">Phone <span class="required">*</span></label>
                            <input class="form-control border-form-control" name="phone" id="phone" value="{{ $user->profile->phone }}" placeholder="123 456 7890" type="number">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="email">Email Address <span class="required">*</span></label>
                            <input class="form-control border-form-control " name="email" id="" value="{{ $user->email }}" placeholder="iamosahan@gmail.com" type="email">
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="country">Country <span class="required">*</span></label>
                            <select  class="custom-select" name="country" id="country">
                                <option value="">Select Country</option>
                                @foreach($countries as $country)
                                    <option value="{{ $country }}" @if($user->profile->country == $country) selected @endif>{{ $country }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="city">City <span class="required">*</span></label>
                            <input type="text" name="city" id="city" value="{{ $user->profile->city }}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="zip" class="control-label">Zip Code <span class="required">*</span></label>
                            <input name="zip" id="zip" class="form-control border-form-control" value="{{ $user->profile->zip }}" placeholder="123456" type="number">
                        </div>
                        <div class="form-group">
                            <label for="state" class="control-label">State <span class="required">*</span></label>
                            <select name="state" id="state" class="custom-select">
                                <option value="">Select State</option>
                                @foreach($states as $state)
                                    <option value="{{ $state }}" @if($user->profile->state == $state) selected @endif>{{ $state }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="address">Address <span class="required">*</span></label>
                            <textarea class="form-control border-form-control" name="address" id="address">{{ $user->profile->address }}</textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="avatar">Avatar </label>
                            <div class="col-sm-3 imgUp p-0">
                                <div class="imagePreview  img-fluid admin-podcast-img"{!! !empty($user->profile->avatar) ? ' style="background-image: url(' . Storage::disk('s3')->url('public/users/avatar/' . $user->profile->avatar) . ')"' : '' !!}></div>
                                <label class="btn btn-outline-primary mt-2">
                                    Select Image<input type="file" name="avatar" id="avatar" class="uploadFile img"
                                                       value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                       style="width: 0px;height: 0px;overflow: hidden;">
                                </label>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success mt-4">Update User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection