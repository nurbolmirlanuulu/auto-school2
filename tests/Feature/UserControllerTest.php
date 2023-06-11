<?php

namespace Tests\Feature;

use App\Http\Controllers\UserController;
use App\Http\Requests\User\UserStoreRequest;
use App\Models\User;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Spatie\Permission\Models\Role;
use Tests\TestCase;

/**
 * @group controller
 */
class UserControllerTest extends TestCase
{
    public function testIndex()
    {
        $users = User::all();
        $this->assertIsObject($users);
        $this->assertInstanceOf(Collection::class, $users);
    }

    public function testStore()
    {
        $data = [
            'name' => 'John',
            'surname' => 'Doe',
            'email' => Str::random(5) . "@gmail.com",
            'password' => 'password',
            'role' => 1,
            'phone' => '996708885500'
        ];

        $user = User::query()->create($data);
        $this->assertIsObject($user);
        $this->assertInstanceOf(User::class, $user);
    }

    public function testEdit()
    {
        $user = User::first();
        $this->assertIsObject($user);
        $this->assertInstanceOf(User::class, $user);
    }

    public function testUpdate()
    {

        // Подготовка данных для запроса
        $data = [
            'name' => 'John',
            'surname' => 'Doe',
            'email' => 'johndoe@example21.com',
            'patronymic' => 'Smith',
            'phone' => '123456789',
            'role' => 1,
        ];

        $user = User::first();

        $user->name = $data['name'];
        $user->surname = $data['surname'];
        $user->email = $data['email'];
        $user->patronymic = $data['patronymic'];
        $user->phone = $data['phone'];

        $user->save();

        $this->assertIsObject($user);
        // Проверка, что данные пользователя были успешно обновлены
        $this->assertInstanceOf(User::class, $user);

        $this->assertDatabaseHas('users', [
            'id' => $user->id,
            'name' => $data['name'],
            'surname' => $data['surname'],
            'email' => $data['email'],
            'patronymic' => $data['patronymic'],
            'phone' => $data['phone'],
        ]);
    }

    public function testDestroy()
    {
        //
        $user = User::query()->orderBy('id', 'desc')->first();
        $deleted = $user->delete();

        $this->assertIsBool($deleted);
        $this->assertIsBool($deleted);
        // Проверка, что пользователь был успешно удален
    }
}
