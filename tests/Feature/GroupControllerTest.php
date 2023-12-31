<?php

namespace Tests\Feature;

use App\Models\Groups;
use Illuminate\Database\Eloquent\Collection;
use Tests\TestCase;

class GroupControllerTest extends TestCase
{
    // тестируем отображение групп

    public function testIndex()
    {
        $groups = Groups::all();
        $this->assertIsObject($groups);
        $this->assertInstanceOf(Collection::class, $groups);
    }

    // тестируем создание групп
    public function testStore()
    {
        $data = [
            'title' => 'Курс 1',
            'description' => 'Обучаемся ',
        ];

        $group = Groups::query()->create($data);
        $this->assertIsObject($group);
        $this->assertInstanceOf(Groups::class, $group);
    }


    // тестируем обновление групп

    public function testUpdate()
    {

        // Подготовка данных для запроса
        $data = [
            'title' => 'Курс 2',
            'description' => 'Обучаемся по новой программе ',
        ];

        $group = Groups::orderBy('id','desc')->first();

        $group->title = $data['title'];
        $group->description = $data['description'];

        $group->save();

        $this->assertIsObject($group);
        // Проверка, что данные пользователя были успешно обновлены
        $this->assertInstanceOf(Groups::class, $group);

        $this->assertDatabaseHas('groups', [
            'id' => $group->id,
            'title' => $data['title'],
//            'tag_id' => $data['tad_id'],
            'description' => $data['description'],
        ]);
    }
    // тестируем удаление групп

    public function testDestroy()
    {
        $group = Groups::orderBy('id','desc')->first();
        $deleted = $group->delete();
        $this->assertIsBool($deleted);
        $this->assertTrue($deleted);
    }
}
