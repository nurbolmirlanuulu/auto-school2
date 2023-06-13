<?php

namespace Tests\Feature;

use Illuminate\Database\Eloquent\Collection;
use Spatie\Permission\Models\Role;
use Tests\TestCase;

class RoleControllerTest extends TestCase
{
    // тестируем отображение роли

    public function testIndex()
    {
        $roles = Role::all();
        $this->assertIsObject($roles);
        $this->assertInstanceOf(Collection::class, $roles);
    }

    // тестируем создание роли
    public function testStore()
    {
        $data = [
            'name' => 'Новая Роль',
            'guard_name' => 'web'
        ];

        $role = Role::query()->create($data);
        $this->assertIsObject($role);
        $this->assertInstanceOf(Role::class, $role);
    }


    // тестируем обновление роли

    public function testUpdate()
    {

        // Подготовка данных для запроса
        $data = [
            'name' => 'New Role',
        ];

        $role = Role::orderBy('id','desc')->first();

        $role->name = $data['name'];

        $role->save();

        $this->assertIsObject($role);
        // Проверка, что данные пользователя были успешно обновлены
        $this->assertInstanceOf(Role::class, $role);

        $this->assertDatabaseHas('roles', [
            'id' => $role->id,
            'name' => $data['name'],
        ]);
    }

    // тестируем удаление роли

    public function testDestroy()
    {
        $role = Role::orderBy('id','desc')->first();
        $deleted = $role->delete();
        $this->assertIsBool($deleted);
        $this->assertTrue($deleted);
    }
}
