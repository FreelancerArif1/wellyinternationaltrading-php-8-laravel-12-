<script src="{{ asset('backend/js/propper.min.js') }}"></script>
<script src="{{ asset('backend/js/bootstrap.min.js') }}"></script>
{{-- <script src="{{ asset('backend/js/bootstrap.bundle.min.js') }}"></script> --}}
<script src="{{ asset('backend/js/all.min.js') }}"></script>
<script src="{{ asset('backend/js/jquery-scrollbar.min.js') }}"></script>
<script src="{{ asset('backend/js/validator.js') }}"></script>
<script src="{{ asset('backend/js/toastr.min.js') }}"></script>
<script src="{{ asset('backend/js/select2.min.js') }}"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<script src="{{ asset('backend/js/main.js') }}"></script>

<script>
    'use strict'
    $(document).ready(function() {
        $('.sidebar-search').on('keyup', function() {
            let keyword = $(this).val().toLowerCase();

            $('.sidebar-content li').each(function() {
                let text = $(this).text().toLowerCase();
                $(this).toggle(text.includes(keyword));
            });
        });
    });
</script>




<script>
    @if ($errors->any())
        @foreach ($errors->all() as $error)
            $.toast({
                heading: 'Error',
                text: "{{ $error }}",
                position: 'top-center',
                icon: 'error'
            })
        @endforeach
    @endif

    @if (session()->has('success'))
        $.toast({
            heading: 'Success',
            text: "{{ session()->get('success') }}",
            position: 'top-center',
            icon: 'success'
        })
    @endif

    function previewFile(input, preview) {
        var file = input.files[0];
        if (file) {
            var reader = new FileReader();
            reader.onload = function() {
                document.getElementById(preview).src = reader.result;
            };
            reader.readAsDataURL(file);
        }
    }

    function initSummerNote() {
        $('.tinymceText').summernote({
            height: 200,
        });
    }

    initSummerNote();

    $('.select2').select2();

    $(document).on('click', '.flag-select', function(e) {
        e.preventDefault();
        let language = $(this).attr('data-language');
        $.ajax({
            url: "{{ url('admin/setting/change-language') }}",
            type: "Get",
            data: {
                language: language,
            },
            success: function(response) {
                window.location.reload();
            }
        })
    });

    $(document).on("change", "#select_all", function() {
        if ($("#select_all").attr("data-checked") == "true") {
            $('input[type="checkbox"]').each(function(key, val) {
                $(this).prop("checked", false);
                $("#select_all").attr("data-checked", false);
            });
        } else {
            $('input[type="checkbox"]').each(function(key, val) {
                $(this).prop("checked", true);
                $("#select_all").attr("data-checked", true);
            });
        }
    });

    function copyThisDiv(button) {
        // Get the original row of the button that was clicked
        var originalRow = button.closest('.copy_this');

        // Clone the original row
        var clonedRow = originalRow.cloneNode(true);

        // Clear values of cloned input fields
        var textInputs = clonedRow.querySelectorAll('input[type="text"]');
        textInputs.forEach(input => input.value = ''); // Clear all text inputs

        var checkboxes = clonedRow.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(checkbox => checkbox.checked = false); // Uncheck all checkboxes

        // Change the button in the cloned row to a remove button
        var buttonInClonedRow = clonedRow.querySelector('button');
        if (buttonInClonedRow) {
            buttonInClonedRow.innerHTML = '<i class="fa fa-minus"></i>';
            buttonInClonedRow.classList.remove('btn-outline-secondary');
            buttonInClonedRow.classList.add('btn-outline-danger');
            buttonInClonedRow.setAttribute('onclick', 'removeThisDiv(this);');
        }

        // Insert the cloned row after the original row
        originalRow.after(clonedRow);
    }


    function removeThisDiv(button) {
        // Get the parent row of the button that was clicked
        var rowToRemove = button.closest('.copy_this');

        // Remove the parent row
        rowToRemove.remove();
    }
</script>



@stack('scripts')
