<?php

namespace App\Policies;

use App\Models\Movie;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class WatchListPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    // public function addWatchList(User $user, Movie $movie)
    // {
    //     $count = Movie::join('watchlist', 'show.show_id', '=', 'watchlist.show_id')->where('show.show_id', '=', $movie->show_id)
    //         ->where('user_id', '=', $user->user_id)->count();
    //     if ($count == 0) {
    //         return true;
    //     } else {
    //         return false;
    //     }
    // }
}
