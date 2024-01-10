<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    public function getProducts(){
        $products = DB::select('SELECT * FROM product');
        return response()->json(["posts"=>$products]);
    }
    public function getProductById($id){
        $product = DB::select('SELECT * FROM product WHERE id=?', [$id]);
        if (!$product) {
            return response()->json(['message' => 'Post not found'], 404);
        }
        return response()->json(['post' => $product]);

    }
        public function setProductTimestamp($id, $timestamp)
        {
            try {
                DB::insert('INSERT INTO product_timestamp (product_id, click_timestamp) VALUES (?,?)', [$id, $timestamp]);

                return response()->json(['message' => 'Timestamp saved successfully'], 200);
            } catch (Exception $e) {
                return response()->json(['message' => 'Internal Server Error'], 500);
            }
        }
}
