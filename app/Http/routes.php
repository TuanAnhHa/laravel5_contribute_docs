<?php

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/community', 'CommunityLinksController@index');
Route::post('/community', 'CommunityLinksController@store');
Route::get('/community/{channel}', 'CommunityLinksController@index');
