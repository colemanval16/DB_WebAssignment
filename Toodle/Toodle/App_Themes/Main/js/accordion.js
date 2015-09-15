$(document).ready(function(){
    $("article .courseDescription").hide();
    $("article .title").click(function ()
	{
        $(this).next("article .courseDescription").slideToggle(500);
	});	
});