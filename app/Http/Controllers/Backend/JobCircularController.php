<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Helper;
use App\Models\User;
use App\Models\JobCircular;
use Yajra\DataTables\DataTables;
use App\Models\LeadingAndGovernor;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Laravel\Facades\Image;
use Illuminate\Support\Str;

class JobCircularController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('backend.pages.circular.index');
    }
    public function list(Request $request)
    {
        $data = JobCircular::query();
        $data->orderBy('serial', 'asc');
        return Datatables::of($data)
            ->editColumn('position', function ($row) {
                return  $row->job_id;
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
                    $btn = $btn . '<a title="Edit this item." data-url="/admin/circular/' . $row->id . '/edit" class="edit_modal_show btn btn-sm btn-primary "><i class="fa-solid fa-pencil"></i></a>';
                }

                if (Helper::hasRight('user.delete')) {
                    $btn = $btn . '<a title="Delete this item." class="ml-2 deleteBtn btn btn-sm btn-danger ms-1" data-url="/admin/circular/' . $row->id . '"><i class="fa fa-trash" aria-hidden="true"></i></a>';
                }
                return $btn;
            })
            ->rawColumns(['pdf', 'status', 'action'])->make(true);
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
        $data = $request->except(['pdf']);
        if ($request->hasFile('pdf')) {
            $data['pdf'] = $this->fileUpload($request, 'pdf', '/uploads/circular/');
        }
        $data['job_slug'] = Str::slug($request->job_title);
        $circular = JobCircular::create($data);
        return response()->json([
            'type' => 'success',
            'return' => $circular,
            'status' => 1,
            'message' => 'JobCircular added Successfully !',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // return view('backend.circular.edit');
        echo 'ddd';
        exit;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $circular = JobCircular::find($id);
        return view('backend.pages.circular.edit', ['circular' => $circular]);
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

        // Find the circular
        $circular = JobCircular::findOrFail($id);

        // Prepare data
        $data = $request->except(['pdf']);
        if ($request->hasFile('pdf')) {
            if ($circular->pdf && File::exists(public_path($circular->pdf))) {
                File::delete(public_path($circular->pdf));
            }
            $data['pdf'] = $this->fileUpload($request, 'pdf', '/uploads/circular/');
        }

        $data['job_slug'] = Str::slug($request->job_title);
        // Update the circular
        $circular->update($data);

        return response()->json([
            'type' => 'success',
            'return' => $circular,
            'status' => 1,
            'message' => 'JobCircular updated successfully!',
        ], 200);
    }


    public function destroy(string $id)
    {
        $circular = JobCircular::findOrFail($id);
        if ($circular) {
            if ($circular->pdf && File::exists(public_path($circular->pdf))) {
                File::delete(public_path($circular->pdf));
            }

            $circular->delete();

            return response()->json([
                'type' => 'success',
                'status' => 1,
                'message' => 'JobCircular deleted successfully!',
            ], 200);
        } else {
            return response()->json([
                'type' => 'error',
                'status' => 0,
                'message' => 'JobCircular not found',
            ], 200);
        }
    }
    protected function Validation($request)
    {
        return Validator::make($request->except(['_token', '_method']), [
            'job_title'          => 'required|string|max:255',
            'job_description'    => 'nullable|string',
            'developer_note'    => 'nullable|string',
            'start_date' => 'required|date|before_or_equal:end_date',
            'end_date'   => 'required|date|after_or_equal:start_date',
            'pdf' => 'nullable|mimes:pdf|max:102400',
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
