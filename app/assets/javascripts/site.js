// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
	function openPopup(link){
  	link.hide();
    window.open(link.href,'exam_dialog','toolbar=no,location=no,menubar=no,scrollbars=yes,resizable=no');
    return false;
}
});