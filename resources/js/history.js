$(function () {
    $('.video-close').click(function (e) {
        e.preventDefault();
        e.stopPropagation();

        var container = $(this).closest('.history-single');
        $.ajax({
            url: APP_URL + '/history/' + $(this).data('history'),
            method: 'post',
            data: {_token: $('meta[name=csrf-token]').attr('content'), _method: 'delete'},
            dataType: 'json',
            beforeSend: function () {

            },
            success: function (data) {
                if (data.status == 1) {
                    container.remove();
                } else {
                    //
                }
            },
            error: function () {

            },
            complete: function () {

            }
        });
    })
});