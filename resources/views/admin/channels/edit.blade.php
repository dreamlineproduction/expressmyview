@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Channels Management </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Edit Channel</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Edit Channel</h5>
                    @include('admin.partials.alert')
                    <form action="{{ route('admin.channel.update', $channel->id) }}" method="post">
                        @csrf
                        @method('put')
                        <div class="form-group">
                            <label class="control-label" for="name">Name <span class="required">*</span></label>
                            <input class="form-control border-form-control" name="name" id="name"
                                   value="{{ $channel->name }}" placeholder="Enter a name for the channel" type="text"
                                   required>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="description">Description </label>
                            <textarea class="form-control border-form-control" name="description" id="description"
                                      rows="6">{{ $channel->description }}</textarea>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="logo">Logo </label>
                            <div class="col-sm-3 imgUp">
                                <div class="imagePreview   img-fluid admin-podcast-img" style="background-image: url('{{ $channel->logo ? Storage::disk('s3')->url('public/users/logo/' . $channel->logo) : asset('img/user.png') }}')"></div>
                                <label class="btn btn-danger mt-4">
                                    Select Image<input type="file" name="logo" id="logo" class="uploadFile img"
                                                       value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                       style="width: 0px;height: 0px;overflow: hidden;">
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="banner">Banner </label>
                            <div class="col-sm-12 imgUp">
                                <div class="imagePreview img-fluid admin-podcast-img" style="background-image: url('{{ $channel->banner ? Storage::disk('s3')->url('public/users/banner/' . $channel->banner) : asset('img/banner.jpg') }}')"></div>
                                <label class="btn btn-danger mt-4">
                                    Select Image<input type="file" name="banner" id="banner" class="uploadFile img"
                                                       value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                       style="width: 0px;height: 0px;overflow: hidden;">
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="facebook">Facebook </label>
                            <input class="form-control border-form-control" name="facebook" id="facebook"
                                   value="{{ $channel->facebook }}" placeholder="Enter your facebook link" type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="twitter">Twitter </label>
                            <input class="form-control border-form-control" name="twitter" id="twitter"
                                   value="{{ $channel->twitter }}" placeholder="Enter your twitter link" type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="youtube">Youtube </label>
                            <input class="form-control border-form-control" name="youtube" id="youtube"
                                   value="{{ $channel->youtube }}" placeholder="Enter your youtube link" type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="instagram">Instagram </label>
                            <input class="form-control border-form-control" name="instagram" id="instagram"
                                   value="{{ $channel->instagram }}" placeholder="Enter your instagram link"
                                   type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="pinterest">Pinterest </label>
                            <input class="form-control border-form-control" name="pinterest" id="pinterest"
                                   value="{{ $channel->pinterest }}" placeholder="Enter your pinterest link"
                                   type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="linkedin">Linkedin </label>
                            <input class="form-control border-form-control" name="linkedin" id="linkedin"
                                   value="{{ $channel->linkedin }}" placeholder="Enter your linkedin link" type="text">
                        </div>

                        <div class="form-group">
                            <label class="control-label" for="tiktok">Tiktok </label>
                            <input class="form-control border-form-control" name="tiktok" id="tiktok"
                                   value="{{ $channel->tiktok}}" placeholder="Enter your tiktok link" type="text">
                        </div>


                        <div class="form-group">
                            <div class="checkbox checbox-switch switch-danger">
                                <label>
                                    <input type="checkbox" name="verified" value="yes" {{ $channel->verified ? 'checked' : '' }} />
                                    <span></span>
                                    Channel Verified?
                                </label>
                            </div>
                        </div>


                        <button type="submit" class="btn btn-success mt-4">Update Channel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection