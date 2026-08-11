<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model
{
    protected $fillable = [
        'title',
        'button_text',
        'button_link',
        'short_description',
        'description',
        'image',
        'video',
        'serial',
        'status',
        'slug',
        'slier_for',
    ];
}
