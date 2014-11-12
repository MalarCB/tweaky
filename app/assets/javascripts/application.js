// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require jquery.colorbox
//= require colorbox-rails
//= require_tree .

$(document).ready(function(e){
    $('#myCarousel').carousel({
        interval:   5000
    });
    $('#myCarousel_intro').carousel({
        interval:   2000
    });
    $('.post-image').colorbox();



    var e = $(window).width();
    var t = $(".container-gallery");
    t.imagesLoaded(function() {
        t.masonry()
    });
    var n = $(".wrapper-portfolio");
    t.imagesLoaded(function() {
        n.masonry()
    });
    $('[rel="tooltip"]').tooltip();
    if (e > 767) {
        $(".img-group-gallery").colorbox({
            rel: "gallery-images",
            width: "auto",
            height: "90%",
            current: "{current}/{total}"
        });
        $(".img-slideshow").colorbox({
            rel: "gallery-slideshow",
            width: "auto",
            height: "90%",
            slideshow: true,
            current: "{current}/{total}"
        })
    } else {
        $(".img-group-gallery").colorbox({
            rel: "gallery-images",
            width: "90%",
            height: "auto",
            current: "{current}/{total}"
        });
        $(".img-slideshow").colorbox({
            rel: "gallery-slideshow",
            width: "auto",
            height: "90%",
            slideshow: true,
            current: "{current}/{total}"
        })
    }
    var r = $("#searchbox");
    $(".btn-search").on("click", function() {
        $(this).toggleClass("active");
        $(".fsearch").toggleClass("active");
        r.toggleClass("searchbox-show")
    });
    if (e > 767) {
        $("#searchbox").mouseleave(function() {
            $(".btn-search").toggleClass("active");
            $(".fsearch").toggleClass("active");
            r.toggleClass("searchbox-show")
        })
    }
    var i = $("#portfolio-content");
    i.isotope({
        animationEngine: "best-available",
        animationOptions: {
            duration: 200,
            queue: false
        },
        layoutMode: "fitRows"
    });
    $(".nav-filter .nav-pills li a").click(function() {
        $(".nav-filter .nav-pills li a").removeClass("active");
        $(this).addClass("active");
        var e = $(this).attr("data-filter-value");
        i.isotope({
            filter: e
        });
        return false
    })
})
