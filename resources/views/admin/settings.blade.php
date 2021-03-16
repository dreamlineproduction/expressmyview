@extends('admin.layouts.app')

@section('content')
    <div class="page-title">
        <div class="row">
            <div class="col-sm-6">
                <h4 class="mb-0">Settings </h4>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb pt-0 pr-0 float-left float-sm-right ">
                    <li class="breadcrumb-item"><a href="#" class="default-color">Settings</a></li>

                </ol>
            </div>
        </div>
    </div>
    <!-- widgets -->
    <div class="row">


        <div class="col-md-12 mb-30">
            <div class="card card-statistics h-100">
                <div class="card-body">
                    <h5 class="card-title">Site Settings</h5>
                    @include('admin.partials.alert')
                    <form action="{{ route('admin.settings.update') }}" method="post">
                        @csrf
                        @foreach($settings as $setting)
                            <div class="form-group">
                                <label for="site-name">{{ ucwords(str_replace('_', ' ', $setting->setting_name)) }}</label>
                                <input type="{{ $setting->type }}" class="form-control" name="setting[{{ $setting->setting_name }}]"
                                       id="{{ $setting->setting_name }}" value="{{ $setting->setting_value }}"
                                       placeholder="Enter {{ ucwords(str_replace('_', ' ', $setting->setting_name)) }}">

                            </div>
                        @endforeach

                        <button type="submit" class="btn btn-success mt-4">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders Status widgets-->
@endsection