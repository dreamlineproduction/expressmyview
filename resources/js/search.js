$(function () {
    $('.search-option').click(function () {
        $(this).closest('div').find('a')[0].click();
    });
});