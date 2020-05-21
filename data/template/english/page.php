<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<?php //if('TECH' == $category['top']['name'] ){ ?>
<?php if('TECH CO-CP' == $category['name'] ){ ?>
<style>
.hex{
		left: 50px;
		width: 178px;
		height: 178px;
		margin-top: 35px;
		-webkit-transform: rotate(45deg);
		-moz-transform: rotate(45deg);
		-ms-transform: rotate(45deg);
		-o-transform: rotate(45deg);
		transform: rotate(45deg);
	}
	
.tech-r-tb .tech-r-01 {
    position: absolute;
}
</style>
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
		<div class="tech-right">
			<div class="subitem-list arrow-up">
				<ul>
				   <li class="firstfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic01.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-1.gif" /><span></span></a>
				   </li>
				   <li class="secondfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic02.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-2.gif" /><span></span></a>
				   </li>
				   <li class="thirdfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic03.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-3.gif" /><span></span></a>
				   </li>
				 </ul>
			</div>            

			<div class="subitem-list arrow-down">
				<ul>
				   <li class="firstfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic04.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-4.gif" /><span></span></a>
				   </li>
				   <li class="secondfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic05.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-5.gif" /><span></span></a>
				   </li>
				   <li class="thirdfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic06.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-6.gif" /><span></span></a>
				   </li>
				 </ul>
			</div>

			<div class="subitem-list arrow-up">
				<ul>
				   <li class="firstfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic07.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-7.gif" /><span></span></a>
				   </li>
				   <li class="secondfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic08.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-8.gif" /><span></span></a>
				   </li>
				   <li class="thirdfir">
					   <a href="javascript:;" title="" onclick="show_gear();$('#techImg').attr('src','<?=$config['site_templateurl'];?>/pic/c-box-pic09.jpg');"><img src="<?=$config['site_templateurl'];?>/pic/tech-logo-9.gif" /><span></span></a>
				   </li>
				 </ul>
			</div>
			<img src="<?=$config['site_templateurl'];?>/pic/tech03.jpg" alt="" />
		</div>
    </div>
</div>
<div class="c-box-bg"></div>
<div class="c-box">
	<div class="c-box-pic"><img id="techImg" src="" alt="" /></div>
    <div class="b-box-b"><img src="<?=$config['site_templateurl'];?>/images/c-close.png" alt="" class="J-close"/></div>
</div>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/gear.js"></script>

<?php } else { ?>

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
        <div class="<?php if('OUR STORY' == $category['top']['name']) {
							echo 'story-artice'; 
						} else if('SERVICES' == $category['top']['name']) {
							echo 'services'; 
						} 
							
					?> ">
   	    	<?=$category['content']?>
        </div>
    </div>
</div>
<script language="javascript" type="text/javascript" src="<?=$config['site_templateurl'];?>/js/service.js"></script>
<?php } ?>
<?php $this->load->view($config['site_template'].'/foot');?>