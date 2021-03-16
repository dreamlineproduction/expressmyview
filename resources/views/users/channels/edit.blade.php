@extends('layouts.app')

@section('title')
    Edit Channel
@endsection

@section('content')
    <div class="container-fluid upload-details">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h6>Create new channel</h6>
                </div>
            </div>
        </div>
        <form action="{{ route('channel.update', $channel->id) }}" method="post" id="update_channel_form">
            @csrf
            @method('put')
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="name">Name <span class="required">*</span></label>
                        <input class="form-control border-form-control" name="name" id="name" value="{{ $channel->name }}" placeholder="Enter a name for the channel" type="text" required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="description">Description </label>
                        <textarea class="form-control border-form-control" name="description" id="description" rows="6">{{ $channel->description }}</textarea>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="logo">Logo </label>
                        <div class="col-sm-3 imgUp">
                            <div class="imagePreview" style="background-image: url({{ $channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $channel->logo) : asset('img/user.png') }})"></div>
                            <label class="btn btn-primary">
                                Select Image<input type="file" name="logo" id="logo" class="uploadFile img" value="Upload Photo" accept="image/jpeg,image/png,image/bmp" style="width: 0px;height: 0px;overflow: hidden;">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="control-label" for="banner">Banner </label>
                        <div class="col-sm-12 imgUp">
                            <div class="imagePreview" style="background-image: url({{ $channel->banner ? Storage::disk('s3')->url('public/users/banner/' . $channel->banner) : asset('img/banner.jpg') }})"></div>
                            <label class="btn btn-primary">
                                Select Image<input type="file" name="banner" id="banner" class="uploadFile img" value="Upload Photo" accept="image/jpeg,image/png,image/bmp" style="width: 0px;height: 0px;overflow: hidden;">
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="facebook">Facebook </label>
                        <input class="form-control border-form-control" name="facebook" id="facebook" value="{{ $channel->facebook }}" placeholder="Enter your facebook link" type="url">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="twitter">Twitter </label>
                        <input class="form-control border-form-control" name="twitter" id="twitter" value="{{ $channel->twitter }}" placeholder="Enter your twitter link" type="url">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="youtube">Youtube </label>
                        <input class="form-control border-form-control" name="youtube" id="youtube" value="{{ $channel->youtube }}" placeholder="Enter your youtube link" type="url">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="instagram">Instagram </label>
                        <input class="form-control border-form-control" name="instagram" id="instagram" value="{{ $channel->instagram }}" placeholder="Enter your instagram link" type="url">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="pinterest">Pinterest </label>
                        <input class="form-control border-form-control" name="pinterest" id="pinterest" value="{{ $channel->pinterest }}" placeholder="Enter your pinterest link" type="url">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="linkedin">Linkedin </label>
                        <input class="form-control border-form-control" name="linkedin" id="linkedin" value="{{ $channel->linkedin }}" placeholder="Enter your linkedin link" type="url">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label" for="tiktok">Tiktok </label>
                        <input class="form-control border-form-control" name="tiktok" id="tiktok" value="{{ $channel->tiktok}}" placeholder="Enter your tiktok link" type="url">
                    </div>
                </div>
            </div>

            <div class="row mt-2">
                <div class="col-sm-12 text-right">
                    <button type="button" class="btn btn-danger border-none"> Cancel </button>
                    <button type="submit" class="btn btn-success border-none"> Update Channel </button>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('footer')
    <!-- jQuery Validation -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>

    <script src="{{ asset('js/channels.js') }}" defer></script>
@endsection