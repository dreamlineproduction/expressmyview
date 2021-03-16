<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
//    public function liveStreams()
//    {
//        return $this->hasMany(LiveStream::class);
//    }

    public function podcasts()
    {
        return $this->belongsToMany(Podcast::class);
    }
}
