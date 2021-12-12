<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;
    protected $table = 'show';
    protected $dates = [
        'release_date'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'category_id');
    }

    public function getRatingAttribute()
    {
        $reviews = Review::where('show_id', $this->show_id)->get();
        $count = $reviews->count();
        if ($count == 0) {
            return 0;
        }
        $total = 0;
        foreach ($reviews as $review) {
            $total += $review->rating;
        }
        return $total / $count;
    }
}
