@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Change Password </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Change Password</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Change Password</h5>
                    <form action="{{ route('admin.password.update') }}" method="post">
                        <div class="form-group">
                            <label for="current-password">Current Password</label>
                            <input type="password" class="form-control" name="current_password" id="current_password"
                                   placeholder="Enter Current Password">

                        </div>
                        <div class="form-group">
                            <label for="new-password">New Password</label>
                            <input type="password" class="form-control" name="new_password" id="new_password"
                                   placeholder="Enter New Password">

                        </div>

                        <div class="form-group">
                            <label for="confirm-password">Current Password</label>
                            <input type="password" class="form-control" name="new_password_confirmation" id="new_password_confirmation"
                                   placeholder="Confirm Password">

                        </div>


                        <button type="submit" class="btn btn-success mt-4">Update Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection