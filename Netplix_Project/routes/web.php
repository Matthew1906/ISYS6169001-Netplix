<?php

namespace App\Http\Controllers;

use App\Http\Middleware\AuthorizeAdministrator;
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


// Route::post('/api/addWatchlist/{movie:show_id}', [WatchListController::class, 'store'])->name('store-watchlist');
// Route::delete('/api/addWatchlist/{movie:show_id}', [WatchListController::class, 'destroy'])->name('delete-watchlist');

Route::get('/', [MovieController::class, 'index'])->name('show-home');

Route::prefix('/login')->group(function () {
    Route::get('/', [Auth\LoginController::class, 'index'])->name('show-login');
    Route::post('/', [Auth\LoginController::class, 'login'])->name('login');
});

Route::prefix('/register')->group(function () {
    Route::get('/', [Auth\RegisterController::class, 'index'])->name('show-register');
    Route::post('/', [Auth\RegisterController::class, 'register'])->name('register');
});

Route::prefix('/api/addWatchlist')->middleware('auth')->group(function () {
    Route::post('/{movie:show_id}', [WatchListController::class, 'store'])->name('store-watchlist');
    Route::delete('/{movie:show_id}', [WatchListController::class, 'destroy'])->name('delete-watchlist');
});

Route::prefix('/movie')->middleware([AuthorizeAdministrator::class])->group(function () {
    Route::get('/create', [MovieController::class, 'create'])->name('create-movie');
    Route::post('/create', [MovieController::class, 'store'])->name('store-movie');
    Route::get('/edit/{movie:show_id}', [MovieController::class, 'edit'])->name('edit-movie');
    Route::put('/edit/{movie:show_id}', [MovieController::class, 'update'])->name("update-movie");
    Route::get('/{movie:show_id}', [MovieController::class, 'show'])->name('show-movie')->withoutMiddleware([AuthorizeAdministrator::class]);
    Route::delete('/{movie:show_id}', [MovieController::class, 'destroy'])->name('delete-movie');
});

Route::prefix('/profile')->middleware('auth')->group(function () {
    Route::get('/', [UserController::class, 'index'])->name('show-profile');
    Route::put('/', [UserController::class, 'update'])->name('update-profile');
});

Route::prefix('/review')->middleware('auth')->group(function () {
    Route::post('/{movie:show_id}', [ReviewController::class, 'store'])->name('store-review');
    Route::delete('/{show_id}/{user_id}', [ReviewController::class, 'destroy'])->name('delete-review');
});

Route::prefix('/watchlist')->middleware('auth')->group(function () {
    Route::get('/', [WatchListController::class, 'index'])->name('show-watchlist');
    Route::post('/{movie:show_id}/{page}', [WatchListController::class, 'action'])->name('action-watchlist');
});

Route::prefix('/actor')->middleware([AuthorizeAdministrator::class])->group(function () {
    Route::get('/', [ActorController::class, 'index'])->name('show-actor')->withoutMiddleware([AuthorizeAdministrator::class]);
    Route::get('/create', [ActorController::class, 'create'])->name('create-actor');
    Route::post('/create', [ActorController::class, 'store'])->name('store-actor');
    Route::get('/edit/{actor:actor_id}', [ActorController::class, 'edit'])->name('edit-actor');
    Route::put('/edit/{actor:actor_id}', [ActorController::class, 'update'])->name('update-actor');
    Route::get("/{actor:actor_id}", [ActorController::class, 'show'])->name('show-actor-detail')->withoutMiddleware([AuthorizeAdministrator::class]);
    Route::delete('/{actor:actor_id}', [ActorController::class, 'destroy'])->name('delete-actor');
});

Route::get('/logout', [Auth\LoginController::class, 'logout'])->name('logout')->middleware('auth');
