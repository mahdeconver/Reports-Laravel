<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportAuthController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\ReportsController;
use App\Models\Report;


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
Route::post('Register', [PassportAuthController::class, 'Register']);
Route::post('Sign in', [PassportAuthController::class, 'SignIn']);







Route::middleware('auth:api')->prefix('v1')->group(function(){
    Route::get('Profile Single User', [PassportAuthController::class, 'ProfileSingleUser']);
   
    Route::resource('/reports',ReportController::class );
    Route::get('all', [ReportController::class, 'all']);
});