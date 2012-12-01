jQuery(document).ready(function($) {
  $(document).foundationTopBar();
  $(document).foundationMediaQueryViewer();

  $("#logo, #list h2, #about, .words").lettering('words');

  $("nav a").each(function(){ if (location.pathname == $(this).attr('href')) {$(this).addClass('current')} })
});