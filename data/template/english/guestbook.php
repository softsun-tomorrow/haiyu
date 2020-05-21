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
                        <p><?=lang('c_alibaba_web')?> : <?=$config['compnay_alibaba_addr']?></p>
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
            <!--
            <div class="coordinate"><img src="<?=$config['site_templateurl'];?>/images/coordinate.png" alt="" /></div>
            <div class="map" id="map_canvas" style="width:725px;height:438px;">
				<img src="<?=$config['site_templateurl'];?>/pic/map.jpg" alt="" />
				<iframe width="725" height="438" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps/ms?msa=0&amp;msid=212832536597057614010.0004e3bed7c7de9ad02dd&amp;ie=UTF8&amp;t=m&amp;ll=31.038374,121.246702&amp;spn=0.008053,0.015535&amp;z=16&amp;iwloc=0004e3bf1f774b4bbbec4&amp;output=embed"></iframe><br /><small>在较大的地图中查看<a target="_blank" href="https://maps.google.com/maps/ms?msa=0&amp;msid=212832536597057614010.0004e3bed7c7de9ad02dd&amp;ie=UTF8&amp;t=m&amp;ll=31.039881,121.246705&amp;spn=0.008053,0.015535&amp;z=16&amp;iwloc=0004e3bf1f774b4bbbec4&amp;source=embed" style="color:#0000FF;text-align:left">SHANGHAI LIUS SAILING GEAR CO., LTD.</a></small>
				<iframe width="725" height="438" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps/ms?hl=en&amp;msa=0&amp;msid=212832536597057614010.0004e3bed7c7de9ad02dd&amp;ie=UTF8&amp;t=m&amp;source=embed&amp;iwloc=0004e3bf1f774b4bbbec4&amp;ll=31.039881,121.246705&amp;spn=0.008053,0.015535&amp;output=embed"></iframe><br /><small>View <a href="https://maps.google.com/maps/ms?hl=en&amp;msa=0&amp;msid=212832536597057614010.0004e3bed7c7de9ad02dd&amp;ie=UTF8&amp;t=m&amp;source=embed&amp;iwloc=0004e3bf1f774b4bbbec4&amp;ll=31.039881,121.246705&amp;spn=0.008053,0.015535" style="color:#0000FF;text-align:left">SHANGHAI LIUS SAILING GEAR CO., LTD.</a> in a larger map</small>
			</div>
            -->
      </div>
    </div>
</div>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/public.js"></script>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/service.js"></script>
<script type="text/javascript">
function loadScript() {
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyCwWEAh0waJfQ0TRi2yIFz2hYmVD97qelI&sensor=false&callback=initialize";
	document.body.appendChild(script);
}
function initialize() {
	var mapOptions = {
		center: new google.maps.LatLng(31.072442990105, 121.37220515653996),
		zoom: 16,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
}

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