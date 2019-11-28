<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    //

    protected $with=['artist', 'genre'];

    public function artist()
    {
        return $this->belongsTo('App\Artist');
    }

    public function genre()
    {
        return $this->belongsTo('App\Genre');
    }
}
