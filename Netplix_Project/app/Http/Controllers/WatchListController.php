<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WatchListController extends Controller
{
    public function index()
    {
        return view('watchlists.index');
    }
}
