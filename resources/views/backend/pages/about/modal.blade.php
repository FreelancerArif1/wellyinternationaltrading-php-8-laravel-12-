<!-- Modal -->
<div class="modal fade" id="CreateModalOpen" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="CreateForm" action="{{ route('about.store') }}" method="POST" enctype="multipart/form-data">

                @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add New</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <div class="server_side_error"></div>
                    <div class="row">
                        <!-- ===== Banner ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Banner Title</label>
                                <input type="text" class="form-control" name="baner_title"
                                    placeholder="Enter banner title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Banner Description</label>
                                <textarea class="form-control tinymceText" name="baner_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Banner Image (H:520px W:1920px)</label>
                                <input type="file" class="form-control" name="baner_image">
                            </div>
                        </div>

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Banner Video</label>
                                <input type="file" class="form-control" name="baner_video">
                            </div>
                        </div> --}}


                        <!-- ===== Story ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Story Title</label>
                                <input type="text" class="form-control" name="story_title"
                                    placeholder="Enter story title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Story Description</label>
                                <textarea class="form-control tinymceText" name="story_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Story Image</label>
                                <input type="file" class="form-control" name="story_image">
                            </div>
                        </div>

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Story Background</label>
                                <input type="file" class="form-control" name="story_background">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Story Video</label>
                                <input type="file" class="form-control" name="story_video">
                            </div>
                        </div> --}}


                        <!-- ===== Mission ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mission Title</label>
                                <input type="text" class="form-control" name="mission_title"
                                    placeholder="Enter mission title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mission Description</label>
                                <textarea class="form-control tinymceText" name="mission_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Mission Image</label>
                                <input type="file" class="form-control" name="mission_image">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Mission Background</label>
                                <input type="file" class="form-control" name="mission_background">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Mission Video</label>
                                <input type="file" class="form-control" name="mission_video">
                            </div>
                        </div> --}}


                        <!-- ===== Vision ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Vision Title</label>
                                <input type="text" class="form-control" name="vision_title"
                                    placeholder="Enter vision title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mission Description</label>
                                <textarea class="form-control tinymceText" name="mission_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>
                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Vision Image</label>
                                <input type="file" class="form-control" name="vision_image">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Vision Background</label>
                                <input type="file" class="form-control" name="vision_background">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Vision Video</label>
                                <input type="file" class="form-control" name="vision_video">
                            </div>
                        </div> --}}


                        <!-- ===== Values ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Values Title</label>
                                <input type="text" class="form-control" name="values_title"
                                    placeholder="Enter values title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Values Description</label>
                                <textarea class="form-control tinymceText" name="values_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Values Image</label>
                                <input type="file" class="form-control" name="values_image">
                            </div>
                        </div>

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Values Background</label>
                                <input type="file" class="form-control" name="values_background">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Values Video</label>
                                <input type="file" class="form-control" name="values_video">
                            </div>
                        </div> --}}


                        <!-- ===== Leadership ===== -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Leadership Title</label>
                                <input type="text" class="form-control" name="leadership_title"
                                    placeholder="Enter leadership title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Leadership Description</label>
                                <textarea class="form-control tinymceText" name="leadership_description" placeholder="Enter description"
                                    rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Leadership Image</label>
                                <input type="file" class="form-control" name="leadership_image">
                            </div>
                        </div>

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Leadership Background</label>
                                <input type="file" class="form-control" name="leadership_background">
                            </div>
                        </div> --}}

                        {{-- <div class="col-md-6">
                            <div class="form-group">
                                <label>Leadership Video</label>
                                <input type="file" class="form-control" name="leadership_video">
                            </div>
                        </div> --}}
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
