<!-- Modal -->
<div class="modal fade" id="CreateModalOpen" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="CreateForm" action="{{ route('sustainability.store') }}" method="POST"
                enctype="multipart/form-data">

                @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add New</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <div class="server_side_error"></div>

                    {{-- ================= Banner Section ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Banner Title</label>
                                <input type="text" class="form-control" name="banner_title"
                                    placeholder="Enter banner title">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Banner Description</label>
                                <textarea class="form-control tinymceText" name="banner_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Banner Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="banner_image">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Banner Video</label>
                                <input type="file" class="form-control" name="banner_video">
                            </div>
                        </div>
                    </div>
                    {{-- ================= End Banner Section ================= --}}



                    {{-- ================= Block One ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block One Title</label>
                                <input type="text" class="form-control" name="block_one_title"
                                    placeholder="Enter title">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block One Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="block_one_image">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block One Description</label>
                                <textarea class="form-control tinymceText" name="block_one_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block One Video</label>
                                <input type="file" class="form-control" name="block_one_video">
                            </div>
                        </div>

                    </div>
                    {{-- ================= End Block One ================= --}}



                    {{-- ================= Block Two ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Two Title</label>
                                <input type="text" class="form-control" name="block_two_title"
                                    placeholder="Enter title">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Two Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="block_two_image">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Two Description</label>
                                <textarea class="form-control tinymceText" name="block_two_description" placeholder="Enter description" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Two Video</label>
                                <input type="file" class="form-control" name="block_two_video">
                            </div>
                        </div>

                    </div>
                    {{-- ================= End Block Two ================= --}}



                    {{-- ================= Block Three ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Three Title</label>
                                <input type="text" class="form-control" name="block_three_title"
                                    placeholder="Enter title">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Three Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="block_three_image">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Three Description</label>
                                <textarea class="form-control tinymceText" name="block_three_description" placeholder="Enter description"
                                    rows="3"></textarea>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Three Video</label>
                                <input type="file" class="form-control" name="block_three_video">
                            </div>
                        </div>

                    </div>
                    {{-- ================= End Block Three ================= --}}



                    {{-- ================= Block Four ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Four Title</label>
                                <input type="text" class="form-control" name="block_four_title"
                                    placeholder="Enter title">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Four Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="block_four_image">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Four Description</label>
                                <textarea class="form-control tinymceText" name="block_four_description" placeholder="Enter description"
                                    rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Four Video</label>
                                <input type="file" class="form-control" name="block_four_video">
                            </div>
                        </div>

                    </div>
                    {{-- ================= End Block Four ================= --}}



                    {{-- ================= Block Five ================= --}}
                    <div class="row every_section">

                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Five Title</label>
                                <input type="text" class="form-control" name="block_five_title"
                                    placeholder="Enter title">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Five Image (H:750px W:1000px)</label>
                                <input type="file" class="form-control" name="block_five_image">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Block Five Description</label>
                                <textarea class="form-control tinymceText" name="block_five_description" placeholder="Enter description"
                                    rows="3"></textarea>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Block Five Video</label>
                                <input type="file" class="form-control" name="block_five_video">
                            </div>
                        </div>
                    </div>
                    {{-- ================= End Block Five ================= --}}

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
