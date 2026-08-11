<?php

namespace App\Models;

use App\Models\Profile;
use App\Models\Student;
use App\Models\Teacher;
use Laravel\Sanctum\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = "users";
    protected $primaryKey = 'id';
    public $incrementing = false;




    const ROLE_ADMIN   = 1;
    const ROLE_STAFF   = 2;
    const ROLE_STYLIST = 3;
    const ROLE_SALOON  = 4;
    const ROLE_CUSTOMER = 12;

    public static $roles = [
        self::ROLE_ADMIN   => 'Admin',
        self::ROLE_STAFF   => 'Staff',
        self::ROLE_STYLIST => 'Stylist',
        self::ROLE_SALOON  => 'Saloon',
        self::ROLE_CUSTOMER => 'Customer',
    ];

    public function getRoleNameAttribute()
    {
        return self::$roles[$this->role] ?? 'unknown';
    }
    //USES
    //// $user->role = User::ROLE_ADMIN   // GET 1
    //// $user->role_name    // GET 'Admin


    protected $fillable = [
        'company_id',
        'role',
        'name',
        'username',
        'email',
        'phone',
        'password',
        'image_url',
        'bio',
        'gender',
        'year_of_experience',
        'is_verified',
        'status',
        'created_by_id',
        'created_by_name',
        'created_date',
        'last_modified_by_id',
        'last_modified_by_name',
        'last_modified_date',
        'email_verified_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    // Add the following methods required by JWTSubject
    public function getJWTIdentifier()
    {
        return $this->getKey(); // Primary key (usually 'id')
    }

    public function getJWTCustomClaims()
    {
        return []; // Add custom claims if needed
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->id = substr(uniqid(), 0, 13) . '-user-' . random_int(10000000000000000, 99999999999999999);
        });
    }

    public function roles()
    {
        return $this->belongsTo(Role::class, 'role', 'id');
    }

    public function company()
    {
        return $this->hasOne(Company::class, 'user_id', 'id');
    }

    public function profile()
    {
        return $this->hasOne(Profile::class);
    }
}
