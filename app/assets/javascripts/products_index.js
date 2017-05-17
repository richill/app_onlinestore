// ----------------------------------------
//    Section: Product Index
//    File: products / index.html.erb
// ----------------------------------------

$(document).ready(function () {
  function openOverlay(olEl) {
    $oLay = $(olEl);

    if ($('#overlay-shade').length == 0)
      $('body').prepend('<div id="overlay-shade"></div>');

    $('#overlay-shade').fadeTo(300, 0.6, function() {
      var props = {
        oLayWidth: $oLay.width(),
        scrTop: $(window).scrollTop(),
        viewPortWidth: $(window).width()
      };

      var leftPos = (props.viewPortWidth - props.oLayWidth) / 2;

      $oLay
        .css({
          display: 'block',
          opacity: 0,
          top: '-=300',
          left: leftPos + 'px'
        })
        .animate({
          top: props.scrTop + 40,
          opacity: 1
        }, 600);
    });
  }

  function closeOverlay() {
    $('.overlay').animate({
      top: '-=300',
      opacity: 0
    }, 400, function() {
      $('#overlay-shade').fadeOut(300);
      $(this).css('display', 'none');
    });
  }

  $('#overlay-shade, .overlay').on('click', 'a', function(e) {
    closeOverlay();
    if ($(this).attr('href') == '#') e.preventDefault();
  });

  // Usage
  $('#overlaylaunch-inAbox').click(function(e) {
    openOverlay('#overlay-inAbox');
    e.preventDefault();
  });
});





$(document).ready(function () {

  $(function() {
    var o = getParameterByName('url_id');

    if('hello' == o){
      $('.my_awesom_botton').trigger( "click" );
    }
  });

  function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
  }
});







































