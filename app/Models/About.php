<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    protected $fillable = [
        'baner_title',
        'baner_description',
        'baner_image',
        'baner_video',

        'story_title',
        'story_description',
        'story_image',
        'story_background',
        'story_video',

        'mission_title',
        'mission_description',
        'mission_image',
        'mission_background',
        'mission_video',

        'vision_title',
        'vision_description',
        'vision_image',
        'vision_background',
        'vision_video',

        'values_title',
        'values_description',
        'values_image',
        'values_background',
        'values_video',

        'leadership_title',
        'leadership_description',
        'leadership_image',
        'leadership_background',
        'leadership_video',

        'status',
    ];
}
