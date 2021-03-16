<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    public function videos()
    {
        return $this->belongsToMany(Podcast::class);
    }
}
