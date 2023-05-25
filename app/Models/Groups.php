<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Groups extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
    ];


    public function students()
    {
        return $this->hasMany(User::class);
    }


    public function teachers()
    {
        return $this->hasMany(User::class);
    }


}
