$(document).on('turbolinks:load', function() {
  $(function() {
      const $changePhoto = $('.p-profile__photoImage')

      function mouseEnter(){
        $changePhoto.attr('src', 'assets/profile/rito-profile2.png');
        console.log("good")
      }

      function mouseLeave(){
        $changePhoto.attr('src', 'assets/profile/rito-profile1.png');
      }

      function hoverImage() {
        $changePhoto.on({
            "mouseenter": mouseEnter,
            "mouseleave": mouseLeave,
      });
    }
    hoverImage();
  });
  $(function() {
    const $changePhoto = $('.p-profile__photoImage')

    function touchStart(){
      $changePhoto.attr('src', 'assets/profile/rito-profile2.png');
      console.log("good")
    }

    function touchEnd(){
      $changePhoto.attr('src', 'assets/profile/rito-profile1.png');
    }

    function hoverImage() {
      $changePhoto.on({
          "touchstart": touchStart,
          "touchend": touchEnd,
    });
  }
  hoverImage();
});
});