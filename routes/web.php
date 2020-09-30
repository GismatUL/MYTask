<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::match(['get','post'],'/task1','Task1Controller@Task1');
Route::match(['get','post'],'/task2','ApiOpenMapController@Task2');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/api','ApiOpenMapController@api');
Route::get('/create','ApiOpenMapController@create');
Route::post('/api','ApiOpenMapController@apicall');
Route::post('/city','ApiOpenMapController@city');
Route::post('/getweather','ApiOpenMapController@getWeather');
