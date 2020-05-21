<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container">
    <div class="main-content ks-clear">
  		<div class="left-nav">
			<ul>
            	<li><?=$category['top']['name']?></li>
				
                <?php $tmpData = x6cms_thiscategory($category);?>
				<?php foreach ($tmpData as $item): ?>
				<?php if($item['name']){?>
				<li class="level<?=$item['level']?>
				<?php if($item['id']==$category['id']):?> active<?php endif;?>">
					<a <?php if($item['id']==$category['id']):?> class="current"<?php endif;?> href="<?=$item['url']?>">
						<?=$item['name']?>
					</a>
				</li>
				<?php }?>
				<?php endforeach; ?>
            </ul>
        </div>
        <div class="news-list">
			<div id="warp" class="warp">
				<div class="full" id="row1">
                    <?php if($list): ?>
					<?php foreach ($list as $item): ?>
					<div class="water">
                        <div class="pic"><img src="<?=$item['thumb']?>" alt="" /></div>
                        <div class="text">
                            <div class="text-content">
                                <strong><a href="<?=$item['url']?>"><?=$item['title']?></a></strong>
                                <p class="date"><?php echo $item['puttime'];?></p>
                                <p><?=$item['description']?></p>
                            </div>
                            <div class="read-more"><a href="<?=$item['url']?>"><?=lang('read_more')?></a></div>
                        </div>
                    </div>
					<?php endforeach; ?>
                    <?php else: ?>
                    <div class="water">
                        <div class="text">
                            <?=lang('nodata');?>
                        </div>
                    </div>
                    <?php endif;?>
				</div>
			</div>
			<!--
        	<ul id="water">
				<?php //foreach ($list as $item): ?>
				<li>
					<div class="pic"><img src="<?//=$item['thumb']?>" alt="" /></div>
					<div class="text">
                    	<div class="text-content">
                            <strong><?//=$item['title']?></strong>
                            <p class="date"><?php //echo $item['puttime'];?></p>
                            <p><?//=$item['description']?></p>
						</div>
                        <div class="read-more"><a href="<?//=$item['url']?>"><?//=lang('read_more')?></a></div>
                    </div>
				</li>
				<?php //endforeach; ?>
            </ul>
			-->
        </div>
    </div>
</div>
<script type="text/javascript">
var closeWater = 0;
var currentpage = <?=$currentpage?>;
var waterLimit = currentpage;
var url = "<?=site_url('ajax/'.$category['dir'])?>";
var langurl = "<?=$langurl?>";
var read_more = "<?=lang('read_more')?>";
var ajaxTo = url + '/' + waterLimit + langurl;
</script>
<script type="text/javascript" src="<?=$config['site_templateurl'];?>/js/waterfull.js" > </script>
<?php $this->load->view($config['site_template'].'/foot');?>