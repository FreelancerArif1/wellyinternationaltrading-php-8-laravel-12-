<form id="EditForm" method="POST" enctype="multipart/form-data" action="{{ route('gallery.update', $gallery->id) }}">
    @csrf
    @method('PUT')

    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Gallery Item</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>

    <div class="modal-body">
        <div class="server_side_error mb-3"></div>

        <div class="row g-3">
            {{-- Title --}}
            <div class="col-12">
                <div class="form-group">
                    <label for="title" class="form-label fw-bold">Title</label>
                    <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $gallery->title) }}" placeholder="Enter title" required>
                </div>
            </div>

            {{-- Image --}}
            <div class="col-md-6">
                <div class="form-group">
                    <label for="image" class="form-label fw-bold">Image <small class="text-muted">(1000x700 px)</small></label>
                    <input type="file" class="form-control" id="image" name="image" accept="image/*">
                    @if ($gallery->image)
                        <div class="mt-2">
                            <img src="{{ asset($gallery->image) }}" alt="Gallery Image Preview" class="img-thumbnail rounded" style="max-width: 120px; max-height: 120px; object-fit: cover;">
                        </div>
                    @endif
                </div>
            </div>

            {{-- Select Company --}}
            <div class="col-md-6">
                <div class="form-group">
                    <label for="slier_for" class="form-label fw-bold">Select Company</label>
                    <select id="slier_for" name="slier_for" class="form-select">
                        <option value="" disabled {{ old('slier_for', $gallery->slier_for) ? '' : 'selected' }}>-- Select Company --</option>
                        @foreach ($categories ?? [] as $category)
                            <option value="{{ $category->id }}" {{ old('slier_for', $gallery->slier_for) == $category->id ? 'selected' : '' }}>
                                {{ $category->title }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>

            {{-- Serial --}}
            <div class="col-md-6">
                <div class="form-group">
                    <label for="serial" class="form-label fw-bold">Serial</label>
                    <input type="number" class="form-control" id="serial" name="serial" value="{{ old('serial', $gallery->serial) }}" placeholder="Enter serial">
                </div>
            </div>

            {{-- Status --}}
            <div class="col-md-6">
                <div class="form-group">
                    <label for="status" class="form-label fw-bold">Status</label>
                    <select id="status" name="status" class="form-select">
                        <option value="1" {{ old('status', $gallery->status) == 1 ? 'selected' : '' }}>Active</option>
                        <option value="2" {{ old('status', $gallery->status) == 2 ? 'selected' : '' }}>Inactive</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancel</button>
        <button type="submit" id="EditFormSubmitBtn" class="btn btn-primary btn-sm">Update</button>
    </div>
</form>