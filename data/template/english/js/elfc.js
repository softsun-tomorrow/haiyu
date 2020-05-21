$(function($){
	$('a[name=e]').click(function(){
		var idx = $(this).attr('rel');
		var go = $(this).attr('go');
		if( go === false) return;
		var json = {'idx' : idx, 'time' : new Date().getTime()};
		$.post(FAV + 'addTry.html', json, function(){
			//window.open(go, '_blank');
			$.openUrl(go, '_blank');
		}, 'json');
	});
	
	$('input[name=e]').click(function(){
		var idx = $(this).attr('rel');
		var go = $(this).attr('go');
		if( go === false) return;
		var json = {'idx' : idx, 'time' : new Date().getTime()};
		$.post(FAV + 'addTry.html', json, function(){
			//window.open(go, '_blank');
			$.openUrl(go, '_blank');
		}, 'json');
	});
	
	$('a[name=l]').live('click',function(){
		var idx = $(this).attr('rel');
		var type = $(this).attr('type');
		var json = {'idx' : idx, 'type' : type, 'time' : new Date().getTime()};
		$.post(FAV + 'addLike.html', json, function(data){
			if(data.result == 0) {
				switch (parseInt(data.msg)) {
				case -1:
					//window.open(YEEGOLWEB + 'passport/login.html');
					$.openUrl(YEEGOLWEB + 'passport/login.html');
					break;
				case 0:					
					$.dialog({message:'已喜欢过！'});
				}
			} else {
				$.dialog({message:'提交喜欢成功！'}, 'succeed');
			}
		}, 'json');
		return false;
	});
	
	$('a[name=f]').live('click',function(){
		var idx = $(this).attr('rel');
		var type = $(this).attr('type');
		var t = $(this).attr('t');
		var json = {'idx' : idx, 'type' : type, 't' : t, 'time' : new Date().getTime()};
		$.post(FAV + 'addFav.html', json, function(data){
			if(data.result == 0) {
				switch (parseInt(data.msg)) {
					case -1:
						$.openUrl(YEEGOLWEB + 'passport/login.html');
						break;
					case 0:
						$.dialog({message:'已收藏过！'});
				}
			} else {
				$.dialog({message:'提交收藏成功！'}, 'succeed');
			}
		}, 'json');
		return false;
	});

}(jQuery));

function addLike(goodsId) {
	var json = {'idx' : goodsId, 'type' : 2, 'time' : new Date().getTime()};
	$.post('/favorite/addLike.html', json, function(data){
		if(data.result == 0) {
			switch (parseInt(data.msg)) {
				case -1:
					$.openUrl(YEEGOLWEB + 'passport/login.html');
					break;
				case 0:					
					$.dialog({message:'已喜欢过！'});
			}
		} else {
			var count = parseInt($('#likeCount').text(), 10);
			$('#likeCount').text(++count);
			$.dialog({message:'提交喜欢成功！'}, 'succeed');
		}
	}, 'json');
}


function addFavorite(goodsId) {
	var json = {'idx' : goodsId, 'type' : 2, 'time' : new Date().getTime()};
	$.post('/favorite/addFav.html', json, function(data){
		if(data.result == 0) {
			switch (parseInt(data.msg)) {
			case -1:
				$.openUrl(YEEGOLWEB + 'passport/login.html');
				break;
			case 0:
				$.dialog({message:'已收藏过！'});
			}
		} else {
			var count = parseInt($('#favCount').text(), 10);
			$('#favCount').text(++count);
			$.dialog({message:'提交收藏成功！'}, 'succeed');
		}
	}, 'json');
}

function gotoCmt() {
	document.location.href = '#cmt';
	$('#goodsCmt').click();
}