/*
=======================
ESC
=======================
*/

$(document).ready(function () {
    $('.btn').click(function () {
        $('.modal').css({ 'display': 'block' });
    });
    $(this).keydown(function (eventObject) {
        if (eventObject.which == 27)
            $('.modal-open:checked').attr('checked', false);
    });
});

/*
=======================
VIDEO NONE/BLOCK
=======================
*/

$(document).ready(function () {
    $('.video').each(function (i) {
        var source = $(this).find('.source1');
        source.attr('id', i);
        if (source.attr('src')) {
            $(this).css({ 'display': 'block' });
        } else {
            $(this).css({ 'display': 'none' });
        }
    });
});