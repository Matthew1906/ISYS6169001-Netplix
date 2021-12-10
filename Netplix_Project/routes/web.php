<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index'])->name('show-home');

Route::get('/watchlist', [WatchListController::class, 'index'])->name('show-watchlist');
Route::get('/movie/{movie}', [MovieController::class, 'show'])->name('show-movie');

Route::get('/login', [Auth\LoginController::class, 'index'])->name('show-login');
Route::post('/login', [Auth\LoginController::class, 'login'])->name('login');

Route::get('/register', [Auth\RegisterController::class, 'index'])->name('show-register');
Route::post('/register', [Auth\RegisterController::class, 'register'])->name('register');

Route::get('/profile', [UserController::class, 'index'])->name('show-profile');

Route::middleware('auth')->group(function () {
    Route::get('/logout', [Auth\LoginController::class, 'logout'])->name('logout');
});
