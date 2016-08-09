$(document).ready(function () {
    // берем все необходимые нам картинки
    var $img = $('.gImg');

    // ждем загрузки картинки браузером
    $img.load(function () {
        // удаляем атрибуты width и height
        $(this).removeAttr("width")
               .removeAttr("height")
               .css({ width: "", height: "" });

        // получаем заветные цифры
        var width = $(this).width();
        var height = $(this).height();

        
        if (height >= width) {
            $(this).css({ 'width': 'auto' , 'height': '100%'});
        };

        $(this).css({ 'position': 'relative', 'top': 0 });
    });
});

$(document).ready(function () {
    // берем все необходимые нам картинки
    var $img = $('.gImgLC');

    // ждем загрузки картинки браузером
    $img.load(function () {
        // удаляем атрибуты width и height
        $(this).removeAttr("width")
               .removeAttr("height")
               .css({ width: "", height: "" });

        // получаем заветные цифры
        var width = $(this).width();
        var height = $(this).height();


        if (height >= width) {
            $(this).css({ 'width': 'auto', 'height': '100%' });
        };

        $(this).css({ 'position': 'relative', 'top': 0 });
    });
});

$(document).ready(function () {
    var widthBr = $(window).width();
    var heightBr = $(window).height();
    
    var $img = $('.gImgWrap');

    $img.load(function () {
        var widthIm = $(this).width();

        if (widthIm > widthBr) {
            widthIm = widthBr - (widthBr / 100 * 25);
        }
        $(this).css({ 'width': widthIm, 'height': 'auto' });
    });
    
    $img.load(function () {
        var heightIm = $(this).height();

        if (heightIm > heightBr) {
            heightIm = heightBr - (heightBr / 100 * 25);
        }
        $(this).css({ 'height': heightIm, 'width': 'auto' });
    });

});

$(document).ready(function () {
    var $img = $('.gImgWrap');
    //var $mf = $('.modal-footer');

    $img.load(function () {
        var widthIm = $(this).width();
        var heightIm = $(this).height();

        var n = $('<span>' + widthIm + 'X' + heightIm + '</sapn>');
        //var c = $(this).$mf;
        $('').append(n);
    });
});
