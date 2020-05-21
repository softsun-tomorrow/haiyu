$(function(){
	// JavaScript Document
	$(".J-front").click(function(){
		$(".J-front-pic").show();
		$(".J-back-pic").hide();
	});
	$(".J-back").click(function(){
		$(".J-front-pic").hide();
		$(".J-back-pic").show();
	});


	$(".J-close").click(function(){
		$(".c-box-bg").hide();	
		$(".c-box").hide();
		$('#techImg').attr('src','');
	});
});

function show_gear(){
	var wd = $(document).width();
	var he = $(document).height();
	$(".c-box-bg").width(wd).height(he).show();
	$(".c-box").show();
}