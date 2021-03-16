@extends('layouts.app')

@section('title')
    {{ $title }}
@endsection

@section('content')
    <div class="container-fluid pb-0">
        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-title">

                        <h6>Search Result of {{ $query }}</h6>

						<div class="search-filter">
                        <button class="collapsible"><i class="fas fa-sliders-h"></i> Filters</button>
						<div class="content mt-2 mb-5 card">
<div class="row  mt-3 mb-3 card-body">
                    
                    

                        {{-- Search For --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <span class="text-dark">Search For:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="type" class="search-option" {{ (!$type || $type == 'podcast') ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['type' => 'podcast'])) }}">
                                        Podcast</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="type" class="search-option" {{ $type == 'channel' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['type' => 'channel'])) }}">
                                        Channel</a>
                                </div>
                            </div>
                        </div>

                        {{-- Category --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12">
                                   <span class="text-dark">Category:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="category" class="search-option" {{ !$selectedCategory ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(Arr::except(request()->all(), ['category'])) }}">
                                        Any</a>
                                </div>
                                @foreach($categories as $category)
                                    <div class="col-md-12  mb-2">
                                        <input type="radio" name="category" class="search-option" {{ ($selectedCategory && $selectedCategory == $category->id) ? 'checked' : '' }}>
                                        <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['category' => $category->slug])) }}"> {{ $category->name }}</a>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        {{-- Upload date --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12">
                                    <span class="text-dark">Upload Date:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ !$uploaded ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(Arr::except(request()->all(), ['uploaded'])) }}">
                                        Any</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ $uploaded == 'this-year' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['uploaded' => 'this-year'])) }}">
                                        This Year</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ $uploaded == 'this-month' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['uploaded' => 'this-month'])) }}">
                                        This Month</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ $uploaded == 'this-week' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['uploaded' => 'this-week'])) }}">
                                        This Week</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ $uploaded == 'today' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['uploaded' => 'today'])) }}">
                                        Today</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="uploaded" class="search-option" {{ $uploaded == 'last-hour' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['uploaded' => 'last-hour'])) }}">
                                        Last Hour</a>
                                </div>
                            </div>
                        </div>

                        {{-- Duration --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12  mb-2">
                                    <span class="text-dark">Duration:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="duration" class="search-option" {{ !$duration ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(Arr::except(request()->all(), ['duration'])) }}">
                                        Any</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="duration" class="search-option" {{ $duration == 'short' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['duration' => 'short'])) }}">
                                        Short (&lt; 4 minutes)</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="duration" class="search-option" {{ $duration == 'medium' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['duration' => 'medium'])) }}">
                                        Medium (4 to 20 minutes)</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="duration" class="search-option" {{ $duration == 'long' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['duration' => 'long'])) }}">
                                        Long (&gt; 20 minutes)</a>
                                </div>
                            </div>
                        </div>

                        {{-- License --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12">
                                    <span class="text-dark">License:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="license" class="search-option" {{ !$selectedLicense ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(Arr::except(request()->all(), ['license'])) }}">
                                        Any</a>
                                </div>
                                @foreach($licenses as $license)
                                    <div class="col-md-12  mb-2">
                                        <input type="radio" name="license" class="search-option" {{ ($selectedLicense && $selectedLicense == $license->id) ? 'checked' : '' }}>
                                        <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['license' => urlencode($license->short_name)])) }}">
                                            {{ $license->short_name }}</a>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                        {{-- Sort By --}}
                        <div class="col-md-2">
                            <div class="row">
                                <div class="col-md-12">
                                    <span class="text-dark">Sort By:</span>
									<hr>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ (!$orderBy || $orderBy == 'relevance') ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(Arr::except(request()->all(), ['order-by'])) }}">
                                        Relevance</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'upload-date' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'upload-date'])) }}">
                                        Uploaded On</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'most-popular' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'most-popular'])) }}">
                                        Most Popular</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'most-liked' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'most-liked'])) }}">
                                        Most Liked</a>
                                </div>
                                <div class="col-md-12  mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'longest' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'longest'])) }}">
                                        Longest</a>
                                </div>
                                <div class="col-md-12 mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'shortest' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'shortest'])) }}">
                                        Shortest</a>
                                </div>
                                <div class="col-md-12 mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'title-asc' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'title-asc'])) }}">
                                        Title (A-Z)</a>
                                </div>
                                <div class="col-md-12 mb-2">
                                    <input type="radio" name="order-by" class="search-option" {{ $orderBy == 'title-desc' ? 'checked' : '' }}>
                                    <a href="{{ url()->current() . '?' . http_build_query(array_merge(request()->all(), ['order-by' => 'title-desc'])) }}">
                                        Title (Z-A)</a>
                                </div>
                            </div>
                        </div>

                   
                </div>
</div>
						</div>
						
                    </div>
                </div>
               

                @forelse($podcasts as $podcast)
                    <div class="col-xl-3 col-sm-6 mb-3">
                        <div class="video-card">
                            <div class="video-card-image">
                                <a class="play-icon" href="#"><i class="fas fa-play-circle"></i></a>
                                <a href="{{ route('podcast.show', $podcast->id) }}"><img class="img-fluid"
                                                                                         src="{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $podcast->thumbnail) }}"
                                                                                         alt=""></a>
                                <div class="time">{{ $podcast->runtime_formatted }}</div>
                            </div>
                            <div class="video-card-body">
                                <div class="video-title">
                                    <a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->title }}</a>
                                </div>
                                <div class="video-page text-success">
                                    <a href="{{ route('channel.show', $podcast->channel->id) }}">{{ $podcast->channel->name }}</a>
                                    @if($podcast->channel->verified == 1)
                                        <a title="Verified" data-placement="top" data-toggle="tooltip" href="#"
                                           data-original-title="Verified"><i
                                                    class="fas fa-check-circle text-success"></i></a>
                                    @endif
                                </div>
                                <div class="video-view">
                                    {{ formatViewsCount($podcast->views) }} views &nbsp;<i
                                            class="fas fa-calendar-alt"></i> {{ $podcast->created_at->diffForHumans() }}
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    
                <div class="col-md-12 text-center mb-5">
               <h5> No results found. Try again with a different keyword or try removing some filters.</h5>
                </div>
                @endforelse

            </div>
        </div>


        {{ $podcasts->appends(request()->input())->links() }}

    </div>
@endsection

@section('footer')
    <script src="{{ asset('js/search.js') }}" defer></script>
  
        <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>

@endsection