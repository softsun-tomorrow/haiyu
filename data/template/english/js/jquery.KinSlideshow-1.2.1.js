/**
 * 欢迎使用 KinSlideshow 幻灯片『焦点图』插件
 *
 * jQuery KinSlideshow plugin
 * ========================================〓说明〓========================================================
 * jQuery幻灯片插件，基本能满足你在网页上使用幻灯片(焦点图)效果。兼容IE6/IE7/IE8/IE9,FireFox,Chrome,Opera。
 * 使用极其方便、简单，外观样式可以自定义,具体定义样式方法和设置其他参数请参见demo文件
 * 建议在img标签里面 设置图片的宽度和高度 以防止网络太卡 JS读取不到图片真实宽、高
 * 所有宽度和高度单位都是像素，设置参数时不需要加单位(px)
 * ★KinSlideshow 1.2 可以在同一页面中使用多个KinSlideshow效果【2010-09-15】
 * ★KinSlideshow 1.2.1 修复了IE8兼容模式下 标题不切换的问题，也就是IE内核浏览器（如：遨游，QQ浏览器5）在IE8环境下不切换的问题【2010-11-01】，修复了设置标题面板透明，标题也会继承透明的问题。
 * ========================================================================================================
 * @name jquery.KinSlideshow.js
 * @version 1.2.1
 * @author Mr.Kin
 * @date 2010-11-01
 * @Email:Mr.Kin@Foxmail.com
 *
 * 欲索取最新版本KinSlideshow或是报告Bug，请发送Email至 【Mr.Kin@Foxmail.com】
 * 《实际应用时建议删除此段注释》
 **/


