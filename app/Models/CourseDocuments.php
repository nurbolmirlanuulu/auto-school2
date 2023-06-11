<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseDocuments extends Model
{
    protected $table = 'course_material_documents';

    use HasFactory;

    protected $fillable = [
        'course_material_id',
        'document_id',
    ];


}
