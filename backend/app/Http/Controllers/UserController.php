<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Verifica si el usuario autenticado es un administrador
        $this->authorize('isAdmin', User::class);
        
        $users = User::all();
        return response()->json($users);
    }

    public function updateRole(Request $request, $id)
    {
        $this->authorize('isAdmin', User::class);

        $user = User::findOrFail($id);
        $user->role = $request->input('role');
        $user->save();

        return response()->json(['message' => 'User role updated successfully.']);
    }
}
