<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Service extends Model
{

    use HasFactory;
    protected $table = "services";


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
        'category_id',
        'icon',
    ];
}
