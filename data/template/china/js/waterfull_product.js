/* *
  * 基于固定宽度的浮动定位的瀑布流
  * 实现简单，其实就是一个滚动加载数据而已
  * 缺点布局不随宽度的变化而改变，如果有图片特别长的时候，最高的列与最低的列有可能差距大，空白大
  * by VVG http://www.cnblogs.com/NNUF/
  */
var WaterFull = {
    $:function(id){return document.getElementById(id);},
    //绑定事件
    on:function(element, type, func) {
        if (element.addEventListener) {
            element.addEventListener(type, func, false); //false 表示冒泡
        } else if (element.attachEvent) {
            element.attachEvent('on' + type, func);
        } else {
            element['on' + type] = func;
        }
    },
    //获取列高度，返回数组，从小到大排序
    getRowByHeight:function(){
        var row = [this.$('row1'),this.$('row2'),this.$('row3'),this.$('row4'),this.$('row5'),this.$('row6'),this.$('row7')];
        var height = [];
        for(var i = 0;row[i];i++){
            row[i].height = row[i].offsetHeight;
            height.push(row[i]);
        }
        // 对高度进行排序，低--》高,保证最矮的优先加载
        height.sort(function(a,b){
            return a.height - b.height;
        });
        return height;
    },
    //获取页面总高度（总高度 = 卷去高度 + 可视区域高度）
    getPageHeight:function(){
        return document.documentElement.scrollHeight || document.body.scrollHeight ;
    },
    // 获取页面卷去的高度
    getScrollTop:function(){
        return document.documentElement.scrollTop || document.body.scrollTop;
    },
    // 获取页面可视区域宽度
    getClientHeigth:function(){
        return document.documentElement.clientHeight || document.body.clientHeight;
    },
    // 每次滚动需要加载的数据，可以用ajax替代读取，每次分批加载
    createChild:function(thumb,title,url){
		var str =   '	<div class="gear-pic">' +
					'		<a href="'+url+'">' +
					'			<img src="'+ thumb + '" alt="'+ title + '" title="'+ title + '" />' +
					'			<i class="i1"></i><i class="i2"></i>' +
					'		</a>' +
					'	</div>' +
					'	<p>'+ title + '</p>';
        var li = document.createElement('li');
		li.className = 'water';
        li.innerHTML = str;
        return li;
    },	
    append:function(){
	// water stop
		if(closeWater) return;
	// water execute
		else {
			waterLimit++;
			ajaxTo = url + '/' + waterLimit + langurl;
			$.get(ajaxTo,function(data){
				var dataTmp = data.remsg;		
				var i = 0,rows = WaterFull.getRowByHeight(),li,k;
				if(dataTmp.isEmpty == 1) {
					closeWater = 1;
					return;
				}
				else {
					for(;dataTmp[i];i++){
						li = WaterFull.createChild(dataTmp[i].thumb, dataTmp[i].title,dataTmp[i].url);
						rows[0].appendChild(li);
					}
				}
			},'json');
		}
    },
	onScroll:function(){
        // 获取高度等数据
        var height = WaterFull.getPageHeight();
        var scrollTop = WaterFull.getScrollTop();
        var clientHeight = WaterFull.getClientHeigth();
        // 如果滚动到最底部，就加载
        if(scrollTop + clientHeight > height - 50){
            WaterFull.append();
        }
    },
    timer:null
};
WaterFull.on(window, 'scroll',function(){
    clearTimeout( WaterFull.timer ); //清除上一次，性能优化
    WaterFull.timer = setTimeout(WaterFull.onScroll,500);
});