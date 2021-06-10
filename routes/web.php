<?php

use Illuminate\Support\Facades\Route;
use Modules\Member\Http\Controllers\MemberController;

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

Route::get('/home', 'HalamanAdminController@index')->name('home');

Route::get('/profile', 'ProfileController@index')->name('profile');
Route::put('/profile', 'ProfileController@update')->name('profile.update');

Route::name('admin.')->middleware('can:admin')->prefix('admin')->group(function() {
    Route::get('/category', 'HalamanAdminController@category')->name('category');
    Route::post('/category', 'HalamanAdminController@category');
    Route::get('/product', 'HalamanAdminController@product')->name('product');
    Route::post('/product', 'HalamanAdminController@product');
    Route::get('/comment', 'HalamanAdminController@comment')->name('comment');
    Route::post('/comment', 'HalamanAdminController@comment');
});

Route::get('/', 'HalamanVisitorController@index')->name('front');
Route::get('/{category:slug}', 'HalamanVisitorController@kategori')->name('kategori');
Route::get('/{category:slug}/{product:slug}', 'HalamanVisitorController@pakaian')->name('produk');
Route::post('/{product:slug}', 'HalamanVisitorController@store')->name('produk.store');
