$(document).on('turbolinks:load', function() {
  $(function() {
    $('.p-home__hero').slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
    });
  });
});