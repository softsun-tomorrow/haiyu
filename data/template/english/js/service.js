$(function(){
	// JavaScript Document
	$("table").hide();
	$("table").eq(0).show();
	
	$(".service-tab ~ p").hide();
	$("p:contains('Mens Size')").show();
	$("p:contains('Womens')").hide();
	$("p:contains('Junior')").hide();
	$("p:contains('Gloves')").hide();
	$("p:contains('Footwear')").hide();
	
	$(".service-tab ul li").click(function(){
		var num = $(".service-tab ul li").length;
		for(var i = 0; i< num; i++)
		{
			$(".service-tab ul li").eq(i).removeClass("current");
		}
		$(this).addClass("current");
	});

	$(".service-tab ul li.li1").click(function(){
		$(".J-tab1").show();
		$(".J-tab2").hide();
		$(".J-tab3").hide();
		$(".J-tab4").hide();
		$(".J-tab5").hide();
		
		$("table").hide();
		$("table").eq(0).show();
		$(".service-tab ~ p").hide();
		$("p:contains('Mens Size')").show();
	});
	$(".service-tab ul li.li2").click(function(){
		$(".J-tab1").hide();
		$(".J-tab2").show();
		$(".J-tab3").hide();
		$(".J-tab4").hide();
		$(".J-tab5").hide();
		
		$("table").hide();
		$("table").eq(1).show();
		$(".service-tab ~ p").hide();
		$("p:contains('Womens')").show();
	});
	$(".service-tab ul li.li3").click(function(){
		$(".J-tab1").hide();
		$(".J-tab2").hide();
		$(".J-tab3").show();
		$(".J-tab4").hide();
		$(".J-tab5").hide();
		
		$("table").hide();
		$("table").eq(2).show();
		$(".service-tab ~ p").hide();
		$("p:contains('Junior')").show();
	});
	$(".service-tab ul li.li4").click(function(){
		$(".J-tab1").hide();
		$(".J-tab2").hide();
		$(".J-tab3").hide();
		$(".J-tab4").show();
		$(".J-tab5").hide();
		
		$("table").hide();
		$("table").eq(3).show();
		$(".service-tab ~ p").hide();
		$("p:contains('Gloves')").show();
	});
	$(".service-tab ul li.li5").click(function(){
		$(".J-tab1").hide();
		$(".J-tab2").hide();
		$(".J-tab3").hide();
		$(".J-tab4").hide();
		$(".J-tab5").show();
		
		$("table").hide();
		$("table").eq(4).show();
		$(".service-tab ~ p").hide();
		$("p:contains('Footwear')").show();
	});

	$(".group_show").click(function(){
		$(this).children("ul").show();
	});
	$(".group_show ul li").click(function(event){
		var text = $(this).text();
		var gender = $(this).attr('data');
		$('#gender').val(gender);
		$(this).parents("ul").parent("div").children("div").text(text);
		$(this).parents("ul").hide();
		event.stopPropagation();
	});
	$(".group_show").mouseleave(function(){
		$(this).children("ul").hide();
	});
});