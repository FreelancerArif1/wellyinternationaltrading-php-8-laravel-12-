<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\RoleRightController;
use App\Http\Controllers\Api\PreferanceController;
use App\Http\Controllers\Api\RegistrationController;

Route::prefix('v1')->group(function () {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/verify-account-by-email', [AuthController::class, 'verifyAccountByEmail']);
    Route::post('/signup', [AuthController::class, 'signup']);
    Route::post('/signup-validation', [AuthController::class, 'signupValidation']);
    Route::post('/send-otp', [AuthController::class, 'mailrequest']);
    Route::post('/verify-otp', [AuthController::class, 'verifyEmail']);
    Route::post('/change-forget-password', [AuthController::class, 'changeForgetPassword']);
    Route::get('/preferences', [PreferanceController::class, 'preferences']);
    Route::controller(RoleRightController::class)->group(function () {
        Route::get('/role-right-permissions', 'list');
    });
    Route::get('/user/details/{id}', [UserController::class, 'details']);
    Route::get('/user/search', [UserController::class, 'searchFilter']);
    Route::middleware(['auth:api', 'throttle:api'])->group(function () {
        // Auth routes
        Route::get('/verify-token', [AuthController::class, 'verifyToken']);
        Route::get('/profile', [AuthController::class, 'profile']);
        Route::post('/change-password', [AuthController::class, 'changePassword']);
        Route::get('/logout', [AuthController::class, 'logout']);
        Route::get('/get-role', [AuthController::class, 'role']);
        Route::post('/update-profile', [AuthController::class, 'updateProfile']);
        Route::get('/role-based-permissions', [AuthController::class, 'RoleBasedPermissions']);
    });
});
