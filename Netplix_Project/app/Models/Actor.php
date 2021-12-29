<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actor extends Model
{
    use HasFactory;
    protected $table = 'actor';
    protected $fillable = ['actor_id', 'name', 'image_url'];
    protected $primaryKey = 'actor_id';
    public $incrementing = false;

    public $timestamps = false;

    public function movies()
    {
        return $this->belongsToMany(Movie::class, 'cast', 'actor_id', 'show_id', 'actor_id', 'show_id')->withPivot('actor_id', 'character_name');
    }

    public function getCharacterAttribute()
    {
        $cast = Cast::where('actor_id', $this->actor_id)->where('show_id', $this->show_id)->first();
        return $cast->character_name;
    }

    public function getMovieNameAttribute()
    {
        $movies = $this->movies;
        $movieTitle = [];
        foreach ($movies as $movie) {
            array_push($movieTitle, $movie->title);
        }
        $str = implode(' , ', $movieTitle);
        return $str;
    }

    public function filter($show_id)
    {
        $this->show_id = $show_id;
        return $this;
    }
}
