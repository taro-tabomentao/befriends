$(window).on('load', function() { 
  var slider = $('.slider').not('.slick-initialized').slick({
    prevArrow: '<i class="fas fa-caret-square-left"></i>',
    nextArrow: '<i class="fas fa-caret-square-right"></i>',
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
  });
  $(".tab-item").each(function(index) {
    $(this).on("click", function(){
      slider.slick('setPosition');
    })
  });
});
