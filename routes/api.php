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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::post('login', 'API\LoginController@index');
Route::post('registration', 'API\RegistrationController@index');

Route::group(['middleware' => 'auth:api'], function(){

    Route::get('user', function (Request $request) {
        return $request->user();
    });
    Route::get('home', 'API\HomeController@index');
    Route::get('home/{id}', 'API\HomeController@getIndividualTransaction');
    Route::get('search-transactions', 'API\HomeController@searchTransaction');
});
