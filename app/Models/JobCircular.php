<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobCircular extends Model
{
    protected $fillable = [
        'job_title',
        'job_slug',
        'start_date',
        'end_date',
        'job_description',
        'qualifications',
        'company_info',
        'developer_note',
        'pdf',
        'serial',
        'status',
    ];
}
