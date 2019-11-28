<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    //

    protected $with=['artist', 'album', 'genre'];

    public function artist()
    {
        return $this->belongsTo('App\Artist');
    }

    public function album()
    {
        return $this->belongsTo('App\Album');
    }

    public function genre()
    {
        return $this->belongsTo('App\Genre');
    }
}
