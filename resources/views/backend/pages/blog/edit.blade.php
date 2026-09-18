<form id="EditForm" action="{{ route('blog.update', $blog->id)}}" method="post" enctype="multipart/form-data">
    @csrf 
    @method('PUT')
    
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Blog Update</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"><i class="fa-solid fa-xmark"></i></span>
        </button>
    </div>


    <div class="modal-body">
        <div class="server_side_error"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="{{ $blog->title }}" placeholder="Enter title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Banner short description</label>
                    <textarea class="form-control" name="short_description" placeholder="Enter Banner short description" rows="3">{!! $blog->short_description !!}</textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control tinymceText" name="description" placeholder="Enter description" rows="3">{!! $blog->description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Image (H:700px W:1000px) </label>
                    <input type="file" class="form-control" name="image">
                    @if ($blog->image)
                        <img src="{{ asset($blog->image) }}" width="120" height="auto" class="mt-2">
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Image (H:500px W:1500px) </label>
                    <input type="file" class="form-control" name="banner">
                    @if ($blog->banner)
                        <img src="{{ asset($blog->banner) }}" width="120" height="auto" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Select Category</label>
                    <select name="category_id" class="form-control">
                        <option disabled selected>--select Category--</option>
                        @if ($blogcategories)
                            @foreach ($blogcategories as $blogcategory)
                                <option value="{{ $blogcategory->id }}" @if ($blog->category_id == $blogcategory->id) selected @endif>{{ $blogcategory->title }}</option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $blog->serial }}" placeholder="Enter serial">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $blog->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $blog->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>


        </div>
    </div>

                
    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>