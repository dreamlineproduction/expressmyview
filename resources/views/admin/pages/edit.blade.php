@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Pages Management </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="{{route('admin.page.index') }}" class="default-color">Pages</a>
                    </li>
                    <li class="breadcrumb-item active">Edit Pages</li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Edit Page</h5>
                    @include('admin.partials.alert')


                    <form action="{{ route('admin.page.update', $page->id) }}" method="post">
                        @csrf
                        @method('put')
                        <div class="form-group">
                            <label for="exampleInputEmail1">Page Title</label>
                            <input type="text" class="form-control" name="title" id="title" value="{{ $page->title }}" placeholder="Page Title here">

                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Page Slug</label>
                            <input type="text" class="form-control" name="slug" id="slug" placeholder="Page Title here"
                                   value="{{ $page->slug }}" readonly>

                        </div>

                        <div class="main-content">
                            <a id="h1_editor-markdown-02" class="anchor" href="#h1_editor-markdown-02"
                               aria-hidden="true"><span class="octicon octicon-link"></span></a>


                              
                            <textarea name="content" id="summernote"">{{ $page->content }}</textarea>
                        </div>


                        <div class="form-group">
                            <label for="page-status">Page Status</label>
                            <select class="form-control" name="status" id="page-status">
                                <option value="1"{{ $page->status == 1 ? ' checked' : '' }}>Active</option>
                                <option value="0"{{ $page->status == 0 ? ' checked' : '' }}>Disabled</option>

                            </select>
                        </div>


                        <button type="submit" class="btn btn-success mt-4">Update Page</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection