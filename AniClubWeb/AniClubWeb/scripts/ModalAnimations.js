$(document).ready(function () {
    $(".newsContent_Window")
  .hover(function () {
      $(".btn").stop().animate({ marginRight: "30px" }, 'fast');
      $(".module_Button1_Txt").stop().animate({ marginLeft: "538px" }, 'fast');
      $(".dateTime").stop().animate({ marginLeft: "10px" }, 'ease');
      $(".Category").stop().animate({ marginLeft: "210px" }, 'ease');
      }, function () {
          $(".btn").stop().animate({ marginRight: "-100px" }, 'fast');
          $(".module_Button1_Txt").stop().animate({ marginLeft: "600px" }, 'fast');
          $(".dateTime").stop().animate({ marginLeft: "-200px" }, 'ease');
          $(".Category").stop().animate({ marginLeft: "-200px" }, 'ease');
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