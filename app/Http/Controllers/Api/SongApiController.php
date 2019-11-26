<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Song;

class SongApiController extends Controller
{

    public function index()
    {
        $songs = Song::paginate(15);
        
        return response()->json($songs);
    }

    public function show($id)
    {
        $song = Song::find($id);
        dd($song);
        return response()->json($song);
    }
   }
