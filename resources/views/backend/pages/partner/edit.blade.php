<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('partner.update', $partner->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>





    <div class="modal-body">
        <div class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="{{ $partner->title }}"
                        placeholder="Enter title">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Image (H:100px W:100px)</label>
                    <input type="file" class="form-control" name="image">
                    @if ($partner->image)
                        <img src="{{ asset($partner->image) }}" class="mt-2">
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label> Link</label>
                    <input type="text" class="form-control" name="link" value="{{ $partner->link }}"
                        placeholder="Enter Link">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $partner->serial }}"
                        placeholder="Enter serial">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $partner->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $partner->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>

        </div>
    </div>







    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
