@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Categories </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Categories</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">
        <div class="col-md-12">
            @include('admin.partials.alert')
        </div>
        <div class="col-md-6 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <div class="table-responsive mt-15">
                        <table id="datatable" class="table table-striped table-bordered p-0">
                            <thead>
                            <tr class="text-dark">
                                <th>Category Name</th>
                                <th>Slug</th>
                                <th>Status</th>
                                <th>Action</th>

                            </tr>
                            </thead>
                            <tbody>

                            @foreach($categories as $category)
                                <tr>
                                    <td>{{ $category->name }}</td>
                                    <td>{{ $category->slug }}</td>
                                    <td>{!! $category->status ? '<label class="badge badge-success">Active</label>' : '<label class="badge badge-danger">Inactive</label>' !!}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-success " type="button"
                                                    id="dropdownMenuButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                ...
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                                                <a class="dropdown-item edit" href="{{ route('admin.category.update', $category->id) }}">Edit</a>
                                                <a class="dropdown-item delete" href="#">Delete</a>
                                                <form action="{{ route('admin.category.destroy', $category->id) }}" method="post" class="d-none">
                                                    @csrf
                                                    @method('delete')
                                                </form>
                                            </div>
                                        </div>

                                    </td>

                                </tr>
                            @endforeach


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Create New Category</h5>
                    <form action="{{ route('admin.category.store') }}" method="post" id="category_form">
                        @csrf
                        <div class="form-group">
                            <label for="category-name">Category Name</label>
                            <input type="text" class="form-control" name="name" id="name"
                                   placeholder="Enter Category Name">

                        </div>
                        {{--<div class="form-group">
                            <label for="category-slug">Slug</label>
                            <input type="text" class="form-control" name="slug" id="slug"
                                   placeholder="Enter Category Slug" readonly>
                        </div>--}}
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" name="active" id="active">
                            <label class="custom-control-label" for="active">Active</label>
                        </div>
                        <button type="submit" class="btn btn-success mt-4">Submit</button>
                        <button type="reset" class="btn btn-secondary mt-4 ml-4" id="clear_form">Clear</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection

@section('footer')
    <script>
        $(function () {
            $('.edit').click(function (e) {
                e.preventDefault();
                e.stopPropagation();

                var $this = $(this);
                var categoryData = $this.closest('tr').find('td');

                var $categoryForm = $('#category_form');
                $categoryForm.attr('action', $this.attr('href'));
                $('<input>').attr({
                    name: '_method',
                    id: '_method',
                    type: 'hidden',
                    value: 'put'
                }).appendTo($categoryForm);

                $('#name').val($(categoryData[0]).text());
                $('#slug').val($(categoryData[1]).text());
                $('#active').prop('checked', $(categoryData[2]).find('label').hasClass('badge-success'));

            });

            $('#clear_form').click(function () {
                $(this).closest('form').attr('action', '{{ route('admin.category.store') }}');
                $('#_method').remove();
            });
        });
    </script>
@endsection