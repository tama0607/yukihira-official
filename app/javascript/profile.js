$(document).on('turbolinks:load', function() {
  $(function() {
      const $changePhoto = $('.p-profile__photoImage')

      function fadeOutChange(){
        $changePhoto.attr('src', 'assets/profile/rito-profile2.png');
        console.log("good")
      }

      function fadeInChange(){
        $changePhoto.attr('src', 'assets/profile/rito-profile1.png');
      }

      function hoverImage() {
        $changePhoto.on({
            "mouseenter": fadeOutChange,
            "mouseleave": fadeInChange,
      });
    }
    hoverImage();
  });
});