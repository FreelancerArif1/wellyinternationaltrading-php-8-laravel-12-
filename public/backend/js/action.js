$(document).on('click', '#CreateModalSubmitBtn', function(e) {
    e.preventDefault();
    let go_next_step = true;
    if ($(this).attr('data-check-area') && $(this).attr('data-check-area').trim() !== '') {
        go_next_step = check_validation_Form('#CreateModalOpen .' + $(this).attr('data-check-area'));
    }
    if (go_next_step == true) {
        $('#CreateModalSubmitBtn').prop('disabled', true);
        // let descriptions = $('#descriptions').summernote('code');
        let form = document.getElementById('CreateForm');
        var formData = new FormData(form);
        // formData.append('descriptions', descriptions);
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: $('#CreateForm').attr('action'),
            type: $('#CreateForm').attr('method'),
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                $('#CreateModalSubmitBtn').prop('disabled', false);
                if (response.status == 1) {
                    $('#CreateModalOpen').modal('hide');
                    Swal.fire({
                        title: 'Success',
                        text: response.message,
                        icon: 'success',
                        position: 'center',
                        showConfirmButton: true,
                        timer: 1500
                    }).then(() => {
                        window.location.reload();
                    });
                } else {
                    Swal.fire({
                        title: 'Error',
                        text: response.message,
                        icon: 'error',
                        position: 'center',
                        showConfirmButton: true,
                        timer: 3000
                    });
                }
            },
            error: function(xhr) {
                $('#CreateModalSubmitBtn').prop('disabled', false);
                if (xhr.status === 422) {
                    let errors = xhr.responseJSON.errors;
                    $('.text-danger').remove();
                    $.each(errors, function(key, value) {
                        let input = $('[name="' + key + '"]');
                        input.after('<span class="text-danger">' + value[0] +
                            '</span>');
                    });


            
                    let list = '<ul>';
                    Object.values(errors).forEach(errArr => list += `<li>${errArr[0]}</li>`);
                    list += '</ul>';

                    $('#error-message-container').html(`
                        <div class="alert alert-danger" role="alert">
                            ${list}
                        </div>
                    `);

                }
                reject(xhr);
            }

        })
    }
});
$(document).on('click', '.edit_modal_show', function(e) {
    e.preventDefault();
    let url = $(this).attr('data-url');
    $.ajax({
        url: url,
        type: "GET",
        dataType: "html",
        success: function(data) {
            $('#editModal .modal-content').html(data);
            $('#editModal').modal('show');
            function initSummerNote() {
                $('.tinymceText').summernote({
                    height: 200,
                });
            }
            initSummerNote();
        }
    })
});

$(document).on('click', '#EditFormSubmitBtn', function(e) {
    e.preventDefault();
    let go_next_step = true;
    if ($(this).attr('data-check-area') && $(this).attr('data-check-area').trim() !== '') {
        go_next_step = check_validation_Form('#editModal .' + $(this).attr('data-check-area'));
    }
    if (go_next_step == true) {
        $('#EditFormSubmitBtn').prop('disabled', true);
        let form = document.getElementById('EditForm');
        var formData = new FormData(form);
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: $('#EditForm').attr('action'),
            type: "POST",   // must be POST, not PUT
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                $('#EditFormSubmitBtn').prop('disabled', false);
                if (response.status == 1) {
                    $('#CreateModalOpen').modal('hide');
                    Swal.fire({
                        title: 'Success',
                        text: response.message,
                        icon: 'success',
                        position: 'center',
                        showConfirmButton: true,
                        timer: 1500
                    }).then(() => {
                        window.location.reload();
                    });
                } else {
                    Swal.fire({
                        title: 'Error',
                        text: response.message,
                        icon: 'error',
                        position: 'center',
                        showConfirmButton: true,
                        timer: 3000
                    });
                }
            },
            error: function(xhr) {
                $('#EditFormSubmitBtn').prop('disabled', false);
                if (xhr.status === 422) {
                    let errors = xhr.responseJSON.errors;
                    $('.text-danger').remove();
                    $.each(errors, function(key, value) {
                        let input = $('[name="' + key + '"]');
                        input.after('<span class="text-danger">' + value[0] + '</span>');
                    });
                }
            }
        });
    }
});

$(document).on('click', '.deleteBtn', function(e) {
    e.preventDefault(); // stop normal link
    const url = $(this).data('url'); // your route for slider.destroy

    Swal.fire({
        title: 'Are you sure to delete?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!',
        cancelButtonText: 'Cancel'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: url,
                type: 'POST', // must be POST
                data: {
                    _method: 'DELETE', // Laravel recognizes this as DELETE
                    _token: $('meta[name="csrf-token"]').attr('content') // CSRF token
                },
                success: function(response) {
                    if(response.status == 1) {
                        Swal.fire({
                            title: 'Deleted!',
                            text: response.message,
                            icon: 'success',
                            timer: 1500,
                            showConfirmButton: false
                        }).then(() => {
                            window.location.reload(); // reload or remove the row dynamically
                        });
                    } else {
                        Swal.fire('Error', response.message, 'error');
                    }
                },
                error: function(xhr) {
                    Swal.fire('Error', 'Something went wrong!', 'error');
                }
            });
        }
    });
});


setTimeout(() => {
    $('.alert').hide();
}, 3500);