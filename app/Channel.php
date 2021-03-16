<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function podcasts()
    {
        return $this->hasMany(Podcast::class);
    }

    public function subscribersCount()
    {
        return $this->subscribers;
    }
}
