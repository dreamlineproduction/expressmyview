<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function liveStreams()
    {
        return $this->belongsToMany(LiveStream::class);
    }

    public function videos()
    {
        return $this->belongsToMany(Podcast::class);
    }
}
