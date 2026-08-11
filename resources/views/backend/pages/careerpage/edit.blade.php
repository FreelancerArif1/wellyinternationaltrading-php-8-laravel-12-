<form id="EditForm" method="POST" enctype="multipart/form-data"
    action="{{ route('careerpage.update', $careerpage->id) }}">
    @csrf
    @method('PUT')
    <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Edit</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
    </div>





    <div class="modal-body">
        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Banner Title</label>
                    <input type="text" class="form-control" name="banner_title"
                        value="{{ $careerpage->banner_title }}" placeholder="Enter banner title">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Banner Description</label>
                    <textarea class="form-control tinymceText" name="banner_description" rows="3">{!! $careerpage->banner_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Banner Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="banner_image">
                    @if ($careerpage->banner_image)
                        <img src="{{ asset($careerpage->banner_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Banner Video</label>
                    <input type="file" class="form-control" name="banner_video">
                    @if ($careerpage->banner_video)
                        <div class="video_relative banner_video">
                            <video src="{{ asset($careerpage->banner_video) }}" width="100%" height="120" controls
                                class="mt-2"></video>
                            <div class="video_remove_absulate" data-table="sustainabilities"
                                data-id="{{ $careerpage?->id }}" data-column="banner_video"
                                data-file="{{ $careerpage->banner_video }}"> <i class="fa fa-trash"
                                    aria-hidden="true"></i> </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>



        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Block One Title</label>
                    <input type="text" class="form-control" name="block_one_title"
                        value="{{ $careerpage->block_one_title }}">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Block One Description</label>
                    <textarea class="form-control tinymceText" name="block_one_description" rows="3">{!! $careerpage->block_one_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block One Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="block_one_image">
                    @if ($careerpage->block_one_image)
                        <img src="{{ asset($careerpage->block_one_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block One Video</label>
                    <input type="file" class="form-control" name="block_one_video">
                    @if ($careerpage->block_one_video)
                        <div class="video_relative block_one_video">
                            <video src="{{ asset($careerpage->block_one_video) }}" width="100%" height="120"
                                controls class="mt-2"></video>
                            <div class="video_remove_absulate" data-table="sustainabilities"
                                data-id="{{ $careerpage?->id }}" data-file="{{ $careerpage->block_one_video }}"
                                data-column="block_one_video"> <i class="fa fa-trash" aria-hidden="true"></i> </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>



        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Two Title</label>
                    <input type="text" class="form-control" name="block_two_title"
                        value="{{ $careerpage->block_two_title }}">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Two Description</label>
                    <textarea class="form-control tinymceText" name="block_two_description" rows="3">{!! $careerpage->block_two_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Two Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="block_two_image">
                    @if ($careerpage->block_two_image)
                        <img src="{{ asset($careerpage->block_two_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Two Video</label>
                    <input type="file" class="form-control" name="block_two_video">
                    @if ($careerpage->block_two_video)
                        <div class="video_relative block_two_video>
                            <video src="{{ asset($careerpage->block_two_video) }}"
                            width="100%" height="120" controls class="mt-2"></video>
                            <div class="video_remove_absulate" data-table="sustainabilities"
                                data-id="{{ $careerpage?->id }}" data-file="{{ $careerpage->block_two_video }}"
                                data-column="block_two_video"> <i class="fa fa-trash" aria-hidden="true"></i> </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>


        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Three Title</label>
                    <input type="text" class="form-control" name="block_three_title"
                        value="{{ $careerpage->block_three_title }}">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Three Description</label>
                    <textarea class="form-control tinymceText" name="block_three_description" rows="3">{!! $careerpage->block_three_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Three Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="block_three_image">
                    @if ($careerpage->block_three_image)
                        <img src="{{ asset($careerpage->block_three_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Three Video</label>
                    <input type="file" class="form-control" name="block_three_video">
                    @if ($careerpage->block_three_video)
                        <div class="video_relative block_three_video">
                            <video src="{{ asset($careerpage->block_three_video) }}" width="100%" height="120"
                                controls class="mt-2"></video>
                            <div class="video_remove_absulate" data-table="sustainabilities"
                                data-id="{{ $careerpage?->id }}" data-file="{{ $careerpage->block_three_video }}"
                                data-column="block_three_video">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>



        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Four Title</label>
                    <input type="text" class="form-control" name="block_four_title"
                        value="{{ $careerpage->block_four_title }}">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Four Description</label>
                    <textarea class="form-control tinymceText" name="block_four_description" rows="3">{!! $careerpage->block_four_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Four Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="block_four_image">
                    @if ($careerpage->block_four_image)
                        <img src="{{ asset($careerpage->block_four_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Four Video</label>
                    <input type="file" class="form-control" name="block_four_video">
                    @if ($careerpage->block_four_video)
                        <div class="video_relative block_four_video">
                            <video src="{{ asset($careerpage->block_four_video) }}" width="100%" height="120"
                                controls class="mt-2"></video>
                            <div class="video_remove_absulate" data-file="{{ $careerpage->block_four_video }}"
                                data-table="sustainabilities" data-id="{{ $careerpage?->id }}"
                                data-column="block_four_video"> <i class="fa fa-trash" aria-hidden="true"></i> </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>




        <div class="row every_section">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Five Title</label>
                    <input type="text" class="form-control" name="block_five_title"
                        value="{{ $careerpage->block_five_title }}">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>Block Five Description</label>
                    <textarea class="form-control tinymceText" name="block_five_description" rows="3">{!! $careerpage->block_five_description !!}</textarea>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Five Image (H:750px W:1000px)</label>
                    <input type="file" class="form-control" name="block_five_image">
                    @if ($careerpage->block_five_image)
                        <img src="{{ asset($careerpage->block_five_image) }}" width="120" class="mt-2">
                    @endif
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label>Block Five Video</label>
                    <input type="file" class="form-control" name="block_five_video">
                    @if ($careerpage->block_five_video)
                        <div class="video_relative block_five_video">
                            <video src="{{ asset($careerpage->block_five_video) }}" width="100%" height="120"
                                controls class="mt-2"></video>
                            <div class="video_remove_absulate" data-file="{{ $careerpage->block_five_video }}"
                                data-table="sustainabilities" data-id="{{ $careerpage?->id }}"
                                data-column="block_five_video"> <i class="fa fa-trash" aria-hidden="true"></i> </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>


    </div>







    <div class="modal-footer">
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-sm btn-primary">Update</button>
    </div>
</form>
