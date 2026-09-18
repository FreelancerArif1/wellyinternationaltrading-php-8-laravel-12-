<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blogcategory extends Model
{
    protected $fillable = [
        'title',
        'link',
        'image',
        'serial',
        'status',
        'category_id',
    ];
}
