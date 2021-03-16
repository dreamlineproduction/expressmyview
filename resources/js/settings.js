$(function () {

    var $settingsForm = $('#settings_form');
    if ($settingsForm.length > 0) {
        $('#country').change(function () {
            $.get(APP_URL + '/states', {country: $(this).val()}, function (data) {
                if (data.status == 1) {
                    $('#state').empty().append(data.states);
                }
            });
        });

        $('#avatar').change(function () {
            var uploadFile = $(this);
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

            if (/^image/.test(files[0].type)) { // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file

                reader.onloadend = function () { // set image data as background of div
                    //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                    uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
                }
            }
        });

        $settingsForm.validate({
            rules: {
                name: 'required',
                country: 'required',
            },
            submitHandler: function (form) {
                var $form = $(form);
                var formData = new FormData(form);
                $.ajax({
                    url: $form.attr('action'),
                    method: 'post',
                    data: formData,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        $form.find('input').prop('disabled', true);
                        $form.find('#submit_btn').html('<i class="fa fa-spinner fa-spin"></i> Please Wait ');
                    },
                    success: function (data) {
                        var message;
                        if (data.status == 1) {
                            message = '<div class="alert alert-success mt-2">' + data.message + '</div>';
                            $(message).appendTo($form).delay(5000).fadeOut(500, function () {
                                $(this).remove();
                            })
                        } else {
                            message = '<div class="alert alert-danger mt-2">' + data.message + '</div>';
                            $(message).appendTo($form).delay(5000).fadeOut(500, function () {
                                $(this).remove();
                            })
                        }
                    },
                    error: function () {
                        var message = '<div class="alert alert-danger mt-2">An error occurred. Please try again.</div>';
                        $(message).appendTo($form).delay(5000).fadeOut(500, function () {
                            $(this).remove();
                        })
                    },
                    complete: function () {
                        $form.find('input').prop('disabled', false);
                        $form.find('#submit_btn').html(' Save Changes ');
                    }
                });
            }
        });
    }

    var passwordForm = $('#password_form');
    if (passwordForm.length > 0) {
        passwordForm.validate({
            rules: {
                current_password: {
                    required: true,
                    minlength: 8
                },
                password: {
                    required: true,
                    minlength: 8
                },
                password_confirmation: {
                    required: true,
                    equalTo: '#password'
                }
            },
            submitHandler: function (form) {
                form.submit();
            }
        });
    }

});

