<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' In '. $category->name;
        }
        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' By '. $author->name;
        }
        return view('post',[
            "title" => "All Posts" . $title,
            // "posts" => Post::all() //urut berdasarkan id
            "posts" => Post::latest()->filter(request(['search','category','author']))
                            ->paginate(7)->withQueryString()    
        ]);
    }
        
    public function show(Post $post)
    {
        return view('posts',[
            "title" => "Single Post",
            "post" => $post
        ]);
    }
}
