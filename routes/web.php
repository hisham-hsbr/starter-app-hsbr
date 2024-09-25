<?php

use Illuminate\Support\Facades\Route;

Route::get('lang/{lang}', function ($lang) {
    app()->setLocale($lang);
    session()->put('locale', $lang);
    return redirect()->back();
})->name('lang');



//test demo
Route::controller('TestDemoController')->prefix('/test/demos')->name('test-demos.')->group(function () {
    Route::get('/', 'index')->name('index');
    Route::get('/create', 'create')->name('create');
    Route::post('/store', 'store')->name('store');
    Route::get('/edit/{id}', 'edit')->name('edit');
    Route::patch('/update/{id}', 'update')->name('update');
    Route::get('/get', 'testDemosGet')->name('get');
    Route::get('/show/{id}', 'show')->name('show');
    Route::delete('/destroys/{id}', 'destroy')->name('destroy');
    Route::delete('/force-destroy/{id}', 'forceDestroy')->name('force.destroy');
    Route::get('/restore/{id}', 'restore')->name('restore');
    Route::get('/pdf/{id}', 'testDemosPDF')->name('pdf');
    Route::get('/import', 'testDemosImport')->name('import');
    Route::post('/upload', 'testDemosUpload')->name('upload');
    Route::get('/download', 'testDemosDownload')->name('download');

    Route::get('/demo1', 'demo1')->name('demo1');
    Route::get('/check', 'check')->name('check');
});



require __DIR__ . '/auth.php';





require __DIR__ . '/back_end/back_end.php';
require __DIR__ . '/front_end/front_end.php';