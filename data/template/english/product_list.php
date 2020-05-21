<?php $this->load->view($config['site_template'].'/head');?>
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/new.css"  /> 
<div class="container">
    <div class="main-content ks-clear">
	<?php if('gear' == $category['dir']):?>
	<form id="formID" action='<?php echo site_url('category/get_product');?>' method="post">
  		<div class="left-nav gear-left">
        	<ul id="left_menu" >
            	<li class="border-b"><?=$category['top']['name']?></li>
				<!-- COMMON -->
				<?php 
				$genderStringTmp = 'g';
				$categoryStringTmp = 'c';
				
				$genderArr = x6cms_attributebyname('GENDER');
				$categoryAttr = x6cms_attributebyname('CATEGORY');
				
				$genderArrChild = array();
				$categoryAttrChild = array();
				
				$genderArrayTmp = $genderArray;
				$categoryArrayTmp = $categoryArray;
				?>
				<!--GENDER-->
				<?php
				if($genderArr){
					$genderArrChild = x6cms_attributebyparent($genderArr['id']);
				}
				$i =0;
				?>
				<?php foreach($genderArrChild as $val):?>
					<?php $i++;	?>
					<li class="<?php if($i==count($genderArrChild)){?> border-b <?php }?>" >
					<?php			
						if(in_array($val['id'],$genderArray)){
							$g_pos = array_search($val['id'],$genderArray);
							unset($genderArrayTmp[$g_pos]);
							$genderArrayTmp = array_values($genderArrayTmp);					
						}else{			
							array_push($genderArrayTmp, $val['id']);	
						}

						if(!empty($genderArrayTmp)) {
							$genderStringTmp = 'g_'. implode('_',$genderArrayTmp);
						} 
						//$g_url = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.$genderStringTmp.'/'.$categoryString.'/'.$langurl);

						//2014-1-19
						$g_url = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.'g_'.$val['id'].'/'.$categoryString);
						if(in_array($val['id'],$where))
						{
							$g_url = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.'g'.'/'.$categoryString);
						}
					?>
						<a data-id="<?=$val['id']?>" lev="1" href="<?=$g_url.$langurl?>" class="<?php if(in_array($val['id'],$where)){?> current <?php }?>"><?php echo $val['name'];?></a>
					<input type="hidden" name="<?php if(in_array($val['id'],$where)){?> gtype[] <?php }?>" value="<?=$val['id'] ?>" />
					</li>
				<?php //unset($g_pos); unset($genderStringTmp); unset($g_url); unset($genderArrayTmp);?>
				<?php endforeach; ?>
				<!--CATEGORY-->
				<?php
				if($categoryAttr){
					$categoryAttrChild = x6cms_attributebyparent($categoryAttr['id']);
				}
				?>
				<?php foreach($categoryAttrChild as $val):?>
                <li>
				<?php 
					if(in_array($val['id'],$categoryArray)){
						$c_pos = array_search($val['id'],$categoryArray);
						unset($categoryArrayTmp[$c_pos]);
						$categoryArrayTmp = array_values($categoryArrayTmp);	
					}else{
						array_push($categoryArrayTmp, $val['id']);
					}
		
					if(!empty($categoryArrayTmp)) {
						$categoryStringTmp = 'c_'. implode('_',$categoryArrayTmp);
					}
					//$c_url = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.$genderString.'/'.$categoryStringTmp.'/'.$langurl);

					$c_url2 = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.$genderString.'/'.'c_'.$val['id']);
					
					if(in_array($val['id'],$where))
					{
						$c_url2 = site_url('category/'.$category['dir'].'/'.$currentpage.'/'.$genderString.'/c');
					}
				?>				
					<a data-id="<?=$val['id']?>" lev="2" href="<?=$c_url2.$langurl?>" class="<?php if(in_array($val['id'],$where)){?> current <?php }?>"><?php echo $val['name'];?></a>
				
				<input type="hidden" name="<?php if(in_array($val['id'],$where)){?> gtype[] <?php }?>" value="<?=$val['id'] ?>" />
				</li>
				<?php //unset($c_pos); unset($categoryStringTmp); unset($c_url); unset($categoryArrayTmp);?>
				<?php endforeach; ?>
            </ul>
        </div>
		
		
		
	</form>	
	<?php endif; ?>
        <div class="gear-right ks-clear">
			<?php if($list) {?>
			<div  id="warp" class="warp" >
				<ul class="full" id="row1">
					<?php foreach($list as $item): ?>
					<li class="water">
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
				<!--<div class="page"><?//=isset($pagestr)?$pagestr:''?></div>-->
			</div>
			<?php } else { ?>
			    <div class="no-found">
            	<h3>NO PRODUCTS FOUND</h3>
                <P>SORRY,NO RESULTS WERE FOUND FOR YOUR SEARCH</P>
				</div>
			<?php } ?>
        </div>
    


    </div>
</div>
<script type="text/javascript">

	$(function(){
	/*
		$("#left_menu li a").click(function(){
			if($(this).hasClass("current"))
			{
				$(this).removeClass("current");
				$(this).next().attr("name","");	
			}else
			{
				$(this).addClass("current");
				$(this).next().attr("name","gtype[]");	
				
			}
			$("#formID").submit();
		})
		*/
		
	})
</script>



<script type="text/javascript">
var closeWater = 0;
var currentpage = <?=$currentpage?>;
var waterLimit = currentpage;
var url = "<?=site_url('ajaxproduct/index/'.$category['dir'].'/'.$currentpage.'/'.$genderString.'/'.$categoryString)?>";
var langurl = "<?=$langurl?>";
var ajaxTo = url + '/' + waterLimit + langurl;
</script>
<script type="text/javascript" src="<?=$config['site_templateurl'];?>/js/waterfull_product.js" > </script>
<?php $this->load->view($config['site_template'].'/foot');?>