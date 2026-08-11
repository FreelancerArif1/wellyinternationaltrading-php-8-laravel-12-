<!-- Modal -->
<div class="modal fade" id="CreateModalOpen" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="CreateForm" action="{{ route('careerapply.store') }}" method="POST" enctype="multipart/form-data">

                @csrf
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add New</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="server_side_error"></div>
                    <div class="row">

                        <!-- Name -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter name">
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter email">

                            </div>
                        </div>
                        <!-- Position -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Position</label>
                                <select name="job_id" class="form-control">
                                    <option disabled selected>--Select Position --</option>
                                    @if ($positions)
                                        @foreach ($positions as $item)
                                            <option value="{{ $item->id }}">{{ $item->job_title }}</option>
                                        @endforeach
                                    @endif
                                </select>

                            </div>
                        </div>
                        <!-- Phone -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" name="phone" placeholder="Enter phone">
                            </div>
                        </div>
                        <!-- Cover Letter -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Cover Letter</label>
                                <textarea class="form-control tinymceText" name="cover_later" placeholder="Enter cover letter" rows="3"></textarea>
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                <label>CV / Document</label>
                                <input type="file" class="form-control" name="cv" accept=".pdf, .doc, .docx">
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
