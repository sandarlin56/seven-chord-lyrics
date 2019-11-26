<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Album;
use App\Song;

class AlbumApiController extends Controller
{

    public function index()
   {
        $albums = Album::paginate(5);
        
        return response()->json($albums);
    }

    public function show($id)
    {
        
        $album = Album::find($id);
        $songs = Song::where('album_id', $id)->all();
        
        return response()->json([
            "album" => $album,
            "songs" =>  $songs,  
        ]);
    }
}
