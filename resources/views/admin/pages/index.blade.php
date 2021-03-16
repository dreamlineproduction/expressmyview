@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Manage Pages </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Pages</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">
    @include('admin.partials.alert')
    <!-- Content goes here -->

        <div class="col-xl-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">

                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped table-bordered p-0">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Slug</th>
                                <th>Last Modified</th>
                                <th>Status</th>
                                <th>Actions</th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach($pages as $page)
                                <tr>
                                    <td>{{ $page->title }}</td>
                                    <td>{{ $page->slug }}</td>
                                    <td>{{ $page->updated_at->format('l jS \of F Y h:i:s A') }}</td>
                                    <td>
                                        {!! $page->status ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">Disabled</span>' !!}
                                    </td>
                                    <td><a class="button black x-small" href="{{route('admin.page.edit', $page->id) }}"><span
                                                    class="ti-pencil"></span> Edit </a></td>
                                </tr>
                            @endforeach


                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Slug</th>
                                <th>Last Modified</th>
                                <th>Status</th>
                                <th>Actions</th>

                            </tr>
                            </tfoot>

                        </table>
                    </div>

                </div>
            </div>
        </div>


    </div>
    <!-- Orders Status widgets-->
@endsection