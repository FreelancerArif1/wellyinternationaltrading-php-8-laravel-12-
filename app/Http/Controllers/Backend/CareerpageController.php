<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\Careerpage;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;
use Illuminate\Support\Str;

class CareerpageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        return view('backend.pages.careerpage.index');
    }

    public function emptyATableColumn(Request $request)
    {
        DB::table($request->table)->where('id', $request->id)->update([$request->column => null]);
        $basePath = 'uploads/careerpage/';
        $file = $request->file;
        $filename = explode('/', $file);
        $filename = end($filename);
        File::delete(public_path($basePath . $filename));

        return response()->json([
            'type' => 'success',
            'status' => 1,
            'message' => 'Deleted successfully!',
        ], 200);
    }
    public function list(Request $request)
    {
        $data = Careerpage::query();
        $data->orderBy('serial', 'asc');
        return Datatables::of($data)
            ->editColumn('banner_image', function ($row) {
                return '<img width="70" height="auto" src="' . $row->banner_image . '">';
            })
            ->editColumn('status', function ($row) {
                if ($row->status == 1) {
                    return 'Active';
                } else {
                    return 'Inactive';
                }
            })
            ->addColumn('action', function ($row) {
                $btn = '';
                if (Helper::hasRight('user.edit')) {
                    $btn = $btn . '<a title="Edit this item." data-url="/admin/careerpage/' . $row->id . '/edit" class="edit_modal_show btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }

                if (Helper::hasRight('user.delete')) {
                    $btn = $btn . '<a title="Delete this item." class="ml-2 deleteBtn btn btn-sm btn-danger ms-1" data-url="/admin/careerpage/' . $row->id . '"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
                return $btn;
            })
            ->rawColumns(['banner_image', 'status', 'action'])->make(true);
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = $this->Validation($request);
        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
        $data = $request->except(['block_one_image', 'banner_image', 'block_two_image', 'block_three_image', 'block_four_image', 'block_five_image', 'block_two_video']);
        if ($request->hasFile('banner_image')) {
            $data['banner_image'] = $this->fileUpload($request, 'banner_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_one_image')) {
            $data['block_one_image'] = $this->fileUpload($request, 'block_one_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_two_image')) {
            $data['block_two_image'] = $this->fileUpload($request, 'block_two_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_two_video')) {
            $data['block_two_video'] = $this->fileUpload($request, 'block_two_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_three_image')) {
            $data['block_three_image'] = $this->fileUpload($request, 'block_three_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_four_image')) {
            $data['block_four_image'] = $this->fileUpload($request, 'block_four_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_five_image')) {
            $data['block_five_image'] = $this->fileUpload($request, 'block_five_image', '/uploads/careerpage/');
        }

        $careerpage = Careerpage::create($data);
        return response()->json([
            'type' => 'success',
            'return' => $careerpage,
            'status' => 1,
            'message' => 'Careerpage added Successfully !',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // return view('backend.careerpage.edit');
        echo 'ddd';
        exit;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $careerpage = Careerpage::find($id);
        return view('backend.pages.careerpage.edit', ['careerpage' => $careerpage]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validator = $this->Validation($request);

        if ($validator->fails()) {
            return response()->json([
                'type' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        // Find the careerpage
        $careerpage = Careerpage::findOrFail($id);

        // Prepare data
        $data = $request->except(['block_one_image', 'banner_image']);

        $data = $request->except([
            'banner_image',
            'block_one_image',
            'block_two_image',
            'block_three_image',
            'block_four_image',
            'block_five_image',

            'block_one_video',
            'block_two_video',
            'block_three_video',
            'block_four_video',
            'block_five_video',
        ]);


        if ($request->hasFile('banner_image')) {
            $data['banner_image'] = $this->fileUpload($request, 'banner_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_one_image')) {
            $data['block_one_image'] = $this->fileUpload($request, 'block_one_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_two_image')) {
            $data['block_two_image'] = $this->fileUpload($request, 'block_two_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_three_image')) {
            $data['block_three_image'] = $this->fileUpload($request, 'block_three_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_four_image')) {
            $data['block_four_image'] = $this->fileUpload($request, 'block_four_image', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_five_image')) {
            $data['block_five_image'] = $this->fileUpload($request, 'block_five_image', '/uploads/careerpage/');
        }


        if ($request->hasFile('banner_video')) {
            $data['banner_video'] = $this->fileUpload($request, 'banner_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_one_video')) {
            $data['block_one_video'] = $this->fileUpload($request, 'block_one_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_two_video')) {
            $data['block_two_video'] = $this->fileUpload($request, 'block_two_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_three_video')) {
            $data['block_three_video'] = $this->fileUpload($request, 'block_three_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_four_video')) {
            $data['block_four_video'] = $this->fileUpload($request, 'block_four_video', '/uploads/careerpage/');
        }
        if ($request->hasFile('block_five_video')) {
            $data['block_five_video'] = $this->fileUpload($request, 'block_five_video', '/uploads/careerpage/');
        }



        $careerpage->update($data);

        return response()->json([
            'type' => 'success',
            'return' => $careerpage,
            'status' => 1,
            'message' => 'Careerpage updated successfully!',
        ], 200);
    }


    public function destroy(string $id)
    {
        $careerpage = Careerpage::findOrFail($id);
        if ($careerpage) {
            $basePath = 'uploads/careerpage/';

            // Banner
            if ($careerpage->banner_image && File::exists(public_path($basePath . $careerpage->banner_image))) {
                File::delete(public_path($basePath . $careerpage->banner_image));
            }

            if ($careerpage->banner_video && File::exists(public_path($basePath . $careerpage->banner_video))) {
                File::delete(public_path($basePath . $careerpage->banner_video));
            }


            // Block One
            if ($careerpage->block_one_image && File::exists(public_path($basePath . $careerpage->block_one_image))) {
                File::delete(public_path($basePath . $careerpage->block_one_image));
            }

            if ($careerpage->block_one_video && File::exists(public_path($basePath . $careerpage->block_one_video))) {
                File::delete(public_path($basePath . $careerpage->block_one_video));
            }


            // Block Two
            if ($careerpage->block_two_image && File::exists(public_path($basePath . $careerpage->block_two_image))) {
                File::delete(public_path($basePath . $careerpage->block_two_image));
            }

            if ($careerpage->block_two_video && File::exists(public_path($basePath . $careerpage->block_two_video))) {
                File::delete(public_path($basePath . $careerpage->block_two_video));
            }


            // Block Three
            if ($careerpage->block_three_image && File::exists(public_path($basePath . $careerpage->block_three_image))) {
                File::delete(public_path($basePath . $careerpage->block_three_image));
            }

            if ($careerpage->block_three_video && File::exists(public_path($basePath . $careerpage->block_three_video))) {
                File::delete(public_path($basePath . $careerpage->block_three_video));
            }


            // Block Four
            if ($careerpage->block_four_image && File::exists(public_path($basePath . $careerpage->block_four_image))) {
                File::delete(public_path($basePath . $careerpage->block_four_image));
            }

            if ($careerpage->block_four_video && File::exists(public_path($basePath . $careerpage->block_four_video))) {
                File::delete(public_path($basePath . $careerpage->block_four_video));
            }


            // Block Five
            if ($careerpage->block_five_image && File::exists(public_path($basePath . $careerpage->block_five_image))) {
                File::delete(public_path($basePath . $careerpage->block_five_image));
            }

            if ($careerpage->block_five_video && File::exists(public_path($basePath . $careerpage->block_five_video))) {
                File::delete(public_path($basePath . $careerpage->block_five_video));
            }



            $careerpage->delete();

            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'Careerpage deleted successfully!',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'Careerpage not found',
            ], 200);
        }
    }
    protected function Validation($request)
    {
        return Validator::make($request->except(['_token', '_method']), [
            'banner_title'          => 'required|string|max:255',
            'block_two_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'banner_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'block_one_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'block_two_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'block_three_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'block_four_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'block_five_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
        ]);
        return $validator;
    }
    protected function fileUpload($request, $file_name, $folder)
    {
        if (!$request->hasFile($file_name)) {
            return null;
        }

        $file = $request->file($file_name);
        $extension = strtolower($file->getClientOriginalExtension());

        // UNIQUE filename (super safe)
        $filename = uniqid() . '_' . time() . '.' . $extension;

        // Make folder if not exists
        if (!file_exists(public_path($folder))) {
            mkdir(public_path($folder), 0777, true);
        }

        $full_path = public_path($folder . $filename);

        // Check if banner_image
        $image_extensions = ['jpg', 'jpeg', 'png', 'webp', 'gif'];
        // Check if block_one_image
        $video_extensions = ['mp4', 'mov', 'avi', 'webm', 'mkv'];

        if (in_array($extension, $image_extensions)) {
            // banner_image processing
            Image::read($file)
                // ->resize(800, 800)
                ->save($full_path);
        } elseif (in_array($extension, $video_extensions)) {
            // store block_one_image normally
            $file->move(public_path($folder), $filename);
        } else {
            return null; // unsupported file
        }

        return $folder . $filename;  // return path
    }
}
