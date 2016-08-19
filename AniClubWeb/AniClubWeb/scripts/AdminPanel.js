$(document).ready(function () {
    var now = new Date();
    $('#newData').click(function () { 
        document.getElementById('newData').value = now.toISOString();
    })
});

$(document).ready(function () {

    var field = new Array("Data", "Category", "name", "Text", "Img1", "Img2", "Img3", "Img4", "Img5", "Img6");//поля обязательные 

    $("form").submit(function () {// обрабатываем отправку формы    
        var error = 0; // индекс ошибки
        $("form").find(":input").each(function () {// проверяем каждое поле в форме
            for (var i = 0; i < field.length; i++) { // если поле присутствует в списке обязательных
                if ($(this).attr("name") == field[i]) { //проверяем поле формы на пустоту

                    if (!$(this).val()) {// если в поле пустое
                        $(this).css('border', 'red 1px solid');// устанавливаем рамку красного цвета
                        error = 1;// определяем индекс ошибки       

                    }
                    else {
                        $(this).css('border', 'gray 1px solid');// устанавливаем рамку обычного цвета
                    }

                }
            }
        })

        if (error == 0) { // если ошибок нет то отправляем данные
            return true;
        }
        else {
            alert('Не все обязательные поля заполнены!');
            return false; //если в форме встретились ошибки , не  позволяем отослать данные на сервер.
        }



    })
});

$(document).ready(function () {
    var checkTargets = document.querySelectorAll("input.checked"),
        checkValues = function (elems) {
            var values = [],
                futureReturn = null;

            if (typeof elems == "object") {
                for (var i = 0; i < elems.length; i++) {
                    values.push(elems[i].value);
                }
            } else if (elems == null || elems == undefined) {
                return false;
            } else {
                values.push(elems.value);
            };

            if (values.length !== 0) {
                for (var i = 0; i < values.length; i++) {
                    if (values[i] == "") {
                        return false;
                    } else {
                        futureReturn = true;
                    }
                }
            };

            console.log(elems);
            return futureReturn;
        },
        buttonTarget = document.querySelector(".check-button"),
        checkFunction = function (target) {
            if (checkValues(target)) {
                addClass(buttonTarget, "available");
                buttonTarget.disabled = "false";
                $(".check-button").removeAttr("disabled")
            } else {
                removeClass(buttonTarget, "available");
                buttonTarget.disabled = "disabled";
            }
        };

    function init() {
        for (var i = 0; i < checkTargets.length; i++) {
            checkTargets[i].addEventListener("keydown", function () {
                checkFunction(checkTargets);
            });
            checkTargets[i].addEventListener("keyup", function () {
                checkFunction(checkTargets);
            })
        }
    }

    init();

    function removeClass(el, _class) {
        if (el && el.className && el.className.indexOf(_class) >= 0) {
            var pattern = new RegExp('\\s*' + _class + '\\s*');
            el.className = el.className.replace(pattern, ' ');
        }
    }
    function addClass(el, _class) {
        if (el.classList) {
            el.classList.add(_class);
        } else {
            el.className += ' ' + _class;
        }
    }

});

$(document).ready(function () {
    $(document).scroll(function () {
        $('#adminNav').css({
            left: $(document).scrollLeft()
        });
    });
});

$(document).ready(function () {
    $("hr").remove();
});

$(document).ready(function () {
    //block-1
    $(".wrapBatton:nth-child(1)").click(function () {
        var panel = $('.tableHeader div:nth-child(1)');
        
        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(1)').hide();
            $(".wrapBatton:nth-child(1) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(1) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(1)').show();
            $(".wrapBatton:nth-child(1) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(1) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-2
    $(".wrapBatton:nth-child(2)").click(function () {
        var panel = $('.tableHeader div:nth-child(2)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(2)').hide();
            $(".wrapBatton:nth-child(2) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(2) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(2)').show();
            $(".wrapBatton:nth-child(2) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(2) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-3
    $(".wrapBatton:nth-child(3)").click(function () {
        var panel = $('.tableHeader div:nth-child(3)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(3)').hide();
            $(".wrapBatton:nth-child(3) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(3) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(3)').show();
            $(".wrapBatton:nth-child(3) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(3) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-4
    $(".wrapBatton:nth-child(4)").click(function () {
        var panel = $('.tableHeader div:nth-child(4)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(4)').hide();
            $(".wrapBatton:nth-child(4) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(4) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(4)').show();
            $(".wrapBatton:nth-child(4) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(4) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-5
    $(".wrapBatton:nth-child(5)").click(function () {
        var panel = $('.tableHeader div:nth-child(5)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(5)').hide();
            $(".wrapBatton:nth-child(5) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(5) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(5)').show();
            $(".wrapBatton:nth-child(5) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(5) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-6
    $(".wrapBatton:nth-child(6)").click(function () {
        var panel = $('.tableHeader div:nth-child(6)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(6)').hide();
            $(".wrapBatton:nth-child(6) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(6) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(6)').show();
            $(".wrapBatton:nth-child(6) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(6) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-7
    $(".wrapBatton:nth-child(7)").click(function () {
        var panel = $('.tableHeader div:nth-child(7)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(7)').hide();
            $(".wrapBatton:nth-child(7) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(7) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(7)').show();
            $(".wrapBatton:nth-child(7) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(7) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-8
    $(".wrapBatton:nth-child(8)").click(function () {
        var panel = $('.tableHeader div:nth-child(8)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(8)').hide();
            $(".wrapBatton:nth-child(8) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(8) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(8)').show();
            $(".wrapBatton:nth-child(8) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(8) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-9
    $(".wrapBatton:nth-child(9)").click(function () {
        var panel = $('.tableHeader div:nth-child(9)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(9)').hide();
            $(".wrapBatton:nth-child(9) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(9) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(9)').show();
            $(".wrapBatton:nth-child(9) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(9) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-10
    $(".wrapBatton:nth-child(10)").click(function () {
        var panel = $('.tableHeader div:nth-child(10)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(10)').hide();
            $(".wrapBatton:nth-child(10) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(10) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(10)').show();
            $(".wrapBatton:nth-child(10) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(10) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-11
    $(".wrapBatton:nth-child(11)").click(function () {
        var panel = $('.tableHeader div:nth-child(11)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(11)').hide();
            $(".wrapBatton:nth-child(11) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(11) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(11)').show();
            $(".wrapBatton:nth-child(11) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(11) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
    //block-12
    $(".wrapBatton:nth-child(12)").click(function () {
        var panel = $('.tableHeader div:nth-child(12)');

        if (panel.is(':visible')) {
            panel.hide();
            $('.tableBody div:nth-child(12)').hide();
            $(".wrapBatton:nth-child(12) .wrapBattonModule .show").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(12) .wrapBattonModule .hide").css({ 'display': 'none' });
        } else {
            panel.show();
            $('.tableBody div:nth-child(12)').show();
            $(".wrapBatton:nth-child(12) .wrapBattonModule .hide").css({ 'display': 'inline' });
            $(".wrapBatton:nth-child(12) .wrapBattonModule .show").css({ 'display': 'none' });
        }
    });
});