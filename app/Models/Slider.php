<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = [
        'title',
        'description',
        'button_link',
        'youtube_video',
        'image',
        'company_logo',
        'video',
        'slier_for',
        'serial',
        'status',
        'right_title_1',
        'right_description_1',
        'right_title_2',
        'right_description_2',
    ];
}
