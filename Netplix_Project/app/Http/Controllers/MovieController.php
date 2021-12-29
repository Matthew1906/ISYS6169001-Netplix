<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use App\Models\Cast;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Movie;
use App\Models\Review;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MovieController extends Controller
{

    public function index(Request $request)
    {

        $movies = Movie::paginate(5);

        $trendingMovies = Movie::get();
        $trendingMovies = $trendingMovies->sortBy(function ($trendSort) {
            return $trendSort->count;
        });
        $trendingMovies = $trendingMovies->reverse();

        $genres = Genre::get();

        $randomMovies = Movie::inRandomOrder()->limit(3)->get();

        $pages = Movie::count() / 5;

        if ($request->ajax() && $request->page) {
            $view = view('movie.data', compact('movies'))->render();
            return response()->json(['html' => $view]);
        } else if ($request->ajax() && $request->genre && !$request->sort) {
            if ($request->search == '') {
                $moviesGenres = Movie::join('showgenre', 'show.show_id', '=', 'showgenre.show_id')
                    ->join('genre', 'showgenre.genre_id', '=', 'genre.genre_id')
                    ->where('genre.name', $request->genre)->get();
                $view = view('movie.data', ['movies' => $moviesGenres])->render();
                return response()->json(['html' => $view]);
            } else {
                $moviesGenres = Movie::join('showgenre', 'show.show_id', '=', 'showgenre.show_id')
                    ->join('genre', 'showgenre.genre_id', '=', 'genre.genre_id')
                    ->where('genre.name', $request->genre)
                    ->where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                $view = view('movie.data', ['movies' => $moviesGenres])->render();
                return response()->json(['html' => $view]);
            }
        } else if ($request->ajax() && !$request->genre && $request->sort) {
            if ($request->search == '') {
                $moviesSort = '';
                if ($request->sort == 'Latest') {
                    $moviesSort = Movie::latest('release_date')->get();
                } else if ($request->sort == 'A-Z') {
                    $moviesSort = Movie::select('*')->orderBy('title')->get();
                } else if ($request->sort == 'Z-A') {
                    $moviesSort = Movie::select('*')->orderBy('title', 'desc')->get();
                } else if ($request->sort == 'Rating') {
                    $moviesSort = Movie::get();
                    $moviesSort = $moviesSort->sortBy(function ($currMovieSort) {
                        return $currMovieSort->rating;
                    });
                    $moviesSort = $moviesSort->reverse();
                }
                $view = view('movie.data', ['movies' => $moviesSort])->render();
                return response()->json(['html' => $view]);
            } else {
                $moviesSort = '';
                if ($request->sort == 'Latest') {
                    $moviesSort = Movie::latest('release_date')
                        ->where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                } else if ($request->sort == 'A-Z') {
                    $moviesSort = Movie::select('*')->orderBy('title')
                        ->where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                } else if ($request->sort == 'Z-A') {
                    $moviesSort = Movie::select('*')->orderBy('title', 'desc')
                        ->where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                } else if ($request->sort == 'Rating') {
                    $moviesSort = Movie::where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                    $moviesSort = $moviesSort->sortBy(function ($currMovieSort) {
                        return $currMovieSort->rating;
                    });
                    $moviesSort = $moviesSort->reverse();
                }
                $view = view('movie.data', ['movies' => $moviesSort])->render();
                return response()->json(['html' => $view]);
            }
        } else if ($request->ajax() && $request->genre && $request->sort) {
            if ($request->search == '') {
                $moviesMix = Movie::join('showgenre', 'show.show_id', '=', 'showgenre.show_id')
                    ->join('genre', 'showgenre.genre_id', '=', 'genre.genre_id')
                    ->where('genre.name', $request->genre);
                if ($request->sort == 'Latest') {
                    $moviesMix = $moviesMix->orderBy('release_date', 'desc')->get();
                } else if ($request->sort == 'A-Z') {
                    $moviesMix = $moviesMix->orderBy('title')->get();
                } else if ($request->sort == 'Z-A') {
                    $moviesMix = $moviesMix->orderBy('title', 'desc')->get();
                } else if ($request->sort == 'Rating') {
                    $moviesMix = $moviesMix->get();
                    $moviesMix = $moviesMix->sortBy(function ($currMovieSort) {
                        return $currMovieSort->rating;
                    });
                    $moviesMix = $moviesMix->reverse();
                };
                $view = view('movie.data', ['movies' => $moviesMix])->render();
                return response()->json(['html' => $view]);
            } else {
                $moviesMix = Movie::join('showgenre', 'show.show_id', '=', 'showgenre.show_id')
                    ->join('genre', 'showgenre.genre_id', '=', 'genre.genre_id')
                    ->where('genre.name', $request->genre)
                    ->where('show.title', 'LIKE', '%' . $request->search . '%');
                if ($request->sort == 'Latest') {
                    $moviesMix = $moviesMix->orderBy('release_date', 'desc')->get();
                } else if ($request->sort == 'A-Z') {
                    $moviesMix = $moviesMix->orderBy('title')->get();
                } else if ($request->sort == 'Z-A') {
                    $moviesMix = $moviesMix->orderBy('title', 'desc')->get();
                } else if ($request->sort == 'Rating') {
                    $moviesMix = $moviesMix->get();
                    $moviesMix = $moviesMix->sortBy(function ($currMovieSort) {
                        return $currMovieSort->rating;
                    });
                    $moviesMix = $moviesMix->reverse();
                };
                $view = view('movie.data', ['movies' => $moviesMix])->render();
                return response()->json(['html' => $view]);
            }
        } else if ($request->ajax() && !$request->genre && !$request->sort) {
            if ($request->search == '') {
                $moviesGenres = Movie::get();
                $view = view('movie.data', ['movies' => $moviesGenres])->render();
                return response()->json(['html' => $view]);
            } else {
                $moviesGenres = Movie::where('show.title', 'LIKE', '%' . $request->search . '%')->get();
                $view = view('movie.data', ['movies' => $moviesGenres])->render();
                return response()->json(['html' => $view]);
            }
        }

        return view('movie.index', compact('movies', 'trendingMovies', 'genres', 'randomMovies', 'pages'));
    }

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

    public function create()
    {
        $this->authorize('addMovie');
        $movie = new Movie();
        $categories = Category::get();
        $genres = Genre::get();
        $actors = Actor::get();
        return view('movie.create', compact('movie', 'categories', 'genres', 'actors'));
    }

    public function store(Request $request)
    {
        $this->authorize('addMovie');

        $attr = $request->validate([
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'category' => 'required',
            'genres' => 'array|required',
            'actors' => 'array|required',
            'characters' => 'array|required',
            'director' => 'required|min:3',
            'release_date' => 'required',
            'image_url' => 'required',
            'bg_url' => 'required'
        ]);

        $attr['category_id'] = $attr['category'];
        $countMovie = Movie::count() + 1;
        $attr['show_id'] = 'SHW';

        if ($countMovie < 10) {
            $attr['show_id'] .= (string)'00';
        } else if ($countMovie < 100) {
            $attr['show_id'] .= (string)'0';
        }
        $attr['show_id'] .= $countMovie;

        $characters = $request->characters;
        $actors = $request->actors;

        $movie = Movie::create($attr);

        // $movie->actors()->attach(request('actors'), ['character_name' => $characters]);
        for ($i = 0; $i < count($characters); $i++) {
            Cast::create(['character_name' => $characters[$i], 'show_id' => $attr['show_id'], 'actor_id' => $actors[$i]]);
        }

        $movie->genres()->attach(request('genres'));
        return redirect('/')->with('success-info', 'Add Movie Successfully');
    }

    public function edit(Movie $movie)
    {
        $this->authorize('editMovie');

        $categories = Category::get();
        $genres = Genre::get();
        $actors = Actor::get();

        return view('movie.edit', compact('movie', 'categories', 'genres', 'actors'));
    }

    public function update(Request $request, Movie $movie)
    {
        $this->authorize('editMovie');

        $attr = $request->validate([
            'title' => 'required|min:2|max:50',
            'description' => 'required|min:8',
            'category' => 'required',
            'genres' => 'array|required',
            'actors' => 'array|required',
            'characters' => 'array|required',
            'director' => 'required|min:3',
            'release_date' => 'required',
            'image_url' => 'required',
            'bg_url' => 'required'
        ]);

        $attr['category_id'] = $attr['category'];
        $characters = $request->characters;
        $actors = $request->actors;
        $movie->update($attr);

        Cast::where('show_id', $movie->show_id)->delete();

        for ($i = 0; $i < count($request->characters); $i++) {
            Cast::create(['character_name' => $characters[$i], 'show_id' => $movie->show_id, 'actor_id' => $actors[$i]]);
        }
        $movie->genres()->sync(request('genres'));

        return redirect('/')->with('success-info', 'Update Movie Successfully');
    }

    public function destroy(Movie $movie)
    {
        $this->authorize('editMovie');

        Cast::where('show_id', $movie->show_id)->delete();
        Review::where('show_id', $movie->show_id)->delete();
        $movie->genres()->detach();
        $movie->delete();
        return redirect('/')->with('success-info', 'Delete Movie Successfully');
    }
}
