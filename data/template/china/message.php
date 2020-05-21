<?php $this->load->view($config['site_template'].'/head');?>
<?php if (count($actionurl)>0): ?>
<script language="javascript" type="text/javascript">
var second = 3;
setInterval("redirect()", 1000);
function redirect(){
	if (second < 0){
		location.href = '<?=$actionurl[0]['url']?>';
	}else{
		$("#totalSecond").text(second--);
	}
}
</script>
<?php endif; ?>
<div class="container">
    <div class="main-content ks-clear">
		<div class="message" style=" margin-top: 100px; text-align: center; line-height: 30px; ">
		<div class="title"><?=$message?></div>
		<?php if (count($actionurl)>0): ?>
		<div class="content">
		<?=lang('message1')?><span id="totalSecond" style="color:red;">3</span><?=lang('message2')?>
		<ul>
		<?php foreach ($actionurl as $val): ?>
		<li><a href="<?=$val['url']?>"><?=$val['name']?></a></li>
		<?php endforeach; ?>
		</ul>
		<?php endif; ?>
		</div>
		</div>
	</div>
</div>
<?php $this->load->view($config['site_template'].'/foot');?>