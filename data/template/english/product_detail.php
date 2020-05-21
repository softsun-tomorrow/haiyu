<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container ks-clear">
  	<div class="bor-t"></div>
	<div class="gear-l-model">
    	<h1>3D Pro</h1>
        <div class="J-front-pic"><span class="dtcvm480"><img src="<?=$detail['thumb2']?>" alt="" /></span></div>
        <div class="J-back-pic"><span class="dtcvm480"><img src="<?=$detail['thumb3']?>" alt="" /></span></div>
        <div class="btn-tab">
        	<a href="javascript:;" class="J-front"><img src="<?=$config['site_templateurl'];?>/images/front.jpg" alt="" /></a>
            <a href="javascript:;" class="J-back"><img src="<?=$config['site_templateurl'];?>/images/back.jpg" alt="" /></a>
        </div>
    </div>
	<?php $attr = explode(',',$detail['attrs']); ?>
    <div class="code-r">
		<div class="return">
			<!-- 要记录返回前的链接 -->
			<a href="<?php echo site_url('category/'.$category['dir'].$langurl) ;?>">Return</a>
		</div>
		<h2><?=$detail['title']?></h2>
		<div class="introduct"><?=$detail['content']?></div>
        <div class="border-b-b">CODE<span style='margin-left:20px;'><?=$detail['code']?></span></div>
		<div class="select-colour">
            <h3>SELECT COLOUR</h3>
			<?php 
			$color = x6cms_attributebyname('SELECT COLOUR');
			if($color){
				$colorChild = x6cms_attributebyparent($color['id']);
			} else {
				$colorChild = array();
			}
			foreach($colorChild as $val) {
				if($attr && in_array($val['id'],$attr)){
			?>
				<img src="<?=$val['thumb']?>" alt="<?=$val['name']?>" title="<?=$val['name']?>" data-id="<?=$val['id']?>"/>
			<?php
				}
			}
			?>
        </div>
    	<div class="thickness">
        	<h3>THICKNESS</h3>
			<?php 
			$thickness = x6cms_attributebyname('THICKNESS');
			if($thickness){
				$thicknessChild = x6cms_attributebyparent($thickness['id']);
			} else {
				$thicknessChild = array();
			}
			foreach($thicknessChild as $val) {
				if($attr && in_array($val['id'],$attr)){
			?>
				<p><?=$val['name']?></p>
			<?php
				}
			}
			?>
        </div>
        <div class="features">
        	<h3>FEATURES</h3>
            <ul>
			<?php 
			$features = x6cms_attributebyname('FEATURES');
			if($features){
				$featuresChild = x6cms_attributebyparent($features['id']);
			} else {
				$featuresChild = array();
			}
			foreach($featuresChild as $val) {
				if($attr && in_array($val['id'],$attr)){
			?>
				<li><?=$val['name']?></li>
			<?php
				}
			}
			?>
            </ul>
        </div>
        <div class="detail"><a onclick="show_gear();" href="javascript:;"></a></div>
        <div class="size">
        	<h3>SIZE</h3>
			<?php 
			$size = x6cms_attributebyname('SIZE');
			if($size){
				$sizeChild = x6cms_attributebyparent($size['id']);
			} else {
				$sizeChild = array();
			}
			foreach($sizeChild as $val) {
			?>
			<?php if($attr && in_array($val['id'],$attr)){ ?>
				<a href="javascript:;" class="current1"><?=$val['name']?></a>
			<?php }?>
			<?php
			}
			?>
        </div>
        <div class="price"><h3>PRICE:<?=str_replace('XXX',$detail['price'],$config['currency_sign'])?></h3></div>
    </div> 
</div>
<div class="c-box-bg"></div>
<div class="c-box">
	<div class="c-box-pic"><img src="<?=$detail['preview']?>" alt="" /></div>
    <div class="b-box-b"><img src="<?=$config['site_templateurl'];?>/images/c-close.png" alt="" class="J-close"/></div>
</div>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/gear.js"></script>
<?php $this->load->view($config['site_template'].'/foot');?>