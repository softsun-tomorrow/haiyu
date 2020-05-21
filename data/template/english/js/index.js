$(document).ready(
function()
{
  $("#prevbtn").click(
  function()
  {
    if($("#banner_list ul").css("left").replace("px","") < (-305 * ($("#banner_list ul li").length - 4)))
    {
      $("#banner_list ul").animate({left:'0px'});
    }
    else
    {
     $("#banner_list ul").animate({left:'-=305px'});
    }
  }
  );
  $("#nextbtn").click(
  function()
  {
    if($("#banner_list ul").css("left").replace("px","") >= 0)
    {
     $("#banner_list ul").animate({left:"-" + 305 * ($("#banner_list ul li").length - 3) + "px"});
    }
    else
    {
     $("#banner_list ul").animate({left:'+=305px'});
    }
  }
  );
  //setInterval(function(){$("#prevbtn").click();},5000);
  $("#bannermenu li").mouseover(
  function()
  {
    $("#bannermenu li").removeClass("current");
    currents = $(this);
    $(this).addClass("current");
    $("#bannerlist ul").stop().animate({left:-980*Number($(this).attr("tabindex"))});
  }
  );
  setInterval("scrollimg()",5000);
  if(isie6())
  correctPNG();
}
);
var current = $("#bannermenu li:first");
function scrollimg()
{
  current = $(current).next();
  if($(current).length <= 0)
  current = $("#bannermenu li:first");
  $(current).mouseover();
}
function correctPNG()
{
   for(var i=0; i<document.images.length; i++)
   {
   var img = document.images[i]
   var imgName = img.src.toUpperCase()
   if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
   {
   var imgID = (img.id) ? "id='" + img.id + "' " : ""
   var imgClass = (img.className) ? "class='" + img.className + "' " : ""
   var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "
   var imgStyle = "display:inline-block;" + img.style.cssText
   if (img.align == "left") imgStyle = "float:left;" + imgStyle
   if (img.align == "right") imgStyle = "float:right;" + imgStyle
   if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle 
   var strNewHTML = "<span " + imgID + imgClass + imgTitle
   + " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"
   + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
   + "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>"
   img.outerHTML = strNewHTML
   i = i-1
   };
   };
};
function isie6() {
    if ($.browser.msie) {
        if ($.browser.version == "6.0") return true;
    }
    return false;
}

/*首页切换*/
$("#switch_l").ready(function(){
	i=0;
    function show() {
        //len=document.getElementsByTagName('a');
		var len = $("#switch_l").children("a")
        if (i<len.length-1){
            len[i].style.display = "none";
            i++;
        }else {
            for(a=0;a<len.length-1;a++){
                len[a].style.display = "block";
                i=0;
            }
        }
    }
    setInterval(show, 3500);
});
$("#switch_r").ready(function(){
	num=0;
    function show() {
        //len=document.getElementsByTagName('a');
		var len = $("#switch_r").children("a")
        if (num<len.length-1){
            len[num].style.display = "none";
            num++;
        }else {
            for(a=0;a<len.length-1;a++){
                len[a].style.display = "block";
                num=0;
            }
        }
    }
    setInterval(show, 2000);
});