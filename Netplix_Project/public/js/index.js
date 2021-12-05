$(document).ready(function() {
    const autoplaySlider = $('.movie-carousel').lightSlider({
        auto:true,
        loop:true,
        item : 5,
        pauseOnHover: true,
        slideMargin : 30,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cS-hidden');
        } 
    });
});


