<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container">
    <div class="main-content bt1">
		<div class="news-top">
        <span><?php echo $detail['puttime'];?></span><a href="<?php echo site_url('category/'.$category['dir'].$langurl) ;?>" class="return"><?=lang('return')?></a>
        </div>
    	<h1><?=$detail['title']?></h1>
        <div class="new-text">
        	<?=$detail['content']?>
        </div>
    </div>
</div>
<?php $this->load->view($config['site_template'].'/foot');?>