<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Artist;
use App\Song;


class ArtistApiController extends Controller
{

    public function index()
    {
        $artist = Artist::paginate(1);
        
        return response()->json($artist);
    }

    public function show($id)
    {
        $artist= Artist::find($id);
        dd($artist);
        $songs = Song::where('id', $id)->first();
        
        return response()->json([
            "artist" => $artist,
            "songs" =>  $songs,  
        ]);
    }
}
