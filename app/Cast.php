<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cast extends Model
{
    public function videos()
    {
        return $this->belongsToMany(Podcast::class);
    }
}
