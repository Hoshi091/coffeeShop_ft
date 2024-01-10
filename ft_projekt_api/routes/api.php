<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/posts', [BlogController::class, 'getBlogPosts']);
Route::get('/posts/{id}', [BlogController::class, 'getBlogPostById']);
Route::get('/products', [ProductController::class, 'getProducts']);
Route::get('/products/{id}', [ProductController::class, 'getProductById']);
Route::post('/products/set/{id}/{timestamp}',[ProductController::class, 'setProductTimestamp']);
