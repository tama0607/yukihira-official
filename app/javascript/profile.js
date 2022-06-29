$(document).on('turbolinks:load', function() {
  $(function() {
    const $changePhoto = $('.p-profile__photoImage')
    $changePhoto.hide().fadeIn(1000);
  });
});