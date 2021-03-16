@if(session('success-msg'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success-msg') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times</span>
        </button>
    </div>
@endif

@if(session('error-msg'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {{ session('error-msg') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times</span>
        </button>
    </div>
@endif

@if($errors->any())
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <ul>
        @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
        </ul>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times</span>
        </button>
    </div>
@endif