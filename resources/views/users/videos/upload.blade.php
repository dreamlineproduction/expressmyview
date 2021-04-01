@extends('layouts.app')

@section('title')
Upload New Podcast
@endsection

@section('header')
    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
    <!-- Bootstrap Tags Input -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection

@section('content')
    <div class="container-fluid pt-5 pb-5 upload">
        <div class="row">
            <div class="col-md-8 mx-auto text-center upload-video pt-5 pb-2 shadow-sm p-3 mb-5 bg-white rounded">
            <img class="img-fluid upld-icon mb-4" src="{{asset('img/upload-podcast.svg')}}" width="150" alt="Select Video files to upload"></a>

                <h4 class="mt-4">Select Video files to upload</h4>
                <p class="land mt-3">or drag and drop video files</p>
                <div class="selected-file"></div>
                <div class="mt-4">
                    <button class="btn btn-outline-primary d-none" id="upload_btn">Upload Video</button>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->

    <div class="container-fluid upload-details d-none">
        <form action="" method="POST" id="upload_video" style="visibility: hidden;">
            @csrf
            <input type="file" name="video" accept="video/*,audio/*" class="upload-video-file">
        </form>

        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h6>Upload Details</h6>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="imgplace"></div>
            </div>
            <div class="col-lg-10">
                <div class="osahan-title"></div>
                <div class="osahan-size"><span class="size"></span> . <span class="percent"></span> complete</div>
                <div class="osahan-progress">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
                             aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                    </div>
                </div>
                <div class="osahan-desc">Your Video is still uploading, please keep this page open until it's done.
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <form action="" method="post" id="podcast_details">
                    @csrf
                    @method('put')
                    <div class="osahan-form">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="channel">Channel</label>
                                    <select name="channel" id="channel" class="form-control" required>
                                        @foreach($channels as $channel)
                                            <option value="{{ $channel->id }}"{{ $channel->id == $selectedChannel ? ' selected' : '' }}>{{ $channel->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="title">Podcast Title</label>
                                    <input type="text" placeholder="Contrary to popular belief, Lorem Ipsum (2019) is not."
                                           name="title" id="title" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="description">About Podcast</label>
                                    <textarea rows="8" id="description" name="description" class="form-control" placeholder="A short description about the podcast" required></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="privacy">Privacy Settings</label>
                                    <select name="privacy" id="privacy" class="custom-select" required>
                                        <option value="1">Public</option>
                                        <option value="0">Private</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="license">License</label> <a href="JavaScript:void(0)"><i
                                                class="fas fa-question-circle"></i></a>
                                    <select name="license" id="license" class="custom-select" required>
                                        @foreach($licenses as $license)
                                            <option value="{{ $license->id }}">{{ $license->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="languages">Language in Video (Optional)</label>
                                    <select name="languages[]" id="languages" class="custom-select" multiple required>
                                        @foreach($languages as $language)
                                            <option value="{{ $language->id }}"{{ $language->code === 'en' ? ' selected' : '' }}>{{ $language->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>


                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label>Allow Comments</label>
                                    <div class="mt-2">
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" name="comments_allowed" id="commentsAllowed"
                                                   value="1" checked required>
                                            <label class="custom-control-label" for="commentsAllowed">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" name="comments_allowed" id="commentsNotAllowed" value="0">
                                            <label class="custom-control-label" for="commentsNotAllowed">No</label>
                                        </div>

                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="tags">Tags (13 Tags Remaining)</label>
                                    <input type="text" placeholder="Gaming, PS4" name="tags" id="tags" class="form-control" data-role="tagsinput" required>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="cast">Cast (Optional)</label>
                                    <input type="text" placeholder="Nathan Drake," name="cast" id="cast" class="form-control" data-role="tagsinput">
                                </div>
                            </div>

                        </div>
                        <div class="row ">
                            <div class="col-lg-12">
                                <div class="main-title">
                                    <h6>Category ( you can select upto 6 categories )</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row category-checkbox">
                            @foreach($categories as $key => $category)
                                @if($key % 5 === 0)
                                    @if($key !== 0)
                                        </div>
                                    @endif
                                    @if(!$loop->last)
                                        <div class="col-lg-2 col-xs-6 col-4">
                                    @endif
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" name="categories[]" id="{{ $category->slug }}" value="{{ $category->id }}">
                                        <label class="custom-control-label" for="{{ $category->slug }}">{{ $category->name }}</label>
                                    </div>
                                @else
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" name="categories[]" id="{{ $category->slug }}" value="{{ $category->id }}">
                                        <label class="custom-control-label" for="{{ $category->slug }}">{{ $category->name }}</label>
                                    </div>
                                    @if($loop->last)
                                        </div>
                                    @endif
                                @endif
                            @endforeach
                        </div>


                        <div class="col-lg-12 mt-4 p-0">
                            <div class="form-group">
                                <h6>Podcats Cover</h6>
                                <div class="col-sm-3 imgUp p-0">
                                    <div class="imagePreview"></div>
                                    <label class="btn btn-outline-primary mt-2">
                                        Select Image<input type="file" name="thumbnail" id="thumbnail" class="uploadFile img"
                                                           value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                           style="width: 0px;height: 0px;overflow: hidden;">
                                    </label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="osahan-area text-center mt-3">
                        <button class="btn btn-primary" id="submit_btn" disabled>Save Changes</button>
                    </div>
                </form>
                <hr>
                <div class="terms text-center">
                    <p class="mb-0"><p class="mb-0">By submitting your videos to Express My View, you acknowledge that you agree to Our Terms of Service and Community Guidelines.

Please be sure not to violate others' copyright or privacy rights.</p></p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
@endsection

@section('footer')
    <!-- Sweetalert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js" defer></script>
    <!-- jQuery Form -->
    <script src="https://malsup.github.io/jquery.form.js" defer></script>
    <!-- Select2 -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js" defer></script>
    <!-- jQuery Validation -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js" defer></script>
    <!-- Bootstrap Tags Input -->
    <script src="{{ asset('js/bootstrap-tagsinput.js') }}" defer></script>

    <script src="{{ asset('js/podcast.js') }}" defer></script>
@endsection
