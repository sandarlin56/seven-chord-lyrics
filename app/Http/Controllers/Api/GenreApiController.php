<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Genre;
use App\Song;

class GenreApiController extends Controller
{

    public function index()
    {
        $genre = Genre::paginate(3);
        
        return response()->json($genre);
    }

    public function show($id)
    {
        $genre = Genre::where('id', $id)->first();
        $songs = Song::find($genre);
        
        
        return response()->json([
            "genre" => $genre,
            "songs" =>  $songs,  
        ]);
    }
}
