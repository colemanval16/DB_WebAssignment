/*$("#hide").click(function(){
    $("p").hide();
});

$("#show").click(function(){
    $("p").show();
});*/

$(document).ready(function(){
    $(".listcourses").hide();
	$("h2").click(function()
	{
		$("this").next("div").slideToggle(500);
		
	});
});