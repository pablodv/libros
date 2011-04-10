jQuery(document).ready(function() {
  toggleAuthor();
});

function toggleAuthor() {
  $("#author").livequery("change", function(){
  	window.location = $("#author>option:selected").attr("rel");
  })
}