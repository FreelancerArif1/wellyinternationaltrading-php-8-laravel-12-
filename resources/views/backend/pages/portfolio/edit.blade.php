<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('portfolio.update', $portfolio->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>





    <div class="modal-body">
        <div class="row">

            <div class="col-md-12">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="{{ $portfolio->title }}"
                        placeholder="Enter title">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Image (H:700px W:1000px) </label>
                    <input type="file" class="form-control" name="image">
                    @if ($portfolio->image)
                        <img src="{{ asset($portfolio->image) }}" width="120" height="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Video</label>
                    <input type="file" class="form-control" name="video">
                    @if ($portfolio->video)
                        <video src="{{ asset($portfolio->video) }}" width="100%" height="120" controls
                            class="mt-2"></video>
                    @endif
                </div>
            </div>



            <div class="col-md-6">
                <div class="form-group">
                    <label>Url</label>
                    <input type="text" class="form-control" name="button_link" value="{{ $portfolio->button_link }}"
                        placeholder="Enter Website Link">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Select Company</label>
                    <select name="slier_for" class="form-control">
                        <option disabled selected>--select Company--</option>
                        @if ($companies)
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}" @if ($portfolio->slier_for == $company->id) selected @endif>
                                    {{ $company->title }}</option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $portfolio->serial }}"
                        placeholder="Enter serial">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $portfolio->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $portfolio->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>

        </div>
    </div>







    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
