<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminLoginController;

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

Route::post('admin/login',[AdminLoginController::class, 'adminLogin'])->name('adminLogin');
Route::post('admin/Register',[AdminLoginController::class, 'RegisterAdmin'])->name('RegisterAdmin');

Route::group( ['prefix' => 'admin','middleware' => ['auth:admin-api','scopes:admin'] ],function(){
    // authenticated staff routes here 
    Route::get('dashboard',[AdminLoginController::class, 'adminDashboard']);
    Route::get('Profile All User', [AdminLoginController::class, 'ProfileAllUser']);
    

});