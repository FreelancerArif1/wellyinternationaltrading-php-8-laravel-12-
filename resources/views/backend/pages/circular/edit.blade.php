<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('circular.update', $circular->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>




    <div class="modal-body">
        <div class="server_side_error"></div>
        <div class="row">

            <div class="col-md-12">
                <div class="form-group">
                    <label>Job Title</label>
                    <input type="text" class="form-control" name="job_title" value="{{ $circular->job_title }}"
                        placeholder="Enter title">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Start Date</label>
                    <input type="date" class="form-control" name="start_date"
                        value="{{ \Carbon\Carbon::parse($circular->start_date)->format('Y-m-d') }}">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>End Date</label>
                    <input type="date" class="form-control" name="end_date"
                        value="{{ \Carbon\Carbon::parse($circular->end_date)->format('Y-m-d') }}">
                </div>
            </div>


            <div class="col-md-12">
                <div class="form-group">
                    <label>Job Description</label>
                    <textarea class="form-control tinymceText" name="job_description" placeholder="Enter description" rows="3">{!! $circular->job_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Optional Notes</label>
                    <textarea class="form-control tinymceText" name="developer_note" placeholder="Enter description" rows="3">{!! $circular->developer_note !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>PDF / DOC / DOCX</label>
                    <input type="file" class="form-control" name="pdf" accept=".pdf, .doc, .docx">

                    @if ($circular->pdf)
                        <a href="{{ asset($circular->pdf) }}" target="_blank" class="btn btn-sm btn-primary mt-2">
                            View Current File
                        </a>
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $circular->serial }}"
                        placeholder="Enter serial">
                </div>
            </div>



            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $circular->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $circular->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>

        </div>
    </div>






    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
