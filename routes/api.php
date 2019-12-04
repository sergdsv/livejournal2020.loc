<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('articles', 'Api\ArticlesController');
Route::apiResource('comments', 'Api\CommentsController');
//
//Route::group(['namespace'=>'Api'], function() {
//    Route::get('/articles', 'ArticlesController@index')->name('articles.index');
//    Route::post('/articles', 'ArticlesController@store')->name('articles.store');
//    Route::get('/articles/{article}', 'ArticlesController@show')->name('articles.show');
//    Route::delete('/articles/{article}', 'ArticlesController@destroy')->name('articles.destroy');
//    Route::put('/articles/{article}', 'ArticlesController@update')->name('articles.update');
//});
//
