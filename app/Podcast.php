<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Podcast extends Model
{
    public function channel() {
        return $this->belongsTo(Channel::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function license()
    {
        return $this->belongsTo(License::class);
    }

    public function languages()
    {
        return $this->belongsToMany(Language::class);
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function casts()
    {
        return $this->belongsToMany(Cast::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
