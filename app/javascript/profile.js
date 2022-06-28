$(document).on('turbolinks:load', function() {
  $(function() {
    const $changePhoto = $('.p-profile__photoImage')
    const $Image1 = "assets/profile/rito-profile1.png" 
    const $Image2 = "assets/profile/rito-profile2.png"
    
    if (window.matchMedia('(max-width: 768px)').matches) {
      //ここにスマホ・タブレットの時のjs
      function hoverImage() {
        $changePhoto.on({
          "touchstart": touchStart,
          "touchend": touchEnd,
        });
      }
      hoverImage();
    } else {
      //ここにPCの時のjs
      function hoverImage() {
        $changePhoto.on({
          "mouseenter": mouseEnter,
          "mouseleave": mouseLeave,
        });
      }
      hoverImage();
    }
    function mouseEnter(){
      $changePhoto.attr('src', $Image2);
    }

    function mouseLeave(){
      $changePhoto.attr('src', $Image1);
    }

    function touchStart(){
      $changePhoto.attr('src', 'assets/profile/rito-profile2.png');
    }

    function touchEnd(){
      $changePhoto.attr('src', 'assets/profile/rito-profile1.png');
    }
  });
});