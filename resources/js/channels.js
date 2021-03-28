$(function () {

    $('.uploadFile').change(function () {
        var uploadFile = $(this);
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file

            reader.onloadend = function(){ // set image data as background of div
                //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url("+this.result+")");
            }
        }
    });

    if ($('#create_channel_form').length > 0) {
        $('#create_channel_form').validate({
            rules: {
                name: 'required'
            },
            submitHandler: function (form) {
                var formData = new FormData(form);

                $.ajax({
                    url: $(form).attr('action'),
                    method: 'post',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        var errors = $('.is-invalid');
                        errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();

                        $(form).find(':input').prop('disabled', true);
                        $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
                    },
                    success: function (data, status, jqXHR) {
                        var message;
                        if (jqXHR.status === 201) {
                            message = '<div class="alert alert-success">Channel created successfully.</div>';
                            $(form).find('input[type!="hidden"]').val('');

                            window.location = APP_URL + '/my-channels';
                        } else {
                            var formattedError = '<ul>';
                            $.each(data.errors, function (key, value) {
                                formattedError += '<li>' + value + '</li>';
                            });
                            formattedError += '</ul>';
                            message = '<div class="alert alert-danger">' + formattedError + '</div>';

                            if (data.errors) {
                                $.each(data.errors, function (element, error) {
                                    $('#' + element)
                                        .addClass('is-invalid')
                                        .parent()
                                        .append('<div class="invalid-feedback">' + error + '</div>');
                                });
                            }

                        }
                        $(message).appendTo($(form)).delay(5000).fadeOut(500, function () {
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
                        $(form).find('button[type="dubmit"]').html('Create Channel');
                    }
                });
            }
        });
    }


    if ($('#update_channel_form').length > 0) {
        $('#update_channel_form').validate({
            rules: {
                name: 'required'
            },
            submitHandler: function (form) {
                var formData = new FormData(form);

                $.ajax({
                    url: $(form).attr('action'),
                    method: 'post',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function () {
                        var errors = $('.is-invalid');
                        errors.removeClass('is-invalid').siblings('.invalid-feedback').remove();

                        $(form).find(':input').prop('disabled', true);
                        $(form).find('button[type="dubmit"]').html('<i class="fas fa-spinner"></i> Please Wait ...');
                    },
                    success: function (data, status, jqXHR) {
                        var message;
                        if (jqXHR.status === 204) {
                            message = '<div class="alert alert-success">Channel updates successfully.</div>';
                            $(form).find('input[type!="hidden"]').val('');

                            window.location = APP_URL + '/my-channels';
                        } else {
                            message = '<div class="alert alert-danger">' + data.error + '</div>';

                            if (data.errors) {
                                $.each(data.errors, function (element, error) {
                                    $('#' + element)
                                        .addClass('is-invalid')
                                        .parent()
                                        .append('<div class="invalid-feedback">' + error + '</div>');
                                });
                            }

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
                        $(form).find('button[type="dubmit"]').html('Update Channel');
                    }
                });
            }
        });
    }


    $('.delete').click(function (event) {
        event.preventDefault();
        event.stopPropagation();

        var channel = $(this);
        alertify.confirm('Are you sure?', 'You are about to delete this channel. This action is irreversible.', function(){
            $.ajax({
                url: APP_URL + '/channel/' + channel.data('channel') + '/delete',
                method: 'post',
                data: {_method: 'delete', _token: $('meta[name=csrf-token]').attr('content')},
                dataType: 'json',
                beforeSend: function () {
                    //
                },
                success: function (data) {
                    console.log(data);
                    if (data.status == 1) {
                        alertify.success(data.message);
                        channel.closest('.single-channel').fadeOut(500, function () {
                            $(this).remove();
                        });
                    } else {
                        alertify.error(data.message);
                    }
                },
                error: function () {
                    alertify.error('An error occurred. Please try again.');
                },
                complete: function () {
                    //
                }
            });
        }, function () {});

    });

    $('#subscribe_btn').click(function () {
        $.ajax({
            url: APP_URL + '/channel/' + $(this).data('channel') + '/subscribe',
            method: 'post',
            data: {_token: $('meta[name=csrf-token]').attr('content'), _method: 'put'},
            dataType: 'json',
            beforeSend: function () {

            },
            success: function (data) {
                if (data.status == 1) {
                    if (data.action == 'subscribed') {
                        $('.sub-status').text('Unsubscribe');
                    } else {
                        $('.sub-status').text('Subscribe');
                    }
                    $('.sub-count').text(data.subsCount);
                }
            },
            error: function () {

            },
            complete: function () {

            }
        });
    });
});