<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cast extends Model
{
    use HasFactory;
    protected $table = 'cast';
    public $timestamps = false;
    protected $fillable = ['show_id', 'actor_id', 'character_name'];
}
