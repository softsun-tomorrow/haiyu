var currentmenu = false;
var isover = false;
var nav_select = false;

$(document).ready(function(){
	$("#nav .menu").mouseover(function(){
		if($(this).find(".none").length <=0 ||$.trim($(this).find(".none").html()) == "")
		{
			return;
		}
		$("#nav_detail").html($(this).find(".none").html());
		$("#nav_detail_content").css({left:$(this).offset().left + 20,top:$(this).offset().top + 29});
		$("#nav_detail_content").show();
		$("#nav .menu").removeClass("select");
		$(this).addClass("select");
		nav_select = $(this);
	});
	
	$("#nav .menu").mouseout(function(){
		$("#nav_detail_content").hide();
		$("#nav .menu").removeClass("select");
	});
	
	$("#nav_detail_content").mouseover(function(){
		$("#nav_detail_content").show();
		$(nav_select).addClass("select");
	});
	
	$("#nav_detail_content").mouseout(function(){
		$("#nav_detail_content").hide();
		$("#nav .menu").removeClass("select");
	});

	$("#leftcontent dd .li").mouseover(function(){
		isover = true;
		if($(this).find(".none").length <=0 ||$.trim($(this).find(".none").html()) == ""){ isover = false;return;}
		$("#detailmenus").html($(this).find(".none").html());
		currentmenu = $(this);
		$("#detailmenucontent").css({top:$(this).offset().top + 5,left:$(this).offset().left + 198});
		$("#detailmenucontent").show();
	});
	
	$("#leftcontent dd .li").mouseout(function(){
		isover = false;
		setTimeout(function(){if(isover){$("#detailmenucontent").show();$(currentmenu).addClass("select");}else {$("#detailmenucontent").hide();$("#leftcontent dd .li").removeClass("select");}},200);
	});
	
	$("#detailmenucontent").mouseover(function(){
		isover = true;
		$("#detailmenucontent").show();
	});
	
	$("#detailmenucontent").mouseout(function(){
		isover = false;
		setTimeout(function(){if(isover){$("#detailmenucontent").show();$(currentmenu).addClass("select");}else {$("#detailmenucontent").hide();$("#leftcontent dd .li").removeClass("select");}},200);
	});
	
	$("#smalllist li").mouseover(function(){
		$("#smalllist li").removeClass("current");
		$(this).addClass("current");
		$("#zoom_img").attr("src",$.trim($(this).find(".none").html()));
	});
});   