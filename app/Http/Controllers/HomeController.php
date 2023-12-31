<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;

class HomeController extends Controller
{


    public function index(): Renderable
    {
        return view('landing.index');
    }


    public function analytics(): Renderable
    {
        return view('home.analytics');
    }


    public function projects(): Renderable
    {
        return view('home.projects');
    }


}
