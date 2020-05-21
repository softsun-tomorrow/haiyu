<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customise</title>
<meta name="keywords" content="Wetsuits, Dry suits, Lifejacket/PFDs, Jackets, Rash Vests, Thermals, Base layer, Tops, Bottoms, Gloves, Footwear/Shoes, Headgear/Hats" />
<meta name="description" content="Found in 2004, Located in Shanghai, LIUS is a performance sailing gear brand. Products range covers dinghys and keelboats personal wear. By using ultra-comfortable materials, keep your movements smooth and natural. In any conditions, LIUS performance gear will be there for the fastest sailors. " />
<link rel="stylesheet" type="text/css" href="<?=$config['site_templateurl'];?>/css/temp/temp.css"  /> 
</head>
<body>
	<div class="content">
		<header class="bbs_header"> 
			<div class="top">
		
			</div>
		</header>
		
		<div class="works">
		<div>
		<a href="http://www.liusgear.com/" class="back-home"></a>
		</div>
		<ul class="news">
			<?php   $tmpData = x6cms_thiscategory($category);?>
			<?php foreach ($tmpData as $key => $value) {?>
			<li>
				<div class="line_left">
					<p class="line_title"><?=$value['title']?></p> 
					<p class="line_img">
						<?=$value['content']?>
					</p>
				</div>
				<div class="line_right"> 
					<p class="line_title"></p>
					<p class="line_img">
						<img art="<?=$value['title']?>" title="<?=$value['title']?>" src="<?=$value['spic']?>"/>
					</p>
					<p class="download_url">
						<a alt="<?=$value['pdf']?>" href="#d-bottom">For more details from PDF </a>
					</p>
					
				</div>
			</li>
			<?php }?>
		
			<li style="clear:both;padding-top:20px;height:70px;">
				
				<a href="http://www.liusgear.com/Web-customise.pdf" target="_blank" class="btn_down"></a>
				<a href="http://www.liusgear.com/Web-customise.pdf" target="_blank" class="btn_pdf"></a>
				<a href="#" id="d-bottom" target="_blank"></a>
			</li>
		</ul>
		
		</div>
		<footer class="bbs_footer"> </footer>
		
	</div>
</body>
</html>