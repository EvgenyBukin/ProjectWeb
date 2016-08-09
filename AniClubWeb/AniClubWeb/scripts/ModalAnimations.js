$(document).ready(function () {
    $('.newsContent_Window').mouseover(function () {
        $('.btn').css({ 'margin-right': '30px' });
        $('.module_Button1_Txt').css({ 'margin-left': '534px' });
        $('.dateTime').css({ 'margin-left': '10px' });
        $('.Category').css({ 'left': '240px' });
    });

    $('.newsContent_Window').mouseout(function () {
        $('.btn').css({ 'margin-right': '-150px' });
        $('.module_Button1_Txt').css({ 'margin-left': '710px' });
        $('.dateTime').css({ 'margin-left': '-195px' });
        $('.Category').css({ 'left': '-195px' });
    });
});

function setBlockAnimation(classname) {
    $(classname).mouseover(function () {
        var self = $(this);
        self.next().stop().animate({ height: '184px' }, {
            duration: 600, complete: function () {
                self.next().next().stop().animate({ width: '200px' }, { duration: 500 });
            }
        });
        self.next().css({ 'border-bottom': '1px solid rgb(160, 0, 0)' });
    });

    $(classname).mouseout(function () {
        var self = $(this);
        self.next().stop().animate({ height: '0px' }, {
            duration: 600, complete: function () {
                $(this).css({ 'border-bottom': '1px solid rgba(22, 22, 22, .8)' });
            }
        });
        self.next().next().stop().animate({ width: '0px' });
    });
}

$(document).ready(function () {
    setBlockAnimation('.block1');
    setBlockAnimation('.block2');
});


$(document).ready(function () {
    $('#categories a:nth-child(3)').mouseover(function () {
        $('.catDecoration').css({ 'width': '274px' });
    });

    $('#categories a:nth-child(3)').mouseout(function () {
        $('.catDecoration').css({ 'width': '0px' });
    })

    $('#categories a:nth-child(2)').mouseover(function () {
        $('.catDecoration').css({ 'width': '141px' });
    });

    $('#categories a:nth-child(2)').mouseout(function () {
        $('.catDecoration').css({ 'width': '0px' });
    })

    $('#categories a:nth-child(4)').mouseover(function () {
        $('.catDecoration').css({ 'width': '404px' });
    });

    $('#categories a:nth-child(4)').mouseout(function () {
        $('.catDecoration').css({ 'width': '0px' });
    })

    $('#categories a:nth-child(5)').mouseover(function () {
        $('.catDecoration').css({ 'width': '520px' });
    });

    $('#categories a:nth-child(5)').mouseout(function () {
        $('.catDecoration').css({ 'width': '0px' });
    })
});
