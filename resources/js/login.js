$(function () {

    $('#registration_form').validate({
        rules: {
            name: 'required',
            email: {
                required: true,
                email: true
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
            $.ajax({
                url: $(form).attr('action'),
                method: 'post',
                data: $(form).serialize(),
                dataType: 'json',
                beforeSend: function () {

                    $(form).find(':input').prop('disabled', true);
                    $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
                },
                success: function (data, status, jqXHR) {
                    var message;
                    if (jqXHR.status === 201) {
                        message = '<div class="alert alert-success">' + data.message + '</div>';
                        $(form).find('input[type!="hidden"]').val('');
                    } else {
                        message = '<div class="alert alert-danger">' + data.message + '</div>';

                        $.each(data.errors, function (element, error) {
                            $('#' + element)
                                .addClass('is-invalid')
                                .parent()
                                .append('<div class="invalid-feedback">' + error + '</div>');
                        });

                    }
                    $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
                        $(this).remove();
                    });
                },
                error: function (xhr, status, error) {
                    console.log(xhr, status, error);
                    var message = '<div class="alert danger">An error occurred. Please try again.</div>';
                    $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
                        $(this).remove();
                    });
                },
                complete: function () {
                    $(form).find(':input').prop('disabled', false);
                    $(form).find('button[type="dubmit"]').html('Sign Up');
                }
            });
        }
    });

    $('#login_form').validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 8
            },
        },
        submitHandler: function (form) {
            $.ajax({
                url: $(form).attr('action'),
                method: 'post',
                data: $(form).serialize(),
                dataType: 'json',
                beforeSend: function () {
                    var errors = $('.is-invalid');
                    errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();

                    $(form).find(':input').prop('disabled', true);
                    $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
                },
                success: function (data) {
                    var message;
                    if (data.status == 1) {
                        console.log('hit');
                        console.log(data.status);
                        console.log(data.status == 1);
                        message = '<div class="alert alert-success">Logging In ...</div>';
                        $(form).find('input[type!="hidden"]').val('');

                        window.location = data.redirect;
                    } else {
                        console.log('miss');
                        console.log(data.status);
                        console.log(data.status == 1);
                        message = '<div class="alert alert-danger">' + data.message + '</div>';

                        $.each(data.errors, function (element, error) {
                            $('#' + element)
                                .addClass('is-invalid')
                                .parent()
                                .append('<div class="invalid-feedback">' + error + '</div>');
                        });

                    }
                    $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
                        $(this).remove();
                    });
                },
                error: function () {
                    var message = '<div class="alert alert-success">An error occurred. Please try again.</div>';
                    $(message).prependTo($(form)).delay(5000).fadeOut(500, function () {
                        $(this).remove();
                    });
                },
                complete: function () {
                    $(form).find(':input').prop('disabled', false);
                    $(form).find('button[type="dubmit"]').html('Sign Up');
                }
            });
        }
    })
});