(function($) {

$.fn.KinSlideshow = function(settings){
	//设置属性扩展 循环递归的
	settings = jQuery.extend({
		intervalTime : 5,
		moveSpeedTime : 400,
		moveStyle:"left",
		mouseEvent:"mouseclick",
		isHasTitleBar:true,
		titleBar:{titleBar_height:40,titleBar_bgColor:"#000000",titleBar_alpha:0.5},
		isHasTitleFont:true,
		titleFont:{TitleFont_size:12,TitleFont_color:"#FFFFFF",TitleFont_family:"Verdana",TitleFont_weight:"bold"},
		isHasBtn:true,
		isHasPrevNextbtn:true,
		btn:{btn_bgColor:"#666666",btn_bgHoverColor:"#CC0000",btn_fontColor:"#CCCCCC",btn_fontHoverColor:"#000000",btn_fontFamily:"Verdana",btn_borderColor:"#999999",btn_borderHoverColor:"#FF0000",btn_borderWidth:1,btn_bgAlpha:0.7},
		PrevNextbtn:{
			PrevNextbtn_nextPosition:"left -45px",
			PrevNextbtn_prevPosition:"left top",
			PrevNextbtn_opacity:0.5,
			PrevNextbtn_lineHeight:"10px",
			PrevNextbtn_width:"45px",
			PrevNextbtn_height:"45px",
			PrevNextbtn_nextRight:10,
			PrevNextbtn_prevLeft:10,
			PrevNextbtn_top:130,
			PrevNextbtn_bgImage:"./images/png24.png",
			PrevNextbtn_bgColor:"#666666",
			PrevNextbtn_bgHoverColor:"#CC0000",
			PrevNextbtn_fontColor:"#CCCCCC",
			PrevNextbtn_fontHoverColor:"#000000",
			PrevNextbtn_fontFamily:"Verdana",
			PrevNextbtn_borderColor:"#999999",
			PrevNextbtn_borderHoverColor:"#FF0000",
			PrevNextbtn_borderWidth:1,
			PrevNextbtn_bgAlpha:0.7
		}
	},settings);
	
	//设置标题条 { 高度，背景色，透明度 }
	var titleBar_Bak = {titleBar_height:40,titleBar_bgColor:"#000000",titleBar_alpha:0.5};
	//设置标题字体 { 大小，颜色，字体类型，粗体 }
	var titleFont_Bak = {TitleFont_size:12,TitleFont_color:"#FFFFFF",TitleFont_family:"Verdana",TitleFont_weight:"bold"};
	//设置按钮 { 背景色，滑过背景色，字体颜色，字体滑过颜色，字体类型，边框颜色，边框滑过颜色，边框宽度，背景透明度 }
	var btn_Bak = {btn_bgColor:"#666666",btn_bgHoverColor:"#CC0000",btn_fontColor:"#CCCCCC",btn_fontHoverColor:"#000000",btn_fontFamily:"Verdana",btn_borderColor:"#999999",btn_borderHoverColor:"#FF0000",btn_borderWidth:1,btn_bgAlpha:0.7} ;
	
	//根据传递的参数。重新设置
	for (var key in titleBar_Bak){
		if(settings.titleBar[key] == undefined){
			settings.titleBar[key] = titleBar_Bak[key];
		}
	}	
	for (var key in titleFont_Bak){
		if(settings.titleFont[key] == undefined){
			settings.titleFont[key] = titleFont_Bak[key];
		}
	}
	for (var key in btn_Bak){
		if(settings.btn[key] == undefined){
			settings.btn[key] = btn_Bak[key];
		}
	}	  
	
	//获取当前的上下文的html对象  即调用这个插件的对象
	var ksthis = this;
	var ksbs = $(ksthis).selector;
	var KSS_DateArray = new Array();
	var KSS_imgaeLength = 0;
	var KSS_Size =new Array();
	var KSS_changeFlag = 0;
	var KSS_IntervalTime = settings.intervalTime;
	var KSS_setInterval;
	var KSS_firstMoveFlag = true;
	var getTitleBar_Height;
	var curIndex = 0;
	
	if(isNaN(KSS_IntervalTime) || KSS_IntervalTime <= 1){
			KSS_IntervalTime = 5;
	}
	if(settings.moveSpeedTime > 500){
		settings.moveSpeedTime = 500;
	}else if(settings.moveSpeedTime < 100){
		settings.moveSpeedTime = 100;
	}
	 
	//初始化 当前对象设置为隐藏。图片边框设置为0。 调用 KSS_start  KSS_mousehover
	function KSS_initialize(){
		$(ksthis).css({visibility:"hidden"});
		$(ksbs+" a img").css({border:0});
		KSS_start();
		KSS_mousehover();
	};

	 //开始处理
	function KSS_start(){
		//获取 a 个数
		KSS_imgaeLength = $(ksbs+" a").length;
		//获取图片宽度。高度
		KSS_Size.push($(ksbs+" a img").width());
		KSS_Size.push($(ksbs+" a img").height());
		
		//循环图片，将alt属性写入KSS_DateArray
		$(ksbs+" a img").each(function(i){
			KSS_DateArray.push($(this).attr("alt"));		
		});
		//所有a 的外层 添加 div
		$(ksbs+" a").wrapAll("<div id='KSS_content'></div>");
		//再拷贝一个 #KSS_content 修改id为 KSS_contentClone， 追加到当前html对象中
		$(ksbs).find("#KSS_content").clone().attr("id","KSS_contentClone").appendTo(ksthis);
		
		KSS_setTitleBar();
		KSS_setTitleFont();
		KSS_setBtn();
		KSS_setPrevNextbtn();
		KSS_action();
		KSS_btnEvent(settings.mouseEvent);
		KSS_btnPrevClick();
		KSS_btnNextClick();
		$(ksthis).css({visibility:"visible"});
	};

	 //设置标题条
	function KSS_setTitleBar(){
		//当前html对象样式设置为图片的宽高
		$(ksthis).css({width:KSS_Size[0],height:KSS_Size[1],overflow:"hidden",position:"relative"});
		//添加标题条div层
		$(ksthis).append("<div class='KSS_titleBar'></div>");
		getTitleBar_Height = settings.titleBar.titleBar_height;
		
		if(isNaN(getTitleBar_Height)){
			getTitleBar_Height = 40;
		}else if(getTitleBar_Height < 25){
			getTitleBar_Height = 25;
		};
		
		$(ksbs+" .KSS_titleBar").css({height:getTitleBar_Height,width:"100%",position:"absolute",bottom:0,left:0})
		if(settings.isHasTitleBar){
				$(ksbs+" .KSS_titleBar").css({background:settings.titleBar.titleBar_bgColor,opacity:settings.titleBar.titleBar_alpha})	 
		}
	};
	
	function KSS_setTitleFont(){
		if(settings.isHasTitleFont){
			$(ksthis).append("<div class='KSS_titleBox'><h2 class='title' style='margin:3px 0 0 6px;padding:0;'></h2></div>");
			$(ksbs+" .KSS_titleBox").css({height:getTitleBar_Height,width:"100%",position:"absolute",bottom:0,left:0})
			$(ksbs+" .KSS_titleBox h2").css({fontSize:settings.titleFont.TitleFont_size,color:settings.titleFont.TitleFont_color,fontFamily:settings.titleFont.TitleFont_family,fontWeight:settings.titleFont.TitleFont_weight});
			setTiltFontShow(0);
		};
		
	};
	
	//添加按钮
	function KSS_setBtn(){
		if(settings.btn.btn_borderWidth > 2){settings.btn.btn_borderWidth = 2}
		if(settings.btn.btn_borderWidth < 0 || isNaN(settings.btn.btn_borderWidth)){settings.btn.btn_borderWidth = 0}
		if(settings.isHasBtn && KSS_imgaeLength >= 2){
			$(ksthis).append("<div class='KSS_btnBox' style='position:absolute;right:10px;bottom:5px; z-index:100'></div>");
			var KSS_btnList = "";
			for(i=1;i<=KSS_imgaeLength;i++){
					KSS_btnList+="<li>"+i+"</li>";
			}
			KSS_btnList = "<ul id='btnlistID' style='margin:0;padding:0; overflow:hidden'>"+KSS_btnList+"</ul>";
			$(ksbs+" .KSS_btnBox").append(KSS_btnList);
			$(ksbs+" .KSS_btnBox #btnlistID li").css({listStyle:"none",float:"left",width:18,height:18,borderWidth:settings.btn.btn_borderWidth,borderColor:settings.btn.btn_borderColor,borderStyle:"solid",background:settings.btn.btn_bgColor,textAlign:"center",cursor:"pointer",marginLeft:3,fontSize:12,fontFamily:settings.btn.btn_fontFamily,lineHeight:"18px",opacity:settings.btn.btn_bgAlpha,color:settings.btn.btn_fontColor});
			$(ksbs+" #btnlistID li:eq(0)").css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});
		};
	};

	 //添加上一页下一页按钮
	function KSS_setPrevNextbtn(){
		if(settings.PrevNextbtn.PrevNextbtn_borderWidth > 2){settings.PrevNextbtn.PrevNextbtn_borderWidth = 2;};
		if(settings.PrevNextbtn.PrevNextbtn_borderWidth < 0 || isNaN(settings.PrevNextbtn.PrevNextbtn_borderWidth)){settings.PrevNextbtn.PrevNextbtn_borderWidth = 0}
		if(settings.isHasPrevNextbtn && KSS_imgaeLength >= 2){
			$(ksthis).append("<div class='KSS_PrevNextbtnBox' style='right:10px;bottom:5px; z-index:101'></div>");
			var KSS_PrevNextbtn = "<div class='prev_div'><a id='prev' class='pngfix' href='javascript:void(0);'></a></div><div class='next_div'><a id='next' class='pngfix' href='javascript:void(0);'></a></div>";
			$(ksbs+" .KSS_PrevNextbtnBox").append(KSS_PrevNextbtn);
			$(ksbs+" .KSS_PrevNextbtnBox a").css({
				"background-color":"transparent",
				"background-attachment":"scroll",
				"background-repeat":"no-repeat",
				"background-image": "url('"+settings.PrevNextbtn.PrevNextbtn_bgImage+"')", 
				"width":""+settings.PrevNextbtn.PrevNextbtn_width, 
				"height":""+settings.PrevNextbtn.PrevNextbtn_height, 
				"line-height":""+settings.PrevNextbtn.PrevNextbtn_lineHeight, 
				"opacity":settings.PrevNextbtn.PrevNextbtn_opacity, 
				"overflow":"hidden", 
				"position":"absolute", 
				"top":settings.PrevNextbtn.PrevNextbtn_top, 
				"z-index":103
			});
			$(ksbs+" .KSS_PrevNextbtnBox #prev").css({"background-position": settings.PrevNextbtn.PrevNextbtn_prevPosition, left: settings.PrevNextbtn.PrevNextbtn_prevLeft});
			$(ksbs+" .KSS_PrevNextbtnBox #next").css({"background-position": settings.PrevNextbtn.PrevNextbtn_nextPosition, right: settings.PrevNextbtn.PrevNextbtn_nextRight});
		};
	};

	function KSS_action(){
		switch(settings.moveStyle){
			case "left":  KSS_moveLeft(); break;
			case "right": KSS_moveRight();break;
			case "up":    KSS_moveUp();   break;
			case "down":  KSS_moveDown(); break;
			default:      settings.moveStyle = "left"; KSS_moveLeft();
		}	 
	};
	
	function KSS_moveLeft(){
		$(ksbs+" div:lt(2)").wrapAll("<div id='KSS_moveBox'></div>");
		$(ksbs).find("#KSS_moveBox").css({width:KSS_Size[0],height:KSS_Size[1],overflow:"hidden",position:"relative"});
		$(ksbs).find("#KSS_content").css({float:"left"});
		$(ksbs).find("#KSS_contentClone").css({float:"left"});
		$(ksbs+" #KSS_moveBox div").wrapAll("<div id='KSS_XposBox'></div>");
		$(ksbs).find("#KSS_XposBox").css({float:"left",width:"2000%"});
		
		KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
	};
	
	function KSS_moveRight(){
		$(ksbs+" div:lt(2)").wrapAll("<div id='KSS_moveBox'></div>");
		$(ksbs).find("#KSS_moveBox").css({width:KSS_Size[0],height:KSS_Size[1],overflow:"hidden",position:"relative"});
		$(ksbs).find("#KSS_content").css({float:"left"});
		$(ksbs).find("#KSS_contentClone").css({float:"left"});
		$(ksbs+" #KSS_moveBox div").wrapAll("<div id='KSS_XposBox'></div>");
		$(ksbs).find("#KSS_XposBox").css({float:"left",width:"2000%"});
		$(ksbs).find("#KSS_contentClone").html("");
		$(ksbs+" #KSS_content a").wrap("<span></span>")
		$(ksbs+" #KSS_content a").each(function(i){
			$(ksbs).find("#KSS_contentClone").prepend($(ksbs+" #KSS_content span:eq("+i+")").html());
		})
		
		$(ksbs).find("#KSS_content").html($(ksbs).find("#KSS_contentClone").html());
		var KSS_offsetLeft = (KSS_imgaeLength-1)*KSS_Size[0];
		$(ksbs).find("#KSS_moveBox").scrollLeft(KSS_offsetLeft);
		KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
	};	 
	
	function KSS_moveUp(){
		$(ksbs+" div:lt(2)").wrapAll("<div id='KSS_moveBox'></div>");
		$(ksbs).find("#KSS_moveBox").css({width:KSS_Size[0],height:KSS_Size[1],overflow:"hidden",position:"relative"});
		$(ksbs).find("#KSS_moveBox").animate({scrollTop: 0}, 1);
		KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
		
	};	 
	 
	function KSS_moveDown(){
		$(ksbs+" div:lt(2)").wrapAll("<div id='KSS_moveBox'></div>");
		$(ksbs).find("#KSS_moveBox").css({width:KSS_Size[0],height:KSS_Size[1],overflow:"hidden",position:"relative"});
		$(ksbs).find("#KSS_contentClone").html("");
		$(ksbs+" #KSS_content a").wrap("<span></span>")
		$(ksbs+" #KSS_content a").each(function(i){
			$(ksbs).find("#KSS_contentClone").prepend($(ksbs+" #KSS_content span:eq("+i+")").html());
		})
		$(ksbs).find("#KSS_content").html($(ksbs).find("#KSS_contentClone").html());
		
		var KSS_offsetTop = (KSS_imgaeLength-1)*KSS_Size[1];
		$(ksbs).find("#KSS_moveBox").animate({scrollTop: KSS_offsetTop}, 1);
		KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
	};
	
	function KSS_move(style){
			switch(style){
				case "left":
					if(KSS_changeFlag >= KSS_imgaeLength){
						KSS_changeFlag = 0;
						$(ksbs).find("#KSS_moveBox").scrollLeft(0);
						$(ksbs).find("#KSS_moveBox").animate({scrollLeft:KSS_Size[0]}, settings.moveSpeedTime);
					}else{
						sp =(KSS_changeFlag+1)*KSS_Size[0];
						if ($(ksbs).find("#KSS_moveBox").is(':animated')){ 
							$(ksbs).find("#KSS_moveBox").stop();
							$(ksbs).find("#KSS_moveBox").animate({scrollLeft: sp}, settings.moveSpeedTime);
						}else{
							$(ksbs).find("#KSS_moveBox").animate({scrollLeft: sp}, settings.moveSpeedTime);
						}
					}
					setTiltFontShow(KSS_changeFlag+1);
					break;
				case "right":
					var KSS_offsetLeft = (KSS_imgaeLength-1)*KSS_Size[0];
					if(KSS_changeFlag >= KSS_imgaeLength){
						KSS_changeFlag = 0;
						$(ksbs).find("#KSS_moveBox").scrollLeft(KSS_offsetLeft+KSS_Size[0]);
						$(ksbs).find("#KSS_moveBox").animate({scrollLeft:KSS_offsetLeft}, settings.moveSpeedTime);
					}else{
						if(KSS_firstMoveFlag){
							KSS_changeFlag++;
							KSS_firstMoveFlag = false;
						}
						sp =KSS_offsetLeft-(KSS_changeFlag*KSS_Size[0]);
						if ($(ksbs).find("#KSS_moveBox").is(':animated')){ 
							$(ksbs).find("#KSS_moveBox").stop();
							$(ksbs).find("#KSS_moveBox").animate({scrollLeft: sp}, settings.moveSpeedTime);
						}else{
							$(ksbs).find("#KSS_moveBox").animate({scrollLeft: sp}, settings.moveSpeedTime);
						}
					}
					setTiltFontShow(KSS_changeFlag);
					break;
				case "up":
					if(KSS_changeFlag >= KSS_imgaeLength){
						KSS_changeFlag = 0;
						$(ksbs).find("#KSS_moveBox").scrollTop(0);
						$(ksbs).find("#KSS_moveBox").animate({scrollTop:KSS_Size[1]}, settings.moveSpeedTime);
					}else{
						sp =(KSS_changeFlag+1)*KSS_Size[1];
						if ($(ksbs).find("#KSS_moveBox").is(':animated')){ 
							$(ksbs).find("#KSS_moveBox").stop();
							$(ksbs).find("#KSS_moveBox").animate({scrollTop: sp}, settings.moveSpeedTime);
						}else{
							$(ksbs).find("#KSS_moveBox").animate({scrollTop: sp}, settings.moveSpeedTime);
						}
					}
					setTiltFontShow(KSS_changeFlag+1);
					break;
				case "down":
					var KSS_offsetLeft = (KSS_imgaeLength-1)*KSS_Size[1];
					if(KSS_changeFlag >= KSS_imgaeLength){
						KSS_changeFlag = 0;
						$(ksbs).find("#KSS_moveBox").scrollTop(KSS_offsetLeft+KSS_Size[1]);
						$(ksbs).find("#KSS_moveBox").animate({scrollTop:KSS_offsetLeft}, settings.moveSpeedTime);
					}else{
						if(KSS_firstMoveFlag){
							KSS_changeFlag++;
							KSS_firstMoveFlag = false;
						}
						sp =KSS_offsetLeft-(KSS_changeFlag*KSS_Size[1]);
						if ($(ksbs).find("#KSS_moveBox").is(':animated')){ 
							$(ksbs).find("#KSS_moveBox").stop();
							$(ksbs).find("#KSS_moveBox").animate({scrollTop: sp}, settings.moveSpeedTime);
						}else{
							$(ksbs).find("#KSS_moveBox").animate({scrollTop: sp}, settings.moveSpeedTime);
						}
					}
					setTiltFontShow(KSS_changeFlag);
					break;
			}

			KSS_changeFlag++;
			curIndex = KSS_changeFlag;
	}	 
	 
	function setTiltFontShow(index){
		if(index == KSS_imgaeLength){index = 0};
		if(settings.isHasTitleFont){
			$(ksbs+" .KSS_titleBox h2.title").html(KSS_DateArray[index]);
		};
		$(ksbs+" #btnlistID li").each(function(i){
			if(i == index){
				$(this).css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});						
			}else{
				$(this).css({background:settings.btn.btn_bgColor,borderColor:settings.btn.btn_borderColor,color:settings.btn.btn_fontColor});						
			}
		})		 
	};
	
	//按钮事件
	function KSS_btnEvent(Event){
		switch(Event){
			case "mouseover" : KSS_btnMouseover(); break;
			case "mouseclick" : KSS_btnMouseclick(); break;			
			default : KSS_btnMouseclick();
		}
	};
	
	function KSS_btnMouseover(){
		$(ksbs+" #btnlistID li").mouseover(function(){
			var curLiIndex = $(ksbs+" #btnlistID li").index($(this)); 
			curIndex = 	curLiIndex;			
	  		switch(settings.moveStyle){
				case  "left" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "right" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}
				case  "up" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "down" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}
			}
			KSS_move(settings.moveStyle);
			$(ksbs+" #btnlistID li").each(function(i){
				if(i ==curLiIndex){
					$(this).css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});						
				}else{
					$(this).css({background:settings.btn.btn_bgColor,borderColor:settings.btn.btn_borderColor,color:settings.btn.btn_fontColor});						
				}
			})
		});
	};
	
	function KSS_btnMouseclick(){
		$(ksbs+" #btnlistID li").click(function(){
			var curLiIndex = $(ksbs+" #btnlistID li").index($(this)); 
			curIndex = 	curLiIndex;		
			switch(settings.moveStyle){
				case  "left" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "right" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}
				case  "up" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "down" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}					
				
			};
			KSS_move(settings.moveStyle);
			$(ksbs+" #btnlistID li").each(function(i){
				if(i ==curLiIndex){
					$(this).css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});						
				}else{
					$(this).css({background:settings.btn.btn_bgColor,borderColor:settings.btn.btn_borderColor,color:settings.btn.btn_fontColor});						
				}
			})
		});
			
	};	
	
	function KSS_mousehover(){
			//清除时间设置
			$(ksbs+" #btnlistID li").mouseover(function(){
				clearInterval(KSS_setInterval); 
			});
			//重新设置滑动类型和时间。滑动速度
			$(ksbs+" #btnlistID li").mouseout(function(){
				KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
			});
	};

	//点击上一个
	function KSS_btnPrevClick(){
		$(ksbs+" .KSS_PrevNextbtnBox #prev").click(function(){
			clearInterval(KSS_setInterval); 
			if(curIndex > 0) {
				var curLiIndex = curIndex-1;
			} else {
				curIndex = KSS_imgaeLength;
				var curLiIndex = curIndex-1;
			}
			switch(settings.moveStyle){
				case  "left" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}
				case  "right" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "up" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}	
				case  "down" :		
					KSS_changeFlag = curLiIndex-1; break;
			};
			KSS_move(settings.moveStyle);
			$(ksbs+" #btnlistID li").each(function(i){
				if(i ==curLiIndex){
					$(this).css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});						
				} else {
					$(this).css({background:settings.btn.btn_bgColor,borderColor:settings.btn.btn_borderColor,color:settings.btn.btn_fontColor});						
				}
			});	
			KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);
		});
	};

	//点击下一个
	function KSS_btnNextClick(){
		$(ksbs+" .KSS_PrevNextbtnBox #next").click(function(){	
			clearInterval(KSS_setInterval); 
			var curLiIndex = curIndex+1;
			switch(settings.moveStyle){
				case  "left" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "right" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}
				case  "up" :
					KSS_changeFlag = curLiIndex-1; break;
				case  "down" :
					if(KSS_firstMoveFlag){
						KSS_changeFlag = curLiIndex-1; break;
					}else{
						KSS_changeFlag = curLiIndex; break;
					}					
				
			};
			KSS_move(settings.moveStyle);
			$(ksbs+" #btnlistID li").each(function(i){
				if(i ==curLiIndex){
					$(this).css({background:settings.btn.btn_bgHoverColor,borderColor:settings.btn.btn_borderHoverColor,color:settings.btn.btn_fontHoverColor});						
				}else{
					$(this).css({background:settings.btn.btn_bgColor,borderColor:settings.btn.btn_borderColor,color:settings.btn.btn_fontColor});						
				}
			});		
			KSS_setInterval = setInterval(function(){KSS_move(settings.moveStyle)},KSS_IntervalTime*1000+settings.moveSpeedTime);	
		});
	};
	
	return KSS_initialize();
};
 })(jQuery);