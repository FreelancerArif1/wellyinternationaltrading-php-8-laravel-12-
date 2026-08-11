<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sustainability extends Model
{
    protected $fillable = [
        'banner_title',
        'banner_image',
        'banner_video',
        'banner_description',

        'block_one_title',
        'block_one_image',
        'block_one_video',
        'block_one_description',

        'block_two_title',
        'block_two_image',
        'block_two_video',
        'block_two_description',

        'block_three_title',
        'block_three_image',
        'block_three_video',
        'block_three_description',

        'block_four_title',
        'block_four_image',
        'block_four_video',
        'block_four_description',

        'block_five_title',
        'block_five_image',
        'block_five_video',
        'block_five_description',

        'serial',
        'status',
    ];
}
