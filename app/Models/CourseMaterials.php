<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseMaterials extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'tag_id',
        'description',
        'content',
        'views',
        'author_id'
    ];


    public function documents()
    {
        $courseDocuments = CourseDocuments::where('course_material_id', $this->id)->pluck('document_id')->toArray();
        return Documents::whereIn('id', $courseDocuments)->get();
    }


    public function tag()
    {
        return $this->belongsTo(Tags::class, 'tag_id');
    }


    public function author()
    {
        return $this->belongsTo(User::class, 'author_id');
    }


    public function getAuthorNameAttribute()
    {
        return $this->author->name . " " . $this->author->surname;
    }
}
