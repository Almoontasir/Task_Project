<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::group(['namespace'=>'App\Http\Controllers'],function(){
    Route::get('admin/home', 'HomeController@index')->name('admin.home');
    Route::get('admin/logout', 'HomeController@logout')->name('admin.logout');
});

Route::group(['namespace'=>'App\Http\Controllers\Admin'],function(){
    Route::get('/get-sub-category/{id}', 'CatagoryController@getSubCategory');
    // Route::get('admin/home', 'HomeController@index')->name('admin.home');
    // Route::get('admin/logout', 'HomeController@logout')->name('admin.logout');

    // categories
    Route::group(['prefix'=>'catagory'],function(){
        Route::get('/', 'CatagoryController@index')->name('catagory.index');
        Route::post('/', 'CatagoryController@store')->name('catagory.store');
        Route::delete('/{id}', 'CatagoryController@destroy')->name('catagory.delete');
        Route::put('/update', 'CatagoryController@update')->name('catagory.update');
        // Route::get('admin/logout', 'AdminController@logout')->name('admin.logout');
        Route::get('/edit/{id}', 'CatagoryController@edit');
      });




    //    subcategories
      Route::group(['prefix'=>'subcatagory'],function(){
        Route::get('/', 'SubCatagoryController@index')->name('subcatagory.index');
        Route::post('/', 'SubCatagoryController@store')->name('subcatagory.store');
        Route::delete('/{id}', 'SubCatagoryController@destroy')->name('subcatagory.delete');
        Route::put('/updateupdate', 'SubCatagoryController@update')->name('subcatagory.update');
        // // Route::get('admin/logout', 'AdminController@logout')->name('admin.logout');
        Route::get('/edit/{id}', 'SubCatagoryController@edit');
      });


      
      Route::group(['prefix'=>'Excel'],function(){
        Route::get('/importExportView','ExcelController@importExportView')->name('import.view');
        Route::get('/export','ExcelController@export')->name('export');
        Route::post('/import','ExcelController@import')->name('import');


      });
     


});

Route::group(['namespace'=>'App\Http\Controllers\Admin','middleware'=>'CheckAdmin'],function(){



    //   products
    Route::group(['prefix'=>'product'],function(){
      Route::get('/create', 'ProductConroller@create')->name('product.create');
      Route::get('/', 'ProductConroller@index')->name('product.index');
      
      Route::post('/store', 'ProductConroller@store')->name('product.store');
      Route::get('/{id}', 'ProductConroller@destroy')->name('product.delete');
     // //  // Route::get('admin/logout', 'AdminController@logout')->name('admin.logout');
      Route::put('/update', 'ProductConroller@update')->name('product.update');
      Route::get('/edit/{id}', 'ProductConroller@edit')->name('product.edit');
      Route::get('/active-featured/{id}','ProductConroller@activefeatured');
      Route::get('/not-featured/{id}','ProductConroller@notfeatured');
      Route::get('/active-deal/{id}','ProductConroller@activedeal');
      Route::get('/not-deal/{id}','ProductConroller@notdeal');
      Route::get('/active-status/{id}','ProductConroller@activestatus');
      Route::get('/not-status/{id}','ProductConroller@notstatus');
      
    });


});