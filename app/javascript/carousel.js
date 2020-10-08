$(document).on('turbolinks:load', function() { 
  $('.list-event').slick({
    prevArrow: '<i class="fas fa-caret-square-left"></i>',
    nextArrow: '<i class="fas fa-caret-square-right"></i>',
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1
  });
});
