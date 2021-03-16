@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">{{ $heading }} </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Podcasts</a></li>
                    <li class="breadcrumb-item active">{{ $heading }}</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">
        <div class="col-xl-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped table-bordered p-0">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>View</th>
                                <th>Category</th>
                                <th>Channel</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($podcasts as $podcast)
                            <tr>
                                <td>#{{ $podcast->id }}</td>
                                <td>{{ $podcast->title }}</td>
                                <td>{{ $podcast->views }}</td>
                                <td>{{ implode(', ', $podcast->categories()->pluck('name')->toArray()) }}</td>
                                <td>{{ $podcast->channel->name }}</td>
                                <td align="right">
                                    <div class="dropdown">
                                        <button class="btn btn-success " type="button"
                                                id="dropdownMenuButton" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false">
                                            ...
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">View</a>
                                            <a class="dropdown-item" href="{{ route('admin.podcast.edit', $podcast->id) }}">Edit</a>
                                            <a class="dropdown-item delete" href="#">Delete</a>
                                            <form action="{{ route('admin.podcast.destroy', $podcast->id) }}" method="post" class="d-none">
                                                @csrf
                                                @method('delete')
                                            </form>
                                        </div>
                                    </div>

                                </td>
                            </tr>
                            @endforeach
                            </tfoot>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection