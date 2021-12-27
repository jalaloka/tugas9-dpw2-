<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function showlogin()
    {
        return view('login.login');
    }

    public function loginproces()
    {
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            return redirect('admin/dashboard')->with('success', 'berhasil login');
        }else{
            return back()->with('danger','login anda gagal');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect('login');
    }
}
