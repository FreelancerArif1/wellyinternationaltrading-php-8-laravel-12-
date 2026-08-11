<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\JobApplied;
use App\Models\JobCircular;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;
use Illuminate\Support\Str;

class JobAppliedController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $positions = JobCircular::where('status', 1)->select('id', 'job_slug', 'job_title')->get();
        return view('backend.pages.careerapply.index', compact('positions'));
    }
    public function list(Request $request)
    {
        $data = JobApplied::query();
        $data->orderBy('serial', 'asc');
        return Datatables::of($data)
            ->editColumn('position', function ($row) {
                $position = JobCircular::where('id', $row->job_id)->select('id', 'job_slug', 'job_title')->first();
                if ($position) {
                    return $position->job_title;
                } else {
                    return  null;
                }
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
                    $btn = $btn . '<a title="Edit this item." data-url="/admin/careerapply/' . $row->id . '/edit" class="edit_modal_show btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }

                if (Helper::hasRight('user.delete')) {
                    $btn = $btn . '<a title="Delete this item." class="ml-2 deleteBtn btn btn-sm btn-danger ms-1" data-url="/admin/careerapply/' . $row->id . '"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
                return $btn;
            })
            ->rawColumns(['cv', 'status', 'action'])->make(true);
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
        $data = $request->except(['cv']);
        if ($request->hasFile('cv')) {
            $data['cv'] = $this->fileUpload($request, 'cv', '/uploads/careerapply/');
        }
        $careerapply = JobApplied::create($data);
        return response()->json([
            'type' => 'success',
            'return' => $careerapply,
            'status' => 1,
            'message' => 'JobApplied added Successfully !',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // return view('backend.careerapply.edit');
        echo 'ddd';
        exit;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $positions = JobCircular::where('status', 1)->select('id', 'job_slug', 'job_title')->get();
        $applied = JobApplied::find($id);
        return view('backend.pages.careerapply.edit', ['applied' => $applied, 'positions' => $positions]);
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

        // Find the careerapply
        $careerapply = JobApplied::findOrFail($id);

        // Prepare data
        $data = $request->except(['cv']);
        if ($request->hasFile('cv')) {
            if ($careerapply->cv && File::exists(public_path($careerapply->cv))) {
                File::delete(public_path($careerapply->cv));
            }
            $data['cv'] = $this->fileUpload($request, 'cv', '/uploads/careerapply/');
        }


        // Update the careerapply
        $careerapply->update($data);

        return response()->json([
            'type' => 'success',
            'return' => $careerapply,
            'status' => 1,
            'message' => 'JobApplied updated successfully!',
        ], 200);
    }


    public function destroy(string $id)
    {
        $careerapply = JobApplied::findOrFail($id);
        if ($careerapply) {
            if ($careerapply->cv && File::exists(public_path($careerapply->cv))) {
                File::delete(public_path($careerapply->cv));
            }
            if ($careerapply->video && File::exists(public_path($careerapply->video))) {
                File::delete(public_path($careerapply->video));
            }
            $careerapply->delete();

            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'JobApplied deleted successfully!',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'JobApplied not found',
            ], 200);
        }
    }
    protected function Validation($request)
    {
        return Validator::make($request->except(['_token', '_method']), [
            'name'          => 'required|string|max:255',
            'email'    => 'required|string',
            'phone'    => 'required|string',
            'cover_later'    => 'required|string',
            'cv' => 'nullable|mimes:pdf,doc,docx|max:102400',
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
        $filename = uniqid() . '_' . time() . '.' . $extension;

        if (!file_exists(public_path($folder))) {
            mkdir(public_path($folder), 0777, true);
        }

        $full_path = public_path($folder . $filename);

        $image_extensions = ['jpg', 'jpeg', 'png', 'webp', 'gif'];
        $video_extensions = ['mp4', 'mov', 'avi', 'webm', 'mkv'];
        $document_extensions = ['pdf', 'doc', 'docx'];

        if (in_array($extension, $image_extensions)) {

            // Image upload
            Image::read($file)->save($full_path);
        } elseif (in_array($extension, $video_extensions)) {

            // Video upload
            $file->move(public_path($folder), $filename);
        } elseif (in_array($extension, $document_extensions)) {

            // Document upload
            $file->move(public_path($folder), $filename);
        } else {
            return null; // unsupported file type
        }

        return $folder . $filename;
    }
}
