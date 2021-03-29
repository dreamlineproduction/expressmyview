// import Plyr from 'plyr';
//
// const player = new Plyr('#player');

$(function() {
    alertify.set('notifier', 'position', 'bottom-center');

    var $languages = $('#languages');
    if ($languages.length > 0) {
        $languages.select2();
    }

    var $thumbnail = $('#thumbnail');
    if ($thumbnail.length > 0) {
        $thumbnail.change(function() {
            var uploadFile = $(this);
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

            if (/^image/.test(files[0].type)) { // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file

                reader.onloadend = function() { // set image data as background of div
                    //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                    uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
                }
            }
        });
    }


    var categories = $('input[name="categories[]"]');
    if (categories.length > 0) {
        categories.click(function() {
            var checked = categories.filter(':checked');
            if (checked.length >= 3) {
                categories.each(function() {
                    if (!$(this).is(':checked')) {
                        $(this).prop('disabled', true);
                    }
                });
            } else {
                categories.each(function() {
                    if (!$(this).is(':checked')) {
                        $(this).prop('disabled', false);
                    }
                });
            }
        });
    }

    var podcastDetails = $('#podcast_details');
    if (podcastDetails.length > 0) {
        var $submitBtn = $('#submit_btn');
        podcastDetails.ajaxForm({
            url: $(this).attr('action'),
            method: 'post',
            beforeSend: function() {
                $submitBtn.attr('disabled', true);
                $submitBtn.html('<i class="fa fa-spinner fa-spin"></i> Please wait');
            },
            success: function(data) {
                if (data.status == 1) {
                    window.location.href = data.redirect;
                } else {
                    swal({
                        title: 'Error',
                        text: data.message,
                        type: 'error',
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'OK',
                        buttonsStyling: true,
                        confirmButtonClass: 'btn btn-success',
                    });
                }
            },
            complete: function() {
                $submitBtn.attr('disabled', false);
                $submitBtn.html('Save Changes');
            }
        });
    }

    $('.delete-stream').click(function (event) {
        event.preventDefault();
        const $this = $(this);

        alertify.confirm('Are you sure?', 'You are about to delete this podcast. This action is irreversible.', function(){
            $.ajax({
                url: $this.attr('href'),
                method: 'delete',
                data: {_method: 'delete', _token: $('meta[name=csrf-token]').attr('content')},
                dataType: 'json',
                beforeSend: function () {
                    $.LoadingOverlay("show");
                },
                success: function (data) {
                    console.log(data);
                    if (data.status == 1) {
                        alertify.success(data.message);
                        window.location.reload();
                    } else {
                        alertify.error(data.message);
                    }
                },
                error: function () {
                    alertify.error('An error occurred. Please try again.');
                },
                complete: function () {
                    $.LoadingOverlay("hide");
                }
            });
        }, function () {});
    });


    $('#podcast_form').validate({
        rules: {
            channel: 'required',
            title: 'required',
            description: 'required',
            tags: 'required',
        },
        submitHandler: function(form) {
            var $form = $(form);
            var formData = new FormData(form);
            $.ajax({
                url: $form.attr('action'),
                method: 'post',
                data: formData,
                contentType: false,
                processData: false,
                beforeSend: function() {
                    $form.find('input').prop('disabled', true);
                    $form.find('#submit_btn').html('<i class="fa fa-spinner fa-spin"></i> Please Wait ');
                },
                success: function(data) {
                    var message;
                    if (data.status == 1) {
                        message = '<div class="alert alert-success mt-2">' + data.message + '</div>';
                        $(message).appendTo($form).delay(5000).fadeOut(500, function() {
                            $(this).remove();
                        });
                        window.location.href = data.redirect;
                    } else {
                        message = '<div class="alert alert-danger mt-2">' + data.message + '</div>';
                        $(message).appendTo($form).delay(5000).fadeOut(500, function() {
                            $(this).remove();
                        });
                    }
                },
                error: function() {
                    var message = '<div class="alert alert-danger mt-2">An error occurred. Please try again.</div>';
                    $(message).appendTo($form).delay(5000).fadeOut(500, function() {
                        $(this).remove();
                    })
                },
                complete: function() {
                    $form.find('input').prop('disabled', false);
                    $form.find('#submit_btn').html(' Save Changes ');
                }
            });
        }
    });
});
