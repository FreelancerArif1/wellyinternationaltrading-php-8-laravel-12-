<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * For web routes only (not needed in API).
     */
    protected function redirectTo($request)
    {
        // Return null to prevent Laravel from redirecting to a "login" route
        return null;
    }

    /**
     * Handle unauthenticated users for API requests.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  array  $guards
     */
    protected function unauthenticated($request, array $guards)
    {
        // Return JSON response for API
        return response()->json([
            'success' => false,
            'message' => 'Unauthorized: Invalid or expired token.'
        ], 401);
    }
}
