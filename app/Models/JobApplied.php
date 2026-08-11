<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobApplied extends Model
{
    protected $fillable = [
        'name',
        'email',
        'phone',
        'job_id',
        'cover_later',
        'qualifications',
        'address',
        'position',
        'cv',
        'serial',
        'status',
        'job_slug',
    ];
}
