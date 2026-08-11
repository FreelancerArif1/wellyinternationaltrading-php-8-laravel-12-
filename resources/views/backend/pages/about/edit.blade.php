<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('about.update', $about->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>





    <div class="modal-body">
        <div class="server_side_error"></div>
        <div class="row">

            <!-- ===== Banner ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Banner Title</label>
                    <input type="text" class="form-control" name="baner_title" value="{{ $about->baner_title }}"
                        placeholder="Enter banner title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Banner Description</label>
                    <textarea class="form-control tinymceText" name="baner_description" placeholder="Enter description" rows="3">{!! $about->baner_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Banner Image (H:520px W:1920px)</label>
                    <input type="file" class="form-control" name="baner_image">
                    @if ($about->baner_image)
                        <img src="{{ asset($about->baner_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <!-- ===== Story ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Story Title</label>
                    <input type="text" class="form-control" name="story_title" value="{{ $about->story_title }}"
                        placeholder="Enter story title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Story Description</label>
                    <textarea class="form-control tinymceText" name="story_description" rows="3">{!! $about->story_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Story Image</label>
                    <input type="file" class="form-control" name="story_image">
                    @if ($about->story_image)
                        <img src="{{ asset($about->story_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <!-- ===== Mission ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Mission Title</label>
                    <input type="text" class="form-control" name="mission_title" value="{{ $about->mission_title }}"
                        placeholder="Enter mission title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Mission Description</label>
                    <textarea class="form-control tinymceText" name="mission_description" rows="3">{!! $about->mission_description !!}</textarea>
                </div>
            </div>

            {{-- <div class="col-md-6">
                <div class="form-group">
                    <label>Mission Image</label>
                    <input type="file" class="form-control" name="mission_image">
                    @if ($about->mission_image)
                        <img src="{{ asset($about->mission_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div> --}}

            <!-- ===== Vision ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Vision Title</label>
                    <input type="text" class="form-control" name="vision_title" value="{{ $about->vision_title }}"
                        placeholder="Enter vision title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Vision Description</label>
                    <textarea class="form-control tinymceText" name="vision_description" rows="3">{!! $about->vision_description !!}</textarea>
                </div>
            </div>

            {{-- <div class="col-md-6">
                <div class="form-group">
                    <label>Vision Image</label>
                    <input type="file" class="form-control" name="vision_image">
                    @if ($about->vision_image)
                        <img src="{{ asset($about->vision_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div> --}}

            <!-- ===== Values ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Values Title</label>
                    <input type="text" class="form-control" name="values_title" value="{{ $about->values_title }}"
                        placeholder="Enter values title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Values Description</label>
                    <textarea class="form-control tinymceText" name="values_description" rows="3">{!! $about->values_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Values Image</label>
                    <input type="file" class="form-control" name="values_image">
                    @if ($about->values_image)
                        <img src="{{ asset($about->values_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <!-- ===== Leadership ===== -->
            <div class="col-md-12">
                <div class="form-group">
                    <label>Leadership Title</label>
                    <input type="text" class="form-control" name="leadership_title"
                        value="{{ $about->leadership_title }}" placeholder="Enter leadership title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Leadership Description</label>
                    <textarea class="form-control tinymceText" name="leadership_description" rows="3">{!! $about->leadership_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Leadership Image</label>
                    <input type="file" class="form-control" name="leadership_image">
                    @if ($about->leadership_image)
                        <img src="{{ asset($about->leadership_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

        </div>
    </div>








    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
