<?php

namespace Tests\Feature;

use App\Http\Controllers\UserController;
use App\Http\Requests\User\UserStoreRequest;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Spatie\Permission\Models\Role;
use Tests\TestCase;

/**
 * @group controller
 */
class UserControllerTest extends TestCase
{
    public function testIndex()
    {
        // Создание пользователя с ролью 'admin'
        $admin = User::factory()->create();
        $admin->assignRole('admin');

        // Создание пользователя с ролью 'student'
        $student = User::factory()->create();
        $student->assignRole('student');

        // Создание пользователя с другой ролью
        $user = User::factory()->create();
        $role = Role::factory()->create();
        $user->assignRole($role);

        // Проверка, что при вызове метода index() отображается верное представление
        $response = $this->actingAs($admin)->get(route('users.index'));
        $response->assertViewIs('users.index');

        // Проверка, что в представлении передаются правильные данные
        $response->assertViewHas('users', function ($users) use ($student, $role) {
            // Проверка, что в списке пользователей отсутствует студент
            $this->assertFalse($users->contains($student));
            // Проверка, что в списке пользователей есть пользователь с другой ролью
            $this->assertTrue($users->contains($user));
            // Проверка, что в списке ролей есть только роль, отличная от 'admin'
            $roles = $users->pluck('roles')->flatten();
            $this->assertTrue($roles->contains($role));
            $this->assertFalse($roles->contains('admin'));
            return true;
        });
    }

    public function testStore()
    {
        // Создание роли
        $role = Role::factory()->create();

        // Подготовка данных для запроса
        $data = [
            'name' => 'John',
            'surname' => 'Doe',
            'email' => 'johndoe@example.com',
            'password' => 'password',
            'role' => $role->id,
        ];

        // Создание экземпляра запроса с валидацией данных
        $request = new UserStoreRequest();
        $validator = Validator::make($data, $request->rules());

        // Проверка валидации данных
        $this->assertTrue($validator->passes());

        // Создание пользователя с помощью контроллера
        $controller = new UserController();
        $response = $controller->store($request, $role);

        // Проверка, что пользователь был успешно создан
        $this->assertInstanceOf(RedirectResponse::class, $response);
        $this->assertTrue($response->isRedirect(route('users.index')));
        $this->assertDatabaseHas('users', [
            'email' => $data['email'],
        ]);
    }

    public function testEdit()
   {
       // Создание пользователя для редактирования
       $user = User::factory()->create();
       $role = Role::factory()->create();
       $user->assignRole($role);

       // Вызов метода edit() контроллера
       $controller = new UserController();
       $response = $controller->edit($user->id);

       // Проверка, что метод возвращает правильные данные
       $response->assertJson([
           'name' => $user->name,
           'surname' => $user->surname,
           'email' => $user->email,
           'patronymic' => $user->patronymic,
           'phone' => $user->phone,
           'role' => $role->id,
       ]);
   }

    public function testUpdate()
    {
        // Создание пользователя для обновления
        $user = User::factory()->create();
        $role = Role::factory()->create();
        $user->assignRole($role);

        // Подготовка данных для запроса
        $data = [
            'name' => 'John',
            'surname' => 'Doe',
            'email' => 'johndoe@example.com',
            'patronymic' => 'Smith',
            'phone' => '123456789',
            'role' => $role->id,
        ];

        // Вызов метода update() контроллера
        $controller = new UserController();
        $request = new Request($data);
        $response = $controller->update($request, $user->id, $role);

        // Проверка, что данные пользователя были успешно обновлены
        $this->assertInstanceOf(RedirectResponse::class, $response);
        $this->assertTrue($response->isRedirect(route('users.index')));
        $this->assertDatabaseHas('users', [
            'id' => $user->id,
            'name' => $data['name'],
            'surname' => $data['surname'],
            'email' => $data['email'],
            'patronymic' => $data['patronymic'],
            'phone' => $data['phone'],
        ]);
    }

    public function testProfile()
    {
        // Авторизация пользователя
        $user = User::factory()->create();
        $this->actingAs($user);

        // Вызов метода profile() контроллера
        $controller = new UserController();
        $response = $controller->profile();

        // Проверка, что метод возвращает правильное представление
        $response->assertViewIs('profile.index');
        $response->assertViewHas('user', $user);
    }

    public function testDestroy()
    {
        // Создание пользователя для удаления
        $user = User::factory()->create();

        // Вызов метода destroy() контроллера
        $controller = new UserController();
        $response = $controller->destroy($user->id);

        // Проверка, что пользователь был успешно удален
        $this->assertInstanceOf(RedirectResponse::class, $response);
        $this->assertTrue($response->isRedirect(route('users.index')));
        $this->assertSoftDeleted('users', [
            'id' => $user->id,
        ]);
    }
}
