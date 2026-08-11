<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\About;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;

class AboutController extends Controller
{
    /**
     * Display a listing of the resource.
     */



    public function index()
    {
        $companies = About::where('status', 1)->get();
        return view('backend.pages.about.index', compact('companies'));
    }
    public function list(Request $request)
    {
        $data = About::query();
        $data;
        return Datatables::of($data)
            ->addColumn('action', function ($row) {
                $btn = '';
                if (Helper::hasRight('user.edit')) {
                    $btn = $btn . '<a title="Edit this item." data-url="/admin/about/' . $row->id . '/edit" class="edit_modal_show btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }

                // if (Helper::hasRight('about.delete')) {
                //     $btn = $btn . '<a title="Delete this item." class="ml-2 deleteBtn btn btn-sm btn-danger ms-1" data-url="/admin/about/' . $row->id . '"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                // }
                return $btn;
            })
            ->rawColumns(['image', 'status', 'action'])->make(true);
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
        $data = $request->except(['baner_image', 'story_image', 'mission_image', 'vision_image', 'values_image', 'leadership_image']);
        if ($request->hasFile('baner_image')) {
            $data['baner_image'] = $this->fileUpload($request, 'baner_image', '/uploads/about/');
        }
        if ($request->hasFile('story_image')) {
            $data['story_image'] = $this->fileUpload($request, 'story_image', '/uploads/about/');
        }
        if ($request->hasFile('mission_image')) {
            $data['mission_image'] = $this->fileUpload($request, 'mission_image', '/uploads/about/');
        }
        if ($request->hasFile('vision_image')) {
            $data['vision_image'] = $this->fileUpload($request, 'vision_image', '/uploads/about/');
        }
        if ($request->hasFile('values_image')) {
            $data['values_image'] = $this->fileUpload($request, 'values_image', '/uploads/about/');
        }
        if ($request->hasFile('leadership_image')) {
            $data['leadership_image'] = $this->fileUpload($request, 'leadership_image', '/uploads/about/');
        }


        $about = About::create($data);
        return response()->json([
            'type' => 'success',
            'return' => $about,
            'status' => 1,
            'message' => 'About added Successfully !',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // return view('backend.about.edit');
        return 'ddd';
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $about = About::find($id);
        $companies = About::where('status', 1)->get();
        return view('backend.pages.about.edit', ['about' => $about, 'companies' => $companies]);
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

        // Find the about
        $about = About::findOrFail($id);

        // Prepare data
        $data = $request->except(['baner_image', 'story_image', 'mission_image', 'vision_image', 'values_image', 'leadership_image']);
        if ($request->hasFile('baner_image')) {
            $data['baner_image'] = $this->fileUpload($request, 'baner_image', '/uploads/about/');
        }
        if ($request->hasFile('story_image')) {
            $data['story_image'] = $this->fileUpload($request, 'story_image', '/uploads/about/');
        }
        if ($request->hasFile('mission_image')) {
            $data['mission_image'] = $this->fileUpload($request, 'mission_image', '/uploads/about/');
        }
        if ($request->hasFile('vision_image')) {
            $data['vision_image'] = $this->fileUpload($request, 'vision_image', '/uploads/about/');
        }
        if ($request->hasFile('values_image')) {
            $data['values_image'] = $this->fileUpload($request, 'values_image', '/uploads/about/');
        }
        if ($request->hasFile('leadership_image')) {
            $data['leadership_image'] = $this->fileUpload($request, 'leadership_image', '/uploads/about/');
        }


        // Update the about
        $about->update($data);

        return response()->json([
            'type' => 'success',
            'return' => $about,
            'status' => 1,
            'message' => 'About updated successfully!',
        ], 200);
    }


    public function destroy(string $id)
    {
        $about = About::findOrFail($id);
        if ($about) {
            if ($about->image && File::exists(public_path($about->image))) {
                File::delete(public_path($about->image));
            }
            if ($about->video && File::exists(public_path($about->video))) {
                File::delete(public_path($about->video));
            }
            $about->delete();

            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'About deleted successfully!',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'About not found',
            ], 200);
        }
    }
    protected function Validation($request)
    {
        return Validator::make($request->except(['_token', '_method']), [
            'baner_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'story_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'mission_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'vision_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'values_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'leadership_video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',

            'baner_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'story_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'mission_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'vision_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'values_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'leadership_image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',


            'baner_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'story_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'mission_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'vision_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'values_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'leadership_background' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'status'      => 'integer',
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

        // Check if image
        $image_extensions = ['jpg', 'jpeg', 'png', 'webp', 'gif'];
        // Check if video
        $video_extensions = ['mp4', 'mov', 'avi', 'webm', 'mkv'];

        if (in_array($extension, $image_extensions)) {
            // image processing
            Image::read($file)
                // ->resize(253, 158)
                ->save($full_path);
        } elseif (in_array($extension, $video_extensions)) {
            // store video normally
            $file->move(public_path($folder), $filename);
        } else {
            return null; // unsupported file
        }

        return $folder . $filename;  // return path
    }
}
