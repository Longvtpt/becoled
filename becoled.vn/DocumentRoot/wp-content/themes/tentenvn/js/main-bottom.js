

    $(document).ready(function() {
        $(".owl-list-sp").owlCarousel({
           itemsCustom : [
                [0, 1],
                [450, 1],
                [600, 1],
                [768, 1],
                [992, 1],
                [1200, 1]
            ],
            navigation : true,
            navigationText: ["NEXT","PREV"],
        });

        jQuery(".nav-toggle").click(function() {

            if (!$(".nav-menu").hasClass("has-open")) {
                $(this).addClass("has-open");
                $(".nav-menu").addClass("has-open");
                $("body").addClass("has-open");

            } 
            else {
                $(".nav-toggle").removeClass("has-open");
                $(".nav-menu").removeClass("has-open");
                $("body").removeClass("has-open");
            }
        }) ;

        jQuery(".submenu .toggle-submenu").click(function() {

            if (!jQuery(this).parent().hasClass("has-active")) {
                    jQuery(this).parent().addClass("has-active");
                } 
            else {
                jQuery(this).parent().removeClass("has-active");
              
            }
        }) ;

        

        jQuery(".level0 >.toggle-submenu").click(function() {

            if (!jQuery(this).parent().hasClass("has-active")) {
                $(".parent").removeClass("has-active");
                jQuery(this).parent().addClass("has-active");
            } 
            else {
                $(".parent").removeClass("has-active");
                jQuery(this).parent().removeClass("has-active");
              
            }
        }) ;

       
        
    });

