<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('front');
// });




Route::get('/home', 'HomeController@index')->name('home');

Route::get('/profile', 'ProfileController@index')->name('profile');
Route::put('/profile', 'ProfileController@update')->name('profile.update');

Route::get('/about', function () {
    return view('about');
})->name('about');

Route::get('/blank', function () {
    return view('blank');
})->name('blank');

Route::name('admin.')->middleware('can:admin')->prefix('admin')->group(function() {
    Route::get('/category', 'BackEndController@category')->name('category');
    Route::post('/category', 'BackEndController@category');
    Route::get('/product', 'BackEndController@product')->name('product');
    Route::post('/product', 'BackEndController@product');
    Route::get('/comment', 'BackEndController@comment')->name('comment');
    Route::post('/comment', 'BackEndController@comment');
});

Route::get('/', 'FrontEndController@index')->name('front');
Route::get('/{category:slug}', 'FrontEndController@category')->name('kategori');
Route::get('/{category:slug}/{product:slug}', 'FrontEndController@product')->name('produk');
Route::post('/{product:slug}', 'FrontEndController@store')->name('produk.store');
