<!-- Modal -->
<div class="modal fade" id="CreateModalOpen" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="CreateForm" action="{{ route('portfolio.store') }}" method="POST" enctype="multipart/form-data">

                @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add New</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <div class="server_side_error"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" name="title" placeholder="Enter title">
                            </div>
                        </div>




                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Image (H:700px W:1000px) </label>
                                <input type="file" class="form-control" name="image">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Video</label>
                                <input type="file" class="form-control" name="video">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>YouTube Video Link</label>
                                <input type="text" class="form-control" name="youtube_video"
                                    placeholder="Enter youTube video link">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Button Name</label>
                                <input type="text" class="form-control" name="button_text"
                                    placeholder="Enter Website Link">
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Button Link</label>
                                <input type="text" class="form-control" name="button_link"
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
                                            <option value="{{ $company->id }}">{{ $company->title }}</option>
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="col-md-6">
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
