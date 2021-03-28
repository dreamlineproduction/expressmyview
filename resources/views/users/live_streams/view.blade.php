@extends('layouts.app')

@section('title')
Streaming Now - {{ $stream->title }}
@endsection

@section('header')
<!-- Fluid Player -->
<!-- <link rel="stylesheet" href="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.css" type="text/css" /> -->

<!-- Emoji Set -->
<link href="https://emoji-css.afeld.me/emoji.css" rel="stylesheet">
<link href="{{ asset('css/spinkit.css') }}" rel="stylesheet" type="text/css">


@endsection

@section('content')
<div class="container-fluid pb-0">
  <div class="video-block section-padding">
    <div class="row">
      <div class="col-md-8">
        @if(!empty($stream))
        <video id="recorded_video">
        </video>
        @endif
      </div>
    </div>
    </div>
</div>
@endsection

@section('footer')
<!-- Fluid Player -->
<script src="https://cdn.fluidplayer.com/v3/current/fluidplayer.min.js" defer></script>
<!-- <script src="{{ asset('js/clipboard.js') }}"></script> -->
<script src="{{ asset('js/view.js') }}"></script>
<script>
var channelname = "{{ $stream->channelname }}";
var ownerID = "{{ $stream->user_id }}";
var streamid = "{{ $stream->id }}";
var thumbnailurl = "{{ Storage::disk('s3')->url('public/podcast/thumbnail/' . $stream->thumbnail) }}"
var dd = "{{ $cloud_recordings }}";
var cloudRecordingDetails = JSON.parse(dd.replaceAll('&quot;','"'));
</script>
@endsection
