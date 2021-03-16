<style>
.bootstrap-tagsinput .tag {
    margin-right: 2px;
    color: white;
	background: #000;
	font-size: 12px;
}

</style>

@extends('admin.layouts.app')

@section('header')
    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet"/>
    <!-- Bootstrap Tags Input -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap-tagsinput.css') }}">
@endsection

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Podcasts Management </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Edit Podcast</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Edit Podcast</h5>
                    @include('admin.partials.alert')
                    <form action="{{ route('admin.podcast.update', $podcast->id) }}" method="post">
                        @csrf
                        @method('put')
                        <div class="form-group">
                            <label for="channel">Channel</label>
                            <select name="channel" id="channel" class="custom-select" required>
                                @foreach($channels as $channel)
                                    <option value="{{ $channel->id }}"{{ $channel->id == $podcast->channel_id ? ' selected' : '' }}>{{ $channel->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="title">Podcast Title</label>
                            <input type="text"
                                   placeholder="Contrary to popular belief, Lorem Ipsum (2019) is not."
                                   name="title" id="title" value="{{ $podcast->title }}" class="form-control"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="description">About Podcast</label>
                            <textarea rows="8" id="description" name="description" class="form-control"
                                      placeholder="A short description about the podcast"
                                      required>{{ $podcast->description }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="privacy">Privacy Settings</label>
                            <select name="privacy" id="privacy" class="custom-select" required>
                                <option value="1"{{ $podcast->privacy == 1 ? ' selected' : '' }}>Public</option>
                                <option value="0"{{ $podcast->privacy == 0 ? ' selected' : '' }}>Private</option>

                            </select>
                        </div>

                        <div class="form-group">
                            <label for="license">License</label>
                            <select name="license" id="license" class="custom-select" required>
                                @foreach($licenses as $license)
                                    <option value="{{ $license->id }}"{{ $podcast->license_id == $license->id ? ' selected' : '' }}>{{ $license->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        <div class="form-group">
                            <label for="languages">Language in Video (Optional)</label>
                            <select name="languages[]" id="languages" class="custom-select" multiple required>
                                @foreach($languages as $language)
                                    <option value="{{ $language->id }}"{{ $language->code === 'en' ? ' selected' : '' }}>{{ $language->name }}</option>
                                @endforeach
                            </select>
                        </div>


                        <div class="form-group">
                            <label>Allow Comments</label>
                            <div class="mt-2">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" class="custom-control-input" name="comments_allowed"
                                           id="commentsAllowed"
                                           value="1"
                                           {{ $podcast->comments_allowed == 1 ? 'checked ' : '' }}required>
                                    <label class="custom-control-label" for="commentsAllowed">Yes</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" class="custom-control-input" name="comments_allowed"
                                           id="commentsNotAllowed"
                                           value="0" {{ $podcast->comments_allowed == 0 ? 'checked ' : '' }}>
                                    <label class="custom-control-label" for="commentsNotAllowed">No</label>
                                </div>

                            </div>
                        </div>


                        <div class="form-group tags-pod">
                            <label for="tags">Tags (13 Tags Remaining)</label>
                            <input type="text" placeholder="Gaming, PS4" name="tags" id="tags"
                                   value="{{ implode(',', $tags) }}" class="form-control" data-role="tagsinput"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="cast">Cast (Optional)</label>
                            <input type="text" value="{{ implode(',', $casts) }}" placeholder="Nathan Drake,"
                                   name="cast" id="cast" class="form-control" data-role="tagsinput">
                        </div>

                        <div class="main-title">
                            <h6>Category ( you can select upto 6 categories )</h6>
                        </div>
                        @foreach($categories as $key => $category)
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" name="categories[]"
                                       id="{{ $category->slug }}"
                                       value="{{ $category->id }}"{{ in_array($category->id, $selectedCategories) ? ' checked' : '' }}>
                                <label class="custom-control-label"
                                       for="{{ $category->slug }}">{{ $category->name }}</label>
                            </div>
                        @endforeach


                        <div class="form-group mt-4">
                            <h6>Podcats Cover</h6>
                            <div class="col-sm-3 imgUp p-0">
                                <div class="imagePreview img-fluid admin-podcast-img"
                                     style="background-image: url('{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}')"></div>
                                <label class="btn btn-outline-primary mt-2">
                                    Select Image<input type="file" name="thumbnail" id="thumbnail"
                                                       class="uploadFile img"
                                                       value="Upload Photo" accept="image/jpeg,image/png,image/bmp"
                                                       style="width: 0px;height: 0px;overflow: hidden;">
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="checkbox checbox-switch switch-danger">
                                <label>
                                    <input type="checkbox" name="status" value="yes" {{ $podcast->status == 1 ? 'checked' : '' }} />
                                    <span></span>
                                    Podcast Active?
                                </label>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success mt-4">Update Podcast</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('footer')
    <!-- jQuery Form -->
    <script src="https://malsup.github.io/jquery.form.js"></script>
    <!-- Select2 -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
    <!-- Bootstrap Tags Input -->
    <script src="{{ asset('js/bootstrap-tagsinput.js') }}"></script>

    <script>
        $(function () {
            $('#languages').select2();

            $('#thumbnail').change(function () {
                var uploadFile = $(this);
                var files = !!this.files ? this.files : [];
                if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

                if (/^image/.test(files[0].type)) { // only image file
                    var reader = new FileReader(); // instance of the FileReader
                    reader.readAsDataURL(files[0]); // read the local file

                    reader.onloadend = function () { // set image data as background of div
                        //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                        uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
                    }
                }
            });

            var categories = $('input[name="categories[]"]')
            categories.click(function () {
                var checked = categories.filter(':checked');
                if (checked.length >= 6) {
                    categories.each(function () {
                        if (!$(this).is(':checked')) {
                            $(this).prop('disabled', true);
                        }
                    });
                } else {
                    categories.each(function () {
                        if (!$(this).is(':checked')) {
                            $(this).prop('disabled', false);
                        }
                    });
                }
            });
        });
    </script>
@endsection