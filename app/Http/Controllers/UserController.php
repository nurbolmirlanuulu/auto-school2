<?php

namespace App\Http\Controllers;


use App\Http\Requests\User\UserStoreRequest;
use App\Models\User;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;


class UserController extends Controller
{


    public function index(): Renderable
    {
        $user = auth()->user();
        $users = null;
        $roles = null;

        if ($user->hasRole('admin')) {
            $users = User::query()->whereHas('roles', fn ($query) => $query->where('name', '!=', 'admin'))->get();
            $roles = Role::all();
        }
        elseif (!$user->hasRole('student')) {
            $users = User::query()->whereHas('roles', fn ($query) => $query->where('name', '=', 'student'))->get();
            $roles = Role::query()->where('name', '!=', 'admin')->get();
        }
        else abort(404);

        return view('users.index', compact('users', 'roles'));
    }


    public function store(UserStoreRequest $request, Role $role): RedirectResponse
    {
        $data = $request->validated();
        $data['password'] = Hash::make($data['password']);

        $user = User::query()->create($data);
        $user->assignRole($role->query()->findOrFail($data['role']));
        return redirect()->back()->with('success', 'User created successfully!');
    }

    public function edit($id)
    {

       $user = User::findOrFail($id);
        $role = Role::where('name', 'role_name')->first();
        $roleId = $role->id;
        dd($roleId);
    return response()->json([
        'name' => $user->name,
        'surname' => $user->surname,
        'email' => $user->email,
        'patronymic' => $user->patronymic,
        'phone' => $user->phone,
        'role' => $roleId,
    ]);

    }
    public function update(Request $request,$id,Role $role)
    {
        $user = User::query()->findOrFail($id);

        $user->name = $request->name;
        $user->surname = $request->surname;
        $user->email = $request->email;
        $user->patronymic = $request->patronymic;
        $user->phone = $request->phone;
        $user->syncRoles([$role->query()->findOrFail($request['role'])] );
        $user->save();

        return redirect()->back()->with('success', 'User successfully updated');
    }
    public function profile(): Renderable
    {
        return view('profile.index')->with('user', auth()->user());
    }


    public function destroy(int $id): RedirectResponse
    {
        $user = User::query()->findOrFail($id);
        if ($user) {
            $user->delete();
            return redirect()->back()->with('success', 'User successfully deleted');
        }
        else {
            return redirect()->back()->withErrors(['User not found']);
        }
    }

}
