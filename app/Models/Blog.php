<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = [
        'title',
        'short_description',
        'description',
        'image',
        'serial',
        'views',
        'created_by',
        'comments',
        'status',
        'slug',
    ];
}
