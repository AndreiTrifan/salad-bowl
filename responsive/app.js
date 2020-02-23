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
      if($(window).width() >= 690) {
            $(".main-nav").removeClass("mobile-hide");
            $(".main-nav").addClass("mobile-show");

      } else {
            $(".main-nav").addClass("mobile-hide");
            $(".main-nav").slideUp(0);
            $(".main-nav").removeClass("mobile-show");
    
}
});

/*$(window).on('resize', function(){
      var win = $(this); //this = window
      if (win.width() <= 690) {
            $(".main-nav").addClass("mobile-hide");
            $(".main-nav").slideUp(0); 
            }else{
            $(".main-nav").removeClass("mobile-hide");
            $(".main-nav").addClass("mobile-show");
            $(".main-nav").slideDown(0);   
});*/


$(".burger-icon").on("click", function() {
      if($( ".main-nav" ).hasClass( "mobile-hide" )){
            $(".main-nav").removeClass("mobile-hide");
            $(".main-nav").addClass("mobile-show");
            $(".main-nav").slideDown(550);

            if($(window).width() > 690) {
                  $(".main-nav").addClass("mobile-hide");
                  $(".main-nav").slideUp(0);
                  $(".main-nav").removeClass("mobile-show");
            }
            
      }else{
              $(".main-nav").addClass("mobile-hide");
              $(".main-nav").slideUp(550);
              $(".main-nav").removeClass("mobile-show");
              
      }
  
      if($(window).width() > 690) {
            $(".main-nav").addClass("mobile-hide");
            $(".main-nav").slideUp(0);
            $(".main-nav").removeClass("mobile-show");
      }


  });
    
      $("#bull0").on("click", function() {
        if($( "#bull0").hasClass( "fa-check-square" )){
              $("#bull0").removeClass("fa-check-square");
              $("#bull0").addClass("fa-square");
        }else{
                $("#bull0").removeClass("fa-square");
                $("#bull0").addClass("fa-check-square");
        }
    
  });

    $("#bull1").on("click", function() {
      if($( "#bull1").hasClass( "fa-check-square" )){
            $("#bull1").removeClass("fa-check-square");
            $("#bull1").addClass("fa-square");
      }else{
              $("#bull1").removeClass("fa-square");
              $("#bull1").addClass("fa-check-square");
      }
  
  });



    });