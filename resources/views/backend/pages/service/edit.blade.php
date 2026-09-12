<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('service.update', $service->id) }}">
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
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="{{ $service->title }}"
                        placeholder="Enter title">
                </div>
            </div>


            <div class="col-md-12">
                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control tinymceText" name="description" placeholder="Enter description" rows="3">{!! $service->description !!}</textarea>
                </div>
            </div>



            <div class="col-md-12">
                <div class="form-group">
                    <label>Icon</label>
                    <input type="text" class="form-control" name="icon" value="{{ $service->icon }}" placeholder='<i class="fa fa-facebook" aria-hidden="true"></i>'>
                    <b>Search Icon </b> <a  target="__blank" href="https://fontawesome.com/v4/icons/">Here</a>
                </div>
            </div>



            <div class="col-md-6 company_logo">
                <div class="form-group">
                    <label>Image (H:800px W:800px)</label>
                    <input type="file" class="form-control" name="image">
                    @if ($service->image)
                        <img src="{{ asset($service->image) }}" width="120" height="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Select Category</label>
                    <select name="category_id" class="form-control">
                        <option disabled selected>--select Category--</option>
                           @if ($servicecategories)
                                @foreach ($servicecategories as $servicecategory)
                                    <option value="{{ $servicecategory->id }}" @if ($service->category_id == $servicecategory->id) selected @endif>{{ $servicecategory->title }}</option>
                                @endforeach
                            @endif
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Serial</label>
                    <input type="text" class="form-control" name="serial" value="{{ $service->serial }}"
                        placeholder="Enter serial">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $service->status == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ $service->status == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>
        </div>
    </div>







    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
