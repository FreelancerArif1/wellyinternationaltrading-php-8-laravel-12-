<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Role;
use App\Models\RoleRight;
use App\Models\Right;
use App\Models\Otp;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Tymon\JWTAuth\Facades\JWTAuth;
use Hash;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\File;
use Helper;
use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\Mail;


class AuthController extends Controller
{


    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'identifier' => 'required', // Can be email or phone
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors()->all(),
            ], 422);
        }
        $identifier = $request->input('identifier');
        $credentials = [
            'password' => $request->input('password'),
        ];

        if (filter_var($identifier, FILTER_VALIDATE_EMAIL)) {
            $credentials['email'] = $identifier;
        } else {
            $credentials['phone'] = $identifier;
        }

        // Check user existence and status
        $user = User::where('email', $identifier)
            ->orWhere('phone', $identifier)
            ->first();

        if (!$user) {
            return response()->json([
                'status' => 0,
                'account_veryfied' => false,
                'message' => 'Account not found.',
                'token' => null,
                'user' => null,
                'errors' => [
                    'account' => ['Account not found.']
                ],
            ], 404);
        }
        if ($user->status != 1) {
            return response()->json([
                'status' => 0,
                'account_veryfied' => false,
                'message' => 'Your account is not active yet !',
                'token' => null,
                'user' => null,
                'errors' => [
                    'account' => ['Your account is not active yet !']
                ],
            ], 200);
        }

        // Attempt login
        if (!$token = JWTAuth::attempt($credentials)) {
            return response()->json([
                'status' => 0,
                'errors' => [
                    'credentials' => ['Invalid credentials.']
                ],
            ], 401);
        }
        $authUser = Auth::user()->role;
        // $redirectTo = $authUser == 1 ? 'admin.index' : 'home';
        return response()->json([
            'status' => 1,
            'account_veryfied' => true,
            'message' => 'Login successful !',
            'token' => $token,
            'user' => Auth::user(),
        ], 200);
    }

    public function verifyAccountByEmail(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $user = User::where('email', $request->email)->first();
        $six_digit_random_number = random_int(100000, 999999);
        $email = $request->email;
        if ($email) {
            $subject = 'Verify your accouont by OTP.';
            $data['user'] = $user;
            $data['otp'] = $six_digit_random_number;
            $data['message'] = 'Verify your accouont by OTP. Your OTP is below —. Please do not share the code others and Please change your password after logging in.';
            Helper::sendEmail($email, $subject, $data, 'welcome');
            $otp = new Otp();
            $otp->email = $email;
            $otp->otp = $six_digit_random_number;
            $otp->status = 1;
            $otp->save();
        } else {
            return response()->json([
                'status' => 1,
                'message' => 'Account not found.',
            ], 404);
        }
        return response()->json([
            'status' => 1,
            'message' => 'OTP sent to your email successfully !',
        ], 200);
    }

    public function verifyOtp(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'otp' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $otp = Otp::where('otp', $request->otp)->first();

        if ($otp) {
            $user = User::where('email', $otp->email)->first();
            if ($user) {
                //CHECK OTP TIME
                if ($this->otpValidation($user->email, $otp->otp) != 1) {
                    $otp->status = 1;
                    $otp->save();
                    $data['status'] = 0;
                    $data['message'] = 'OTP has expired !';
                    return response()->json($data, 404);
                }
                $user->status = 1;
                $user->save();


                // Attempt login
                if (!$token = JWTAuth::fromUser($user)) {
                    return response()->json([
                        'status' => 0,
                        'errors' => [
                            'credentials' => ['Invalid credentials.']
                        ],
                    ], 401);
                }
                Otp::where('email', $user->email)->delete();
                return response()->json([
                    'status' => 1,
                    'account_veryfied' => true,
                    'message' => 'Your account is veryfied now.',
                    'token' => $token,
                    'user' => $user,
                ], 200);
            } else {
                return response()->json([
                    'status' => 0,
                    'message' => 'Account not found.',
                ], 404);
            }
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Invalid OTP.',
            ], 200);
        }
    }

    public static function generateUsername($name)
    {
        $base = preg_replace('/[^a-z0-9]+/i', '', strtolower(trim($name)));
        if (empty($base)) {
            $base = 'user';
        }
        $username = $base;
        $i = 0;
        while (DB::table('users')->where('username', $username)->exists()) {
            $username = $base . ++$i;
        }
        return $username;
    }

    public function signup(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
            'email' => 'required|email|unique:users',
            'phone' => 'max:15|unique:users',
            'role' => 'required|integer',
            'bio' => 'nullable|string|max:500',
            'gender' => 'nullable|string|in:Male,Female,Other',
            'image_url' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp|max:2048',
            'password' => 'nullable|min:6|max:20|confirmed',
            'year_of_experience' => 'nullable|integer|max:60',
            'created_by_id' => 'nullable|string|max:32',
            'created_by_name' => 'nullable|string|max:50',
            'created_date' => 'nullable|date',
            'last_modified_by_id' => 'nullable|string|max:32',
            'last_modified_by_name' => 'nullable|string|max:50',
            'last_modified_date' => 'nullable|date',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'status' => 0,
                'errors' => $validator->errors(),
            ], 422);
        }
        $user = new User();
        $user->company_id = $request->company_id;
        $user->role = $request->role;
        $user->name = $request->name;
        $user->username = $this->generateUsername($request->name);;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password ?? $request->phone);
        $user->image_url = $request->image_url;
        $user->bio = $request->bio;
        $user->gender = $request->gender;
        $user->year_of_experience = $request->year_of_experience;
        $user->created_by_id = $request->created_by_id;
        $user->created_by_name = $request->created_by_name;
        $user->created_date = $request->created_date;
        $user->last_modified_by_id = $request->last_modified_by_id;
        $user->last_modified_by_name = $request->last_modified_by_name;
        $user->last_modified_date = $request->last_modified_date;
        $user->email_verified_at = Carbon::now();
        $user->status = 1;
        if ($request->hasFile('image_url')) {
            $image = $request->file('image_url');
            $uploadPath = public_path('uploads/user-images');
            if (!file_exists($uploadPath)) {
                mkdir($uploadPath, 0777, true);
            }
            $filename = time() . uniqid() . $image->getClientOriginalName();
            $image->move($uploadPath, $filename);
            $user->image_url = $filename;
        }
        if ($user->save()) {
            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'User created successfully.',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'Something went wrong.',
            ], 422);
        }
    }




    public function signupValidation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'otp' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $otp = Otp::where('otp', $request->otp)->where('status', 1)->first();
        if ($otp) {
            $user = User::where('email', $otp->email)->first();
            if ($user) {
                //CHECK OTP TIME
                // if($this->otpValidation($user->email, $otp->otp) != 1) {
                // $otp->status = 2;
                // $otp->save();
                //     $data['status'] = 0;
                //     $data['message'] = 'OTP has expired !';
                //     return response()->json($data, 404);
                // }

                $user->status = 1;
                $user->save();
                // Attempt login
                if (!$token = JWTAuth::fromUser($user)) {
                    return response()->json([
                        'status' => 0,
                        'errors' => [
                            'credentials' => ['Invalid credentials.']
                        ],
                    ], 401);
                }
                Otp::where('email', $user->email)->delete();
                return response()->json([
                    'status' => 1,
                    'account_veryfied' => true,
                    'message' => 'Email veryfied !',
                    'token' => $token,
                    'user' => $user,
                ], 200);
            } else {
                return response()->json([
                    'status' => 0,
                    'message' => 'User not found !'
                ], 404);
            }
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Invalid OTP !'
            ], 200);
        }
    }

    public function updateProfile(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone' => 'required',
            'profile_image' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        if (!$user = JWTAuth::parseToken()->authenticate()) {
            return response()->json([
                'status' => 0,
                'message' => 'User not found.'
            ], 404);
        }
        $six_digit_random_number = random_int(10000000, 99999999);
        $user = User::find(Auth::user()->id);
        $data['first_name'] = $request->first_name;
        $data['last_name'] = $request->last_name;
        $data['phone'] = $request->phone;

        // Handle Profile Image Upload
        if ($request->hasFile('profile_image')) {
            $image = $request->file('profile_image');
            $uploadPath = public_path('uploads/user-images');
            // Ensure the directory exists
            if (!File::exists($uploadPath)) {
                File::makeDirectory($uploadPath, 0755, true);
            }
            $filename = time() . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move($uploadPath, $filename);
            $data['profile_image'] = 'uploads/user-images/' . $filename;
        }


        if (User::where('id', Auth::user()->id)->update($data)) {
            return response()->json([
                'status' => 1,
                'message' => 'User updated successfully !',
            ]);
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Something went wrong !',
            ]);
        }
    }

    // Get authenticated user
    public function profile()
    {


        $user = Auth::user();
        return response()->json([
            'status' => 1,
            'user' => $user,
        ], 200);


        try {
            // Verify and get the authenticated user
            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json([
                    'status' => 0,
                    'message' => 'User not found.'
                ], 404);
            }
        } catch (TokenExpiredException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token has expired.',
            ], 401);
        } catch (TokenInvalidException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token is invalid.',
            ], 401);
        } catch (JWTException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token is missing.',
            ], 401);
        }

        // Return the authenticated user
        return response()->json([
            'status' => 1,
            'user' => $user,
        ], 200);
    }

    public function role()
    {
        $role = Role::select('id', 'name')->get();
        if ($role) {
            return response()->json([
                'status' => 1,
                'message' => 'role get successfully !',
                'data' => $role,
            ], 200);
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Data not found.',
                'data' => null,
            ], 404);
        }
    }

    public function verifyToken()
    {
        try {
            if ($user = JWTAuth::parseToken()->authenticate()) {
                $response = [
                    'status' => 1,
                    'msg' => 'Token is valid'
                ];
                return response()->json($response, 200);
            }
        } catch (TokenExpiredException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token has expired.',
            ], 401);
        } catch (TokenInvalidException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token is invalid.',
            ], 401);
        } catch (JWTException $e) {
            return response()->json([
                'status' => 0,
                'message' => 'Token is missing.',
            ], 401);
        }
    }

    // Logout and invalidate token
    public function logout()
    {
        JWTAuth::invalidate(JWTAuth::getToken());

        return response()->json(['message' => 'Logged out successfully']);
    }

    public function mailrequest(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $user = User::where('email', $request->email)->first();
        $six_digit_random_number = random_int(100000, 999999);
        $email = $request->email;
        if ($user) {
            $subject = 'Change your password by OTP.';
            $data['user'] = $user;
            $data['otp'] = $six_digit_random_number;
            $data['message'] = 'Change your password by OTP. Your OTP is below —. Please do not share the code others and Please change your password after logging in.';
            Helper::sendEmail($email, $subject, $data, 'welcome');
            $otp = new Otp();
            $otp->email = $email;
            $otp->otp = $six_digit_random_number;
            $otp->status = 1;
            $otp->save();
        } else {
            return response()->json([
                'status' => 1,
                'message' => 'Account not found.',
            ], 404);
        }
        return response()->json([
            'status' => 1,
            'message' => 'We sent OTP in your email !',
        ], 200);
    }

    public function verifyEmail(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'otp' => 'required',
            'email' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $otp = Otp::where('email', $request->email)->where('otp', $request->otp)->first();
        if ($otp) {
            if ($this->otpValidation($otp->email, $otp->otp) != 1) {
                $otp->status = 1;
                $otp->save();
                $data['status'] = 0;
                $data['message'] = 'OTP has expired !';
                return response()->json($data, 404);
            }
            $otp->status = 2;
            $otp->save();
            return response()->json([
                'status' => 1,
                'message' => 'OTP veryfied !',
            ], 200);
        } else {
            return response()->json([
                'status' => 1,
                'message' => 'Invalid OTP.',
            ], 404);
        }
    }

    public function changeForgetPassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'otp' => 'required',
            'new_password' => 'required|string|min:6|confirmed',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $otp = Otp::where('email', $request->email)->where('otp', $request->otp)->where('status', 2)->first();
        if ($otp) {
            $user = User::where('email', $otp->email)->first();
            if ($user) {
                $user->password = Hash::make($request->new_password);
                $user->save();
                Otp::where('email', $user->email)->delete();
                return response()->json([
                    'status' => 1,
                    'message' => 'Password changed successfully !'
                ], 200);
            } else {
                return response()->json([
                    'status' => 0,
                    'message' => 'User not found !'
                ], 404);
            }
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'OTP not veryfied !'
            ], 409);
        }
    }

    public function changePassword(Request $request)
    {
        $request->validate([
            'current_password' => ['required'],
            'new_password' => ['required', 'string', 'min:6', 'confirmed'],
        ]);
        if (!$user = JWTAuth::parseToken()->authenticate()) {
            return response()->json([
                'status' => 0,
                'message' => 'User not found.'
            ], 404);
        }
        if (!Hash::check($request->current_password, $user->password)) {
            return response()->json([
                'status' => 0,
                'message' => 'Current password is incorrect.'
            ], 404);
        }
        $user->password = Hash::make($request->new_password);
        $user->save();
        return response()->json([
            'status' => 1,
            'message' => 'Password changed successfully'
        ], 200);
    }

    public function RoleBasedPermissions()
    {
        if (!$user = JWTAuth::parseToken()->authenticate()) {
            $response = [
                'status' => 0,
                'message' => 'User not found.'
            ];
            return response()->json($response, 200);
        } else {
            $roleRights = RoleRight::select('role_id', 'right_id')->where('role_id', $user->role)->where('permission', 1)->with(['right:id,name,module'])->get()->toArray();
            return response()->json([
                'status' => 1,
                'message' => 'User founded.',
                'data' => $roleRights
            ], 200);
        }
    }



    public function otpValidation($email, $otp)
    {
        $res = 0;
        $otpData = Otp::where('email', $email)->where('otp', $otp)->orderby('id', 'desc')->where('status', 1)->first();
        if ($otpData) {
            $otptime = $otpData->created_at;
            $currentTime = date('Y-m-d H:i:s');
            $to_time = strtotime($currentTime);
            $from_time = strtotime($otptime);
            $muniteDiff =  round(abs($to_time - $from_time) / 60, 2);
            if ($muniteDiff < 2) { //2 Min Validity
                $res = 1;
            } else {
                $res = 2;
            }
        }
        return $res;
    }
}
