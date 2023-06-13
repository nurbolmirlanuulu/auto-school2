<?php

namespace Tests\Feature;

use App\Models\CourseMaterials;
use App\Models\Tags;
use Illuminate\Database\Eloquent\Collection;
use Spatie\Permission\Models\Role;
use Tests\TestCase;
/**
 *@group controller
 */
class CourseControllerTest extends TestCase
{
    // Тестируем вывод всех курсов
    public function testIndex()
    {
        $users = CourseMaterials::all();
        $this->assertIsObject($users);
        $this->assertInstanceOf(Collection::class, $users);
    }

    // тестируем создание курса
    public function testStore()
    {
        $data = [
            'title' => 'Курс 1',
            'tag_id' => Tags::first()->id,
            'content' => '',
            'description' => "description",
            'author_id' => 24
        ];

        $course = CourseMaterials::query()->create($data);
        $this->assertIsObject($course);
        $this->assertInstanceOf(CourseMaterials::class, $course);
    }


    // тестируем обновление курса
    public function testUpdate()
    {

        // Подготовка данных для запроса
        $data = [
            'title' => 'Курс 2',
//            'tad_id' => Tags::first()->id,
            'description' => "description2",
            'author_id' => 24
        ];

        $course = CourseMaterials::orderBy('id','desc')->first();

        $course->title = $data['title'];
//        $course->tad_id = $data['tad_id'];
        $course->description = $data['description'];
        $course->author_id = $data['author_id'];

        $course->save();

        $this->assertIsObject($course);
        // Проверка, что данные пользователя были успешно обновлены
        $this->assertInstanceOf(CourseMaterials::class, $course);

        $this->assertDatabaseHas('course_materials', [
            'id' => $course->id,
            'title' => $data['title'],
//            'tag_id' => $data['tad_id'],
            'description' => $data['description'],
            'author_id' => $data['author_id'],
        ]);
    }

    // тестируем удаление курса

    public function testDestroy()
    {
        $course = CourseMaterials::orderBy('id','desc')->first();
        $deleted = $course->delete();
        $this->assertIsBool($deleted);
        $this->assertTrue($deleted);
    }
}
