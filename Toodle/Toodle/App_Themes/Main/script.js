
	$(document).ready(function(){
	$(".fancybox").fancybox();
	})
	
google.maps.event.addDomListener(window, 'load', initialize);

function initialize() {
    var myLatlng = new google.maps.LatLng(53.340524, -6.2655232);

  var mapOptions = {
    zoom: 17,
    center: myLatlng
  }	
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Hello World!'
  });
}

$(document).rea

	function formsubmitted() {
	alert("Thank you, your form has been submitted");
			}
