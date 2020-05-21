<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/index.css" />
<script src="<?=$config['site_templateurl'];?>/js/slides.min.jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#slides').slides({
		preload: true,
		preloadImage: 'img/loading.gif',
		play: 3500,
		pause: 2500,
		next: 'next',
		prev: 'prev',
		hoverPause: true,
		effect: 'slide, fade'
	});

	$("#slides .prevNext").css("opacity", 0.0).hover(function() {
		$(this).stop(true, false).animate({ "opacity": "1" }, 300);
	}, function() {
		$(this).stop(true, false).animate({ "opacity": "0" }, 300);
	});
});
</script>
<div class="container">
	<div class="silder"  id="slides">
		<div class="slides_container" >
		<?php $tmpTypeData = x6cms_slideType(1);?>
		<?php $typeTypeId = ($tmpTypeData && isset($tmpTypeData['id'])) ? $tmpTypeData['id'] : 2;?>
		<?php $tmpData = x6cms_slide($typeTypeId);?>
		<?php foreach($tmpData as $item):?>
		<div style=" width:1003px;">
		<a href="<?=$item['url']?>" target="_blank"><img src="<?=$item['thumb']?>" alt="<?=$item['title']?>" width="1003" height="500" /></a>
		</div>
		<?php endforeach;?>
		<?php unset($tmpData,$item);?>
		</div>
		<div  class="prevNext prev"></div>
		<div class="prevNext next"></div>
	</div>
	<div class="index-content ks-clear">
		<ul>
			<?php $tmpLink = x6cms_link(5);?>
			<?php foreach($tmpLink as $item):?>
				<li class="<?=$item['title']?>"><a href="<?=$item['url']?>"><img src="<?=(isset($config['base_url'])?$config['base_url']:'').$item['thumb'];?>" alt=""/><i class="i1 pngfix"></i><i class="i2 pngfix"></i></a></li>
			<?php endforeach;?>
		</ul>
	</div>
</div>
<?php $this->load->view($config['site_template'].'/foot');?>