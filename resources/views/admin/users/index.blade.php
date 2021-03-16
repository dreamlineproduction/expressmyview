@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Manage Users </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">User Management</a></li>
                    <li class="breadcrumb-item active">Manage Users</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">
        @include('admin.partials.alert')
        <div class="col-xl-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable" class="table table-striped table-bordered p-0">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Country</th>
                                <th>No of Channel</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($users as $user)
                                <tr>
                                    <td>{{ $user->name ?: 'N/A' }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->profile->country }}</td>
                                    <td>{{ $user->channels_count }}</td>
                                    <td>{!! $user->status == 1 ? '<label class="badge badge-success">Active</label>' : '<label class="badge badge-warning">Suspended</label>' !!}</td>
                                    <td>

                                        <div class="dropdown">
                                            <button class="btn btn-success " type="button" id="dropdownMenuButton"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                ...
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">View</a>
                                                <a class="dropdown-item" href="{{ route('admin.user.edit', $user->id) }}">Edit</a>
                                                <a class="dropdown-item delete" href="#">Delete</a>
                                                <form action="{{ route('admin.user.destroy', $user->id) }}" method="post" class="d-none">
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
    </div>
    <!-- Orders Status widgets-->
@endsection