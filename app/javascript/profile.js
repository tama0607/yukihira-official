$(document).on('turbolinks:load', function() {
  $(function() {
    const $changePhoto = $('.p-profile__photoImage')
    const $Image1 = "assets/profile/rito-profile1.png" 
    const $Image2 = "assets/profile/rito-profile2.png"
    
    function mouseEnter(){
      $changePhoto.attr('src', $Image2);
      console.log("aaa");
    }

    function mouseLeave(){
      $changePhoto.attr('src', $Image1);
      console.log("bbb");
    }

    function touchStart(){
      $changePhoto.attr('src', $Image2);
      console.log("ccc");
    }

    function touchEnd(){
      $changePhoto.attr('src', $Image1);
      console.log("ddd");
    }

    function hoverImage() {
      $changePhoto.on({
        "mouseenter": mouseEnter,
        "mouseleave": mouseLeave,
        "touchstart": touchStart,
        "touchend": touchEnd,
      });
    }
    hoverImage();
  });
});