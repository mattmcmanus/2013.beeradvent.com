jQuery(document).ready(function($) {
  $("#logo, #list h2, #about").lettering('words');

  $("nav a").each(function(){ if (location.pathname == $(this).attr('href')) {$(this).addClass('current')} })
});