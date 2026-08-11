<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('careerapply.update', $applied->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>





    <div class="modal-body">
        <div class="server_side_error"></div>
        <div class="row">


            <div class="col-md-6">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Enter name"
                        value="{{ $applied?->name }}">
                </div>
            </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email" placeholder="Enter email"
                        value="{{ $applied?->email }}">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Position</label>
                    <select name="job_id" class="form-control">
                        <option disabled>--Select Position --</option>
                        @if ($positions)
                            @foreach ($positions as $item)
                                <option value="{{ $item->id }}"
                                    {{ $applied?->job_id == $item->id ? 'selected' : '' }}>
                                    {{ $item->job_title }}
                                </option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control" name="phone" placeholder="Enter phone"
                        value="{{ $applied?->phone }}">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>Cover Letter</label>
                    <textarea class="form-control tinymceText" name="cover_later" placeholder="Enter cover letter" rows="3">{{ $applied?->cover_later }}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>CV / Document</label>
                    <input type="file" class="form-control" name="cv" accept=".pdf, .doc, .docx">
                    @if ($applied?->cv)
                        <a href="{{ asset($applied?->cv) }}" target="_blank" class="btn btn-sm btn-primary mt-2">
                            View Current File
                        </a>
                    @endif
                </div>
            </div>

        </div>
    </div>








    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
