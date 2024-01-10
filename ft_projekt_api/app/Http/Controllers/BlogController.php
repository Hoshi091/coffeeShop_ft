<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BlogController extends Controller
{
    public function getBlogPosts(){
        $posts = DB::select('SELECT * FROM blog_post');
        return response()->json(["posts"=>$posts]);
    }
    public function getBlogPostById($id){
        $post = DB::select('SELECT * FROM blog_post WHERE id=?', [$id]);
        if (!$post) {
            return response()->json(['message' => 'Post not found'], 404);
        }
        return response()->json(['post' => $post]);

    }
}
