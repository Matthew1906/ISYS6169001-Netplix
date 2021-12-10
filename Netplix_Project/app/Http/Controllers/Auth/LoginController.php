<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function index()
    {
        // dd(Auth::user());
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'username' => ['required'],
            'password' => ['required']
        ]);

        if (Auth::attempt(['name' => request('username'), 'password' => $request->password])) {
            return redirect('/');
        }

        return redirect('/login')->with('error', 'Invalid Credential');
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
