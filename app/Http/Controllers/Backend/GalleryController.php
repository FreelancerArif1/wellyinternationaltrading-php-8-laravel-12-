<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\Gallery;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;
use Illuminate\Support\Str;
use App\Models\Gallerycategory;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Gallerycategory::where('status', 1)->orderBy('serial', 'asc')->get();
        return view('backend.pages.gallery.index', compact('categories'));
    }
    public function list(Request $request)
    {
        $data = Gallery::query();
        $data->orderBy('serial', 'asc');
        return Datatables::of($data)
            ->editColumn('image', function ($row) {
                return '<img width="70" height="auto" src="' . $row->image . '">';
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
                    $btn = $btn . '<a title="Edit this item." data-url="/admin/gallery/' . $row->id . '/edit" class="edit_modal_show btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }

                if (Helper::hasRight('user.delete')) {
                    $btn = $btn . '<a title="Delete this item." class="ml-2 deleteBtn btn btn-sm btn-danger ms-1" data-url="/admin/gallery/' . $row->id . '"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
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
        $data = $request->except(['video', 'image', '_token']);
        if ($request->hasFile('image')) {
            $data['image'] = $this->fileUpload($request, 'image', '/uploads/gallery/');
        }
        if ($request->hasFile('video')) {
            $data['video'] = $this->fileUpload($request, 'video', '/uploads/gallery/');
        }
        $data['slug'] = Str::slug($request->title);
        $gallery = Gallery::create($data);
        return response()->json([
            'type' => 'success',
            'return' => $gallery,
            'status' => 1,
            'message' => 'Gallery added Successfully !',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // return view('backend.gallery.edit');
        echo 'ddd';
        exit;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $gallery = Gallery::find($id);
        $categories = Gallerycategory::where('status', 1)->orderBy('serial', 'asc')->get();
        return view('backend.pages.gallery.edit', ['gallery' => $gallery, 'categories' => $categories]);
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

        $gallery = Gallery::findOrFail($id);

        // Prepare data excluding files
        $data = $request->except(['video', 'image']);

        // Handle Image Update
        if ($request->hasFile('image')) {
            if ($gallery->image && File::exists(public_path($gallery->image))) {
                File::delete(public_path($gallery->image));
            }
            $data['image'] = $this->fileUpload($request, 'image', '/uploads/gallery/');
        }

        // Handle Video Update
        if ($request->hasFile('video')) {
            if ($gallery->video && File::exists(public_path($gallery->video))) {
                File::delete(public_path($gallery->video));
            }
            $data['video'] = $this->fileUpload($request, 'video', '/uploads/gallery/');
        }

        // Generate slug if title is present
        if ($request->has('title')) {
            $data['slug'] = Str::slug($request->title);
        }

        // Performs an UPDATE query on existing row ($id)
        $gallery->update($data);

        return response()->json([
            'type' => 'success',
            'return' => $gallery->fresh(), // Return updated model instance
            'status' => 1,
            'message' => 'Gallery updated successfully!',
        ], 200);
    }








    public function destroy(string $id)
    {
        $gallery = Gallery::findOrFail($id);
        if ($gallery) {
            if ($gallery->image && File::exists(public_path($gallery->image))) {
                File::delete(public_path($gallery->image));
            }
            if ($gallery->video && File::exists(public_path($gallery->video))) {
                File::delete(public_path($gallery->video));
            }
            $gallery->delete();

            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'Gallery deleted successfully!',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'Gallery not found',
            ], 200);
        }
    }
    protected function Validation($request)
    {
        return Validator::make($request->except(['_token', '_method']), [
            'title'          => 'required|string|max:255',
            'description'    => 'nullable|string',
            'button_link'    => 'nullable|url',
            'video' => 'nullable|mimes:mp4,mov,avi,webm,mkv|max:200000',
            'image' => 'nullable|mimes:jpg,jpeg,png,webp|max:2048',
            'youtube_video'  => 'nullable|url',
            'serial'         => 'required|integer',
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
                // ->resize(800, 800)
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
