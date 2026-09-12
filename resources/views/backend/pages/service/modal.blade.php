<!-- Modal -->
<div class="modal fade" id="CreateModalOpen" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="CreateForm" action="{{ route('service.store') }}" method="POST" enctype="multipart/form-data">

                @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add New</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <div class="server_side_error"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" name="title" placeholder="Enter title">
                            </div>
                        </div>


                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control tinymceText" name="description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>


                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Icon</label>
                                <input type="text" class="form-control" name="icon" placeholder='<i class="fa fa-facebook" aria-hidden="true"></i>'>
                                <b>Search Icon </b> <a target="__blank" href="https://fontawesome.com/v4/icons/">Here</a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Image (H:700px W:1000px) </label>
                                <input type="file" class="form-control" name="image">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Select Category</label>
                                <select name="category_id" class="form-control">
                                    <option disabled selected>--select Category--</option>
                                    @if ($servicecategories)
                                        @foreach ($servicecategories as $servicecategory)
                                            <option value="{{ $servicecategory->id }}">{{ $servicecategory->title }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Serial</label>
                                <input type="text" class="form-control" name="serial" placeholder="Enter serial">
                            </div>
                        </div>


                    </div>
                </div>


                <div class="modal-footer">
                    <button type="submit" id="CreateModalSubmitBtn" class="btn btn-sm btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

{{-- edit modal  --}}



<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">



        </div>
    </div>
</div>
