<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('slider.update', $slider->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>
    <div class="modal-body">
        <div class="row">
            <div class="server_side_error"></div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>title</label>
                    <input type="text" class="form-control" name="title" value="{{ $slider->title }}"
                        placeholder="Enter title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control tinymceText" name="description" rows="3" placeholder="Enter Description">{!! $slider->description !!}</textarea>
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Right Title 1</label>
                    <input type="text" class="form-control" name="right_title_1" value="{{ $slider->right_title_1 }}"
                        placeholder="Enter Title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Right Description 1</label>
                    <textarea class="form-control tinymceText" name="right_description_1" placeholder="Enter Description" rows="3">{!! $slider->right_description_1 !!}</textarea>
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Right Title 2</label>
                    <input type="text" class="form-control" name="right_title_2" value="{{ $slider->right_title_2 }}"
                        placeholder="Enter Title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Right Description 2</label>
                    <textarea class="form-control tinymceText" name="right_description_2" placeholder="Enter Description" rows="3">{!! $slider->right_description_2 !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Website Link</label>
                    <input type="text" class="form-control" name="button_link" value="{{ $slider->button_link }}"
                        placeholder="Enter Website Link">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>YouTube Video Link</label>
                    <input type="text" class="form-control" name="youtube_video" value="{{ $slider->youtube_video }}"
                        placeholder="Enter YouTube Video Link">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Image (H:1920px W:1000px)</label>
                    <input type="file" class="form-control" name="image">
                    @if ($slider->image)
                        <img src="{{ $slider->image }}" width="120" class="mt-2" alt="">
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Company Logo</label>
                    <input type="file" class="form-control" name="company_logo">
                    @if ($slider->company_logo)
                        <img src="{{ $slider->company_logo }}" width="120" class="mt-2" alt="">
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Video</label>
                    <input type="file" class="form-control" name="video">
                    @if ($slider->video)
                        <video width="100%" height="120" class="mt-2" controls>
                            <source src="{{ $slider->video }}" type="video/mp4">
                        </video>
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Select Company</label>
                    <select name="slier_for" class="form-control">
                        <option disabled selected>--select Company--</option>
                        @if ($companies)
                            @foreach ($companies as $company)
                                <option value="{{ $company->id }}" @if ($slider->slier_for == $company->id) selected @endif>
                                    {{ $company->title }}</option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>


            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $slider->serial }}"
                        placeholder="Enter Serial">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $slider->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $slider->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
