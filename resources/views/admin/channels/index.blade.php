@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Channel Management </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Channel</a></li>
                    <li class="breadcrumb-item active">Channel Management</li>
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
                                <th>User</th>
                                <th>Subscribers</th>
                                <th>Created On</th>
                                <th>Action</th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach($channels as $channel)
                                <tr>
                                    <td>{{ $channel->name }}</td>
                                    <td>{{ $channel->user->name ?: $channel->user->email }}</td>
                                    <td>{{ $channel->subscribers }}</td>
                                    <td>{{ $channel->created_at->format('d-m-Y') }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-success " type="button"
                                                    id="dropdownMenuButton" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">
                                                ...
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">View</a>
                                                <a class="dropdown-item" href="{{ route('admin.channel.edit', $channel->id) }}">Edit</a>
                                                <a class="dropdown-item delete" href="#">Delete</a>
                                                <form action="{{ route('admin.channel.destroy', $channel->id) }}" method="post" class="d-none">
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