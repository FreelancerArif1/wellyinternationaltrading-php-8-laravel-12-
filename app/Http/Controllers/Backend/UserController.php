<?php

namespace App\Http\Controllers\Backend;

use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\Student;
use App\Models\Teacher;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user();
            if (!$this->user || Helper::hasRight('user.view') == false) {
                session()->flash('error', 'You can not access! Login first.');
                return redirect()->route('admin');
            }
            return $next($request);
        });
    }
    public function index()
    {
        return view('backend.pages.user.index');
    }
    public function getList(Request $request)
    {
        $data = User::query();

        if ($request->email) {
            $data->where(function ($query) use ($request) {
                $query->where('email', 'like', "%" . $request->email . "%");
            });
        }
        if ($request->phone) {
            $data->where(function ($query) use ($request) {
                $query->where('phone', 'like', "%" . $request->phone . "%");
            });
        }
        $data->orderBy('created_at', 'desc');
        return Datatables::of($data)
            ->editColumn('profile_image', function ($row) {
                return ($row->profile_image) ? '<img width="50" class="profile-img" src="' . asset($row->profile_image) . '" alt="profile image">' : '<img width="50" class="profile-img" src="' . asset('backend/images/no-img.jpg') . '" alt="profile image">';
            })
            ->editColumn('name', function ($row) {
                return $row->name;
            })
            ->editColumn('role', function ($row) {
                return optional($row->roles)->name;
            })
            ->editColumn('status', function ($row) {
                if ($row->status == 1) {
                    return '<button class="btn btn-primary btn-sm change-user-status" data-id="' . $row->id . '" data-status="0">Active</button>';
                } else {
                    return '<button class="btn btn-danger btn-sm change-user-status" data-id="' . $row->id . '" data-status="1">Inactive</button>';
                }
            })
            ->addColumn('action', function ($row) {
                $btn = '';
                if (Helper::hasRight('user.edit')) {
                    $btn = $btn . '<a href="" data-id="' . $row->id . '" class="edit_btn btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }
                if (Helper::hasRight('user.edit')) {
                    $btn = $btn . '<a class="change_password btn btn-sm btn-warning text-light mx-1 " data-id="' . $row->id . '" href="" title="Change Password"><i class="fa-solid fa-key"></i></a>';
                }
                if (Helper::hasRight('user.delete')) {
                    $btn = $btn . '<a class="delete_btn btn btn-sm btn-danger " data-id="' . $row->id . '" href=""><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
                return $btn;
            })
            ->rawColumns(['profile_image', 'name', 'role', 'status', 'action'])->make(true);
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|unique:users,phone',
            'role' => 'required|integer',
            'specialization' => 'nullable|string|max:255',
            'designation' => 'nullable|string|max:255',
            'birthdate' => 'nullable|date',
            'gender' => 'nullable|string|in:male,female,other',
            'profile_image' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $six_digit_random_number = random_int(100000, 999999);
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->role = $request->role;
        $user->status = 1;
        $user->password = Hash::make($request->password ?? $six_digit_random_number);
        if ($request->hasFile('profile_image')) {
            $image = $request->file('profile_image');
            $uploadPath = public_path('uploads/user-images');
            if (!File::exists($uploadPath)) {
                File::makeDirectory($uploadPath, 0755, true);
            }
            $filename = time() . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move($uploadPath, $filename);
            $user->profile_image = 'uploads/user-images/' . $filename;
        }

        if ($user->save()) {
            switch ($user->role) {
                case 9:
                    Teacher::create([
                        'user_id' => $user->id,
                        'teacher_id' => 'T' . str_pad($user->id, 5, '0', STR_PAD_LEFT),
                        'specialization' => $request->specialization ?? null,
                        'designation' => $request->designation ?? null,
                        'birthdate' => $request->birthdate ?? null,
                        'gender' => $request->gender ?? null,
                        'status' => 1,
                    ]);
                    break;
                case 8:
                    Student::create([
                        'user_id' => $user->id,
                        'status' => 1,
                    ]);
                    break;
                case 10:
                    LeadingAndGovernor::create([
                        'user_id' => $user->id,
                        'leading_gov_id' => 'LG' . str_pad($user->id, 5, '0', STR_PAD_LEFT),
                        'specialization' => $request->specialization ?? null,
                        'designation' => $request->designation ?? null,
                        'birthdate' => $request->birthdate ?? null,
                        'gender' => $request->gender ?? null,
                        'status' => 1
                    ]);
                    break;
            }
            $email = $user->email;
            if ($email) {
                $subject = 'Thank you for registering on our platform';
                $data['user'] = $user;
                $data['otp'] = $request->password ?? $six_digit_random_number;
                $data['message'] = 'Thank you for registering on our platform. Your default password is below —. Please do not share the code others and Please change your password after logging in.';
                Helper::sendEmail($email, $subject, $data, 'welcome');
            }

            return response()->json([
                'type' => 'success',
                'message' => 'User created successfully.',
                'user' => $user,
            ]);
        }

        return response()->json([
            'type' => 'error',
            'message' => 'Failed to create user.',
        ], 500);
    }



    public function edit($id)
    {
        $user = User::find($id);
        return view('backend.pages.user.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email',
            'phone' => 'required|string',
            'role' => 'required|integer',
            'specialization' => 'nullable|string|max:255',
            'designation' => 'nullable|string|max:255',
            'birthdate' => 'nullable|date',
            'gender' => 'nullable|string|in:male,female,other',
            'profile_image' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $existed_user = User::find($id);
        if (!$existed_user) {
            return response()->json([
                'type' => 'error',
                'message' => 'User not found.',
            ], 404);
        }

        $oldRole = $existed_user->role;
        $existed_user->update([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'role' => $request->role,
            'status' => $request->has('status') ? 1 : 0,
            'password' => !empty($request->password) ? Hash::make($request->password) : $existed_user->password,
        ]);
        if ($oldRole != $request->role) {
            $this->removeOldRoleEntry($oldRole, $existed_user->id);
            $this->handleUserRoleUpdate($request, $existed_user);
        }
        if ($request->hasFile('profile_image')) {
            $image = $request->file('profile_image');
            $uploadPath = public_path('uploads/user-images');
            if (!File::exists($uploadPath)) {
                File::makeDirectory($uploadPath, 0755, true);
            }
            if ($existed_user->profile_image && File::exists(public_path($existed_user->profile_image))) {
                File::delete(public_path($existed_user->profile_image));
            }
            $filename = time() . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move($uploadPath, $filename);
            $existed_user->profile_image = 'uploads/user-images/' . $filename;
            $existed_user->save();
        }
        if ($existed_user->role != $request->role) {
            $this->handleUserRoleUpdate($request, $existed_user);
        }
        return response()->json([
            'type' => 'success',
            'message' => 'User updated successfully.',
            'user' => $existed_user,
        ]);
    }

    private function removeOldRoleEntry($role, $userId)
    {
        switch ($role) {
            case 9:
                Teacher::where('user_id', $userId)->delete();
                break;
            case 8:
                Student::where('user_id', $userId)->delete();
                break;
            case 10:
                LeadingAndGovernor::where('user_id', $userId)->delete();
                break;
        }
    }


    private function handleUserRoleUpdate($request, $user)
    {
        switch ($request->role) {
            case 9:
                Teacher::create([
                    'user_id' => $user->id,
                    'teacher_id' => 'T' . str_pad($user->id, 5, '0', STR_PAD_LEFT),
                    'specialization' => $request->specialization ?? null,
                    'designation' => $request->designation ?? null,
                    'birthdate' => $request->birthdate ?? null,
                    'gender' => $request->gender ?? null,
                    'status' => $request->status ?? 0,
                ]);
                break;

            case 8:
                Student::create([
                    'user_id' => $user->id,
                    'student_id' => 'S' . str_pad($user->id, 5, '0', STR_PAD_LEFT),
                    'class' => $request->class ?? null,
                    'group' => $request->group ?? null,
                    'birthdate' => $request->birthdate ?? null,
                    'father_name' => $request->father_name ?? null,
                    'village' => $request->village ?? null,
                    'post_office' => $request->post_office ?? null,
                    'upazila' => $request->upazila ?? null,
                    'district' => $request->district ?? null,
                    'status' => 1,
                ]);
                break;

            case 10:
                LeadingAndGovernor::create([
                    'user_id' => $user->id,
                    'leading_gov_id' => 'LG' . str_pad($user->id, 5, '0', STR_PAD_LEFT),
                    'specialization' => $request->specialization ?? null,
                    'designation' => $request->designation ?? null,
                    'birthdate' => $request->birthdate ?? null,
                    'gender' => $request->gender ?? null,
                    'status' => $request->status ?? 0,
                ]);
                break;
        }
    }
    public function delete($id)
    {
        $user = User::find($id);
        if ($user) {
            $user->delete();
            return json_encode(['success' => 'User deleted successfully.']);
        } else {
            return json_encode(['error' => 'User not found.']);
        }
    }

    public function changePassword(Request $request)
    {
        $validator = $request->validate([
            'password' => 'required|min:8|confirmed',
            'password_confirmation' => 'required'
        ], [
            'password.min' => 'Password must be at least 8 characters long.',
            'password.confirmed' => 'Password confirmation does not match.',
        ]);

        $user = User::find($request->user_id);
        if ($user) {
            $user->password = Hash::make($request->password);
            $user->save();
            return response()->json([
                'type' => 'success',
                'message' => 'User password changed successfully.',
            ]);
        } else {
            return response()->json([
                'type' => 'error',
                'message' => 'User not found.',
            ]);
        }
    }
    public function changePrivilegePassword(Request $request)
    {
        $validator = $request->validate([
            'privilege_password' => 'required|min:8',
        ]);

        $user = User::find($request->user_id);
        if ($user) {
            $user->privilege_password = Hash::make($request->privilege_password);
            $user->save();
            return response()->json([
                'type' => 'success',
                'message' => 'Privilege user password changed successfully.',
            ]);
        } else {
            return response()->json([
                'type' => 'error',
                'message' => 'User not found.',
            ]);
        }
    }


    public function updateStatus(Request $request)
    {
        $user = User::find($request->id);

        if (!$user) {
            return response()->json(['success' => false, 'message' => 'User not found!'], 404);
        }
        $user->status = $request->status;
        $user->save();
        return response()->json([
            'success' => true,
            'message' => 'User status updated successfully!',
            'new_status' => $user->status
        ]);
    }
}
