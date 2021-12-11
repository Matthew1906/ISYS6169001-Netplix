<?php

namespace App\Http\Controllers;

use App\Models\Cast;
use App\Models\Movie;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MovieController extends Controller
{
    public function show(Movie $movie)
    {
        $genres = DB::table('showgenre')
            ->join('genre', 'showgenre.genre_id', '=', 'genre.genre_id')
            ->where('show_id', $movie->show_id)->get();

        $actors = DB::table('show')
            ->join('cast', 'show.show_id', '=', 'cast.show_id')
            ->join('actor', 'cast.actor_id', '=', 'actor.actor_id')
            ->where('show.show_id', $movie->show_id)->get();

        $reviews = Review::where('show_id', $movie->show_id)->get();

        $movies = Movie::get();

        return view('movie.show', compact('movie', 'actors', 'genres', 'reviews', 'movies'));
    }
}
