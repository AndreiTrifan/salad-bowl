$(document).ready(function() {
  /* -----------------------------------------------
                    MOBILE NAVIGATION     
    -------------------------------------------------- */
  /*if($( ".main-nav" ).hasClass( "mobile-hide" )){
      $(".main-nav").slideUp(0);
    }*/

  /*while(screen.width < 690) {
      $(".main-nav").addClass("mobile-hide");
      $(".main-nav").slideUp(0);
  }else{
      $(".main-nav").addClass("mobile-show");
      $(".main-nav").slideDown(0); 
  }*/

  $(document).ready(function() {
    if ($(window).width() >= 690) {
      $(".main-nav").removeClass("mobile-hide");
      $(".main-nav").addClass("mobile-show");
    } else {
      $(".main-nav").addClass("mobile-hide");
      $(".main-nav").slideUp();
      $(".main-nav").removeClass("mobile-show");
    }

    $(window).on("resize", () => {
      var win = $(this); //this = window
      if (win.width() <= 690) {
        $(".main-nav").slideUp(200, () => {
          $(".main-nav").addClass("mobile-hide");
        });
      } else {
        $(".main-nav").removeClass("mobile-hide");
        $(".main-nav").addClass("mobile-show");
        $(".main-nav").slideDown(0);
      }
    });

    $(".burger-icon").on("click", function() {
      if ($(".main-nav").hasClass("mobile-hide")) {
        $(".main-nav").removeClass("mobile-hide");
        $(".main-nav").addClass("mobile-show");
        $(".main-nav").slideDown();

        if ($(window).width() > 690) {
          $(".main-nav").addClass("mobile-hide");
          $(".main-nav").slideUp();
          $(".main-nav").removeClass("mobile-show");
        }
      } else {
        $(".main-nav").addClass("mobile-hide");
        $(".main-nav").slideUp();
        $(".main-nav").removeClass("mobile-show");
      }

      if ($(window).width() > 690) {
        $(".main-nav").addClass("mobile-hide");
        $(".main-nav").slideUp();
        $(".main-nav").removeClass("mobile-show");
      }
    });

    $("#bull0").on("click", function() {
      if ($("#bull0").hasClass("fa-check-square")) {
        $("#bull0").removeClass("fa-check-square");
        $("#bull0").addClass("fa-square");
      } else {
        $("#bull0").removeClass("fa-square");
        $("#bull0").addClass("fa-check-square");
      }
    });

    $("#bull1").on("click", function() {
      if ($("#bull1").hasClass("fa - check - square")) {
        $("#bull1").removeClass("fa-check-square");
        $("#bull1").addClass("fa-square");
      } else {
        $("#bull1").removeClass("fa-square");
        $("#bull1").addClass("fa-check-square");
      }
    });

    $(".submit").on("click", function() {
      if ($("#bull1").hasClass("fa-check-square")) {
        $("#bull1").removeClass("fa-check-square");
        $("#bull1").addClass("fa-square");
      } else {
        $("#bull1").removeClass("fa-square");
        $("#bull1").addClass("fa-check-square");
      }
    });

    $(".submit").click(() => {
      var value = $(".pics").val();

      //       if (value = 1 {
      //             $(".wrapper").append(`<div class="featured zoom">
      //             <div id="meta">Author Meta</div>
      //             <h1>This is a main headline for your most important article.</h1>
      //             <span id="hero-date">October 2, 2018</span>
      //           </div>`);
      // }

      if (value > 1 && value < 4) {
        //       $(".wrapper").append(`<div class="featured zoom">
        //       <div id="meta">Author Meta</div>
        //       <h1>This is a main headline for your most important article.</h1>
        //       <span id="hero-date">October 2, 2018</span>
        //     </div>`);

        for (let index = 0; index < value - 1; index++) {
          $(".sub-featured").append(`<div class="sub1 zoom">
                          <h3>Another New Thingy</h3>
                        </div>`);
        }
      }

      if (value > 4) {
        //       $(".wrapper").append(`<div class="featured zoom">
        //       <div id="meta">Author Meta</div>
        //       <h1>This is a main headline for your most important article.</h1>
        //       <span id="hero-date">October 2, 2018</span>
        //     </div>`);

        for (let index = 0; index < value - 4; index++) {
          $(".new-featured").append(`<div class="new1 zoom">
                  <h3>Another New Thingy</h3>
                </div>`);
        }
        value = value - 3;
        for (let index = 0; index < value; index++) {
          $(".sub-featured").append(`<div class="sub1 zoom">
                                    <h3>Another New Thingy</h3>
                                  </div>`);
        }
      }
    });
  });
});
