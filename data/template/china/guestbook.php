<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container">
    <div class="main-content ks-clear">
  		<div class="left-nav">
        	<ul>
				<li><?=$category['top']['name']?></li>
				<?php $tmpData = x6cms_thiscategory($category);?>
				<?php foreach ($tmpData as $item): ?>
				<li class="level<?=$item['level']?><?php if($item['id']==$category['id']):?> active<?php endif;?>">
					<a  class="<?php if($item['id']==$category['id']):?> current <?php endif;?>" href="<?=$item['url']?>">
						<?=$item['name']?>
					</a>
				</li>
				<?php endforeach; ?>
            </ul>
        </div>
        <div class="contact-content">
        	<div class="contact-main ks-clear">
            	<div class="contact-left">
                	<h1><?=$config['site_name'] ?></h1>
                    <div class="address">
						<?=lang('c_address')?> : <?=$config['company_address'] ?>
                    </div>
                    <div class="tel">
                    	<p><?=lang('c_tel')?> : <?=$config['company_tel']?></p>
                        <p><?=lang('c_mobile')?> : <?=$config['company_mobile']?></p>
                        <p><?=lang('c_qq')?> : <?=$config['company_qq']?></p>
                        <p><?=lang('c_email')?> : <?=$config['company_email']?></p>
                        <p><?=lang('c_web')?> : <?=$config['site_address']?></p>
<!--                        <p><?=lang('c_alibaba_web')?> : <?=$config['compnay_alibaba_addr']?></p>-->
                    </div>
                    <div class="company"><?=$config['company_name']?></div>
                    <div class="copyright-c"><?=lang('system_copy')?></div>
                </div>
                <div class="contact-right">
                	<h2><?=lang('c_touch')?></h2>
					<form name="guestbook" id="guestbook" action="" method="post">
                    <table width="200" border="0" cellspacing="0" cellpadding="0" class="contact-table">
                      <tr>
                        <td class="frist"><?=lang('c_fname')?></td>
                        <td><input name="firstname" id="firstname" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="frist"><?=lang('c_sname')?></td>
                        <td><input name="surname" id="surname" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="frist"><?=lang('c_gender')?></td>
                        <td><input name="gender" id="gender" type="hidden" value="1"/>
                            <div class="group_show">
                             <div class="btn-group"><?=lang('c_male')?></div>
                                 <ul class="dropdown-menu">
                                     <li data="1"><a href="javascript:;"><?=lang('c_male')?></a></li>
                                     <li data="2"><a href="javascript:;"><?=lang('c_female')?></a></li>
                                 </ul>
                            </div>
                      	</td>
                      </tr>
                      <tr>
                        <td class="frist must"><?=lang('c_email')?></td>
                        <td><input type="text" name="email" id="email" class="txt validate" validtip="required,email"/></td>
                      </tr>
                      <tr>
                        <td class="frist"><?=lang('phone')?></td>
                        <td><input type="text" name="phone" id="phone" class="txt"/></td>
                      </tr>
                      <tr>
                        <td class="frist"><?=lang('c_country')?></td>
                        <td><input name="country" id="country" type="text" /></td>
                      </tr>
                      <tr>
                        <td class="frist must"><?=lang('c_message')?></td>
                        <td><textarea name="content" id="content" validtip="required" class="txtarea validate"></textarea></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td class="submit">
							<input type="hidden" name="category" id="category" value="<?=$category['id']?>">
							<a href="javascript:resetGuesBook();" class="reset"></a>
							<a href="javascript:subGuestBook('<?=site_url('post/guestbook'.$langurl)?>');" class="send"></a>
							<!--
							<img onclick="resetGuesBook();" src="<?//=$config['site_templateurl'];?>/images/reset.png" alt="" />
							<img onclick="subGuestBook('<?//=site_url('post/guestbook'.$langurl)?>');" src="<?//=$config['site_templateurl'];?>/images/ok.png" alt="" />
							-->
							
							<!--
							<input type="reset" value="<?=lang('reset')?>" class="btn" style="background-image:<?=$config['site_templateurl'];?>/images/reset.png;"/>
							<input type="submit" value="<?=lang('submit')?>" class="btn" style="background-image:<?=$config['site_templateurl'];?>/images/ok.png;" />
							-->
						</td>
                      </tr>
                    </table>
					</form>
              </div>
            </div>
            <br/>
<!--            <div class="coordinate"><img src="--><?//=$config['site_templateurl'];?><!--/images/coordinate.png" alt="" /></div>-->
            <div class="map" id="map_canvas" style="width:725px;height:438px;">
			
			
			</div>
            
      </div>
    </div>
</div>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/public.js"></script>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/service.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&ak=2WELslG3AWEGoeOkSUmwBGVM&v=1.0"></script>  
   
<script type="text/javascript">

 var map = new BMap.Map("map_canvas");
    //var point = new BMap.Point(121.378803,31.078102);
    var point = new BMap.Point(121.055837,31.265516);
    map.centerAndZoom(point, 15);
    map.addControl(new BMap.ZoomControl()); 
    var opts = {
    		  width : 200,     // 信息窗口宽度
    		  height: 60,     // 信息窗口高度
//    		  title : "上海海驭水上运动器材有限公司" // 信息窗口标题
    		  title : "昆山晟睿冲浪运动用品有限公司" // 信息窗口标题
    		}
//    var infoWindow = new BMap.InfoWindow("地址 : 上海市闵行区金都路4299号6幢6313室 ", opts);  // 创建信息窗口对象
    var infoWindow = new BMap.InfoWindow("地址 : 江苏省昆山市千灯镇石浦街道声荣路265号 ", opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow,point); //开启信息窗口
 
    var marker1 = new BMap.Marker(new BMap.Point(121.378803,31.078102));  // 创建标注121.253718,31.042489
    map.addOverlay(marker1);              // 将标注添加到地图中
    marker1.addEventListener("click", function(){

    	var start = {
    	     name:"金都路"
    	}
    	var end = {
    	    name:"闵行区"
    	}
    	var opts = {
    	    mode:BMAP_MODE_DRIVING,
    	    region:"上海"
    	}
    	var ss = new BMap.RouteSearch();
    	ss.routeCall(start,end,opts);
    });




var lang = {};
lang.validform = {
		'onlyform':'<?=lang('valid_onlyform')?>',
		'required':{
			'text':'* <?=lang('valid_required_text')?>',
			'checkmultiple':'* <?=lang('valid_required_checkmultiple')?>',
			'select':'* <?=lang('valid_required_select')?>',
			'checkbox':'*  <?=lang('valid_required_checkbox')?>'
		},
		'min':{
			'text':'* <?=lang('valid_min_text')?>',
			'text1':'<?=lang('valid_min_text1')?> '
		},
		'max':{
			'text':'* <?=lang('valid_max_text')?>',
			'text1':'<?=lang('valid_max_text1')?>'
		},
		'email':{
			'text':'* <?=lang('valid_email_text')?>'
		},
		'equals':{
			'text':'* <?=lang('valid_equals_text')?>'
		}
};

$(function(){
	$("#guestbook").validform();
	//initialize();
});

</script>
<?php $this->load->view($config['site_template'].'/foot');?>