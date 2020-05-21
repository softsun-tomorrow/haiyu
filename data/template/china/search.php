<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container">
    <div class="main-content ks-clear">

        <div class="gear-right ks-clear">
			<?php if($list) {?>
			<ul>
				<?php foreach($list as $item): ?>
				<li>
					<div class="gear-pic">
						<a href="<?=$item['url']?>">
							<img src="<?=$item['thumb']?>" alt="<?=$item['title']?>" title="<?=$item['title']?>" />
							<i class="i1"></i><i class="i2"></i>
						</a>
					</div>
					<p><?=$item['title']?></p>
				</li>
				<?php endforeach; ?>
			</ul>
			<div class="page"><?=isset($pagestr)?$pagestr:''?></div>
			<?php } else { ?>
				<div class="no-found">
				<h3>NO PRODUCTS FOUND</h3>
				<P>SORRY,NO RESULTS WERE FOUND FOR YOUR SEARCH</P>
				</div>
			<?php } ?>
			
		</div>
	</div>
</div>
<?php $this->load->view($config['site_template'].'/foot');?>