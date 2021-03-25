@extends('layouts.app')

@section('title')
    Edit livestream details
@endsection

@section('header')
    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet"/>
    <!-- Bootstrap Tags Input -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection

@section('content')
    <div class="container-fluid upload-details">

        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h6>Upload Details</h6>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="imgplace"
                     style="background-image: url('{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}')"></div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <form action="{{ route('live-stream.update', $stream->id) }}" method="post" id="podcast_details">
                    @csrf
                    @method('put')
                    <div class="osahan-form">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="channel">Channel</label>
                                    <select name="channel" id="channel" class="form-control" required>
                                        @foreach($channels as $channel)
                                            <option value="{{ $channel->id }}"{{ $channel->id == $stream->channel_id ? ' selected' : '' }}>{{ $channel->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="title">LiveStream Title</label>
                                    <input type="text"
                                           placeholder="Contrary to popular belief, Lorem Ipsum (2019) is not."
                                           name="title" id="title" value="{{ $stream->title }}" class="form-control"
                                           required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="description">About LiveStream</label>
                                    <textarea rows="8" id="description" name="description" class="form-control"
                                              placeholder="A short description about the podcast"
                                              required>{{ $stream->description }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="privacy">Privacy Settings</label>
                                    <select name="privacy" id="privacy" class="custom-select" required>
                                        <option value="1"{{ $stream->privacy == 1 ? ' selected' : '' }}>Public</option>
                                        <option value="0"{{ $stream->privacy == 0 ? ' selected' : '' }}>Private</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="license">License</label> <a href="JavaScript:void(0)"><i
                                                class="fas fa-question-circle"></i></a>
                                    <select name="license" id="license" class="custom-select" required>
                                        @foreach($licenses as $license)
                                            <option value="{{ $license->id }}"{{ $stream->license_id == $license->id ? ' selected' : '' }}>{{ $license->name }}</option>
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
                                            <input type="radio" class="custom-control-input" name="comments_allowed"
                                                   id="commentsAllowed"
                                                   value="1"
                                                   {{ $stream->comments_allowed == 1 ? 'checked ' : '' }}required>
                                            <label class="custom-control-label" for="commentsAllowed">Yes</label>
                                        </div>
                                        <div class="custom-control custom-radio custom-control-inline">
                                            <input type="radio" class="custom-control-input" name="comments_allowed"
                                                   id="commentsNotAllowed"
                                                   value="0" {{ $stream->comments_allowed == 0 ? 'checked ' : '' }}>
                                            <label class="custom-control-label" for="commentsNotAllowed">No</label>
                                        </div>

                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="form-group">
                                    <label for="tags">Tags (13 Tags Remaining)</label>
                                    <input type="text" placeholder="Gaming, PS4" name="tags" id="tags"
                                           value="{{ implode(',', $tags) }}" class="form-control" data-role="tagsinput">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="cast">Cast (Optional)</label>
                                    <input type="text" value="{{ implode(',', $casts) }}" placeholder="Nathan Drake,"
                                           name="cast" id="cast" class="form-control" data-role="tagsinput">
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
                                        <input type="checkbox" class="custom-control-input" name="categories[]"
                                               id="{{ $category->slug }}"
                                               value="{{ $category->id }}"{{ in_array($category->id, $selectedCategories) ? ' checked' : '' }}>
                                        <label class="custom-control-label"
                                               for="{{ $category->slug }}">{{ $category->name }}</label>
                                    </div>
                                @else
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" name="categories[]"
                                               id="{{ $category->slug }}"
                                               value="{{ $category->id }}"{{ in_array($category->id, $selectedCategories) ? ' checked' : '' }}>
                                        <label class="custom-control-label"
                                               for="{{ $category->slug }}">{{ $category->name }}</label>
                                    </div>
                                    @if($loop->last)
                                        </div>
                                    @endif
                                @endif
                        @endforeach
                    </div>


                    <div class="col-lg-12 mt-4 p-0">
                        <div class="form-group">
                            <h6>Livestream Cover</h6>
                            <div class="col-sm-3 imgUp p-0">
                                <div class="imagePreview"
                                     style="background-image: url('{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}')"></div>
                                <label class="btn btn-outline-primary mt-2">
                                    Select Image<input type="file" name="thumbnail" id="thumbnail"
                                                       class="uploadFile img"
                                                       value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                       style="width: 0px;height: 0px;overflow: hidden;">
                                </label>
                            </div>
                        </div>
                    </div>


                    <div class="osahan-area text-center mt-3">
                        <button class="btn btn-primary" id="submit_btn">Save Changes</button>
                    </div>
                </form>
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

    <script src="{{ asset('js/live-streams.js') }}" defer></script>
@endsection