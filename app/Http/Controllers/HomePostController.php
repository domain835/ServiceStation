<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomePostController extends Controller
{
    public function index()
	{
		return view('posts.index');
	}

	public function show()
	{
//		return view('posts.index');
	}
}
