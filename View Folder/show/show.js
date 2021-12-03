var ReviewCarousel = document.querySelector(
  "#review-carousel"
);
if (window.matchMedia("(min-width: 768px)").matches) {
  var carousel = new bootstrap.Carousel(ReviewCarousel, {
    interval: false,
  });
  var carouselWidth = $(".review-inner")[0].scrollWidth;
  var cardWidth = $(".review-item").width();
  var scrollPosition = 0;
  $("#review-carousel .review-control-next").on("click", function () {
    if (scrollPosition < carouselWidth - cardWidth * 3) {
      scrollPosition += cardWidth;
      $("#review-carousel .review-inner").animate(
        { scrollLeft: scrollPosition },
        600
      );
    }
  });
  $("#review-carousel .review-control-prev").on("click", function () {
    if (scrollPosition > 0) {
      scrollPosition -= cardWidth;
      $("#review-carousel .review-inner").animate(
        { scrollLeft: scrollPosition },
        600
      );
    }
  });
} else {
  $(ReviewCarousel).addClass("slide");
}


var RecCarousel = document.querySelector(
  "#rec-carousel"
);
if (window.matchMedia("(min-width: 768px)").matches) {
  var carousel = new bootstrap.Carousel(RecCarousel, {
    interval: false,
  });
  var carouselWidth = $(".rec-inner")[0].scrollWidth;
  var cardWidth = $(".rec-item").width();
  var scrollPosition = 0;
  $("#rec-carousel .rec-control-next").on("click", function () {
    if (scrollPosition < carouselWidth - cardWidth * 3) {
      scrollPosition += cardWidth;
      $("#rec-carousel .rec-inner").animate(
        { scrollLeft: scrollPosition },
        600
      );
    }
  });
  $("#rec-carousel .rec-control-prev").on("click", function () {
    if (scrollPosition > 0) {
      scrollPosition -= cardWidth;
      $("#rec-carousel .rec-inner").animate(
        { scrollLeft: scrollPosition },
        600
      );
    }
  });
} else {
  $(RecCarousel).addClass("slide");
}