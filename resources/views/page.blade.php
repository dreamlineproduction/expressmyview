@extends('layouts.app')

@section('title')
    {{ $page->title }}
@endsection

@section('content')
    <div class="container-fluid pb-0">
        <div class="top-mobile-search">
            <div class="row">
                <div class="col-md-12">
                    <form class="mobile-search">
                        <div class="input-group">
                            <input type="text" placeholder="Search for..." class="form-control">
                            <div class="input-group-append">
                                <button type="button" class="btn btn-dark"><i class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="top-category section-padding mb-4">
            <div class="row">
            <div class="card">
            <div class="card-body">
            {!! nl2br($page->content) !!}
            </div>
            </div>


               
            </div>
        </div>
        <hr>
    </div>

@endsection
