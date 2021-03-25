// import Plyr from 'plyr';
//
// const player = new Plyr('#player');

$(function() {
    $('#channel').select2();

    $('#languages').select2();

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