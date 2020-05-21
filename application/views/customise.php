<?php if($tpl=='list'):?>
	<?php $this->load->view('admin_head.php');?>
	<div id="main_head" class="main_head">
	<form name="formsearch" id="formsearch" action="<?=site_aurl($tablefunc)?>" method="post">
	<table class="menu">
	<tr><td>
	<a href="<?=site_aurl($tablefunc)?>" class="current"><?=lang('func_'.$tablefunc)?></a>
	<span><?=lang('filter')?></span><input type="text" name="keyword" value="<?=$search['keyword']?>" class="input-text">
	<select name="searchtype">
	<option value="title" <?php if ($search['searchtype'] == 'title'): ?>selected<?php endif; ?>><?=lang('title')?></option>
	<option value="id" <?php if ($search['searchtype'] == 'id'): ?>selected<?php endif; ?>><?=lang('id')?></option>
	</select>
	<input type="submit" class="btn" value="<?=lang('search')?>">
	</td></tr>
	</table>
	</form>
	<table cellSpacing=0 width="100%" class="content_list"><thead>
	<tr>
	<th width=30  align="left"><input type="checkbox" onclick="checkAll(this)"></th>
	<th width=50  align="left"><?=lang('order')?></th>
	<th width=40  align="left"><?=lang('id')?></th>
	<th align=left><?=lang('title')?></th>
	<th width=50 align="left"><?=lang('status')?></th>
	<th width=50  align="left"><?=lang('operate')?></th>
	</tr>
	</thead>
	</table>
	</div>
	<form name="formlist" id="formlist" action="<?=site_aurl($tablefunc)?>" method="post">
	<input type="hidden" name="action" id="action" value="<?=site_aurl($tablefunc)?>">
	<div id="main" class="main">
	<table cellSpacing=0 width="100%" class="content_list">
	<tbody id="content_list"><?php if (isset($liststr)): ?><?=$liststr?><?php endif; ?></tbody>
	</table>
	</div>
	</form>
	<div class="main_foot">
	<table><tr><td>
	<div class="func"><?php if (isset($funcstr)): ?><?=$funcstr?><?php endif; ?></div>
	</td><td align="right">
	<div class="page"><?php if (isset($pagestr)): ?><?=$pagestr?><?php endif; ?></div>
	</td></tr></table>
	</div>
	<?php $this->load->view('admin_foot.php');?>
<?php elseif($tpl=='view'):?>
	<form name="formview" id="formview" action="" method="post">
	<input type="hidden" name="action" id="action" value="<?=site_aurl($tablefunc)?>">
	<input type="hidden" name="id" value="<?=isset($view['id'])?$view['id']:'';?>">
	<div id="main_view" class="main_view">
	<table cellSpacing=0 width="100%" class="content_view">
	<tr>
		<td><?=lang('category_pselect')?></td>
		<td colspan="5">
		<select name="category" id="category" class="validate" validtip="required">
		<option selected="selected" value="82">Customise</option>
		
		</select>
		</td>
	</tr>
	<tr>
		<td><?=lang('title')?></td>
		<td colspan="5"><input type="text" name="title" id="title" size="60" style="color:<?=isset($view['color'])?$view['color']:'';?>" class="validate input-text" validtip="required"  value="<?=isset($view['title'])?$view['title']:'';?>">
		</td>
	</tr>
	<tr>
		<td>PDF</td>
		<td colspan="5"><input type="text" name="pdf" id="pdf" class="input-text" size="60"  value="<?=isset($view['pdf'])?$view['pdf']:'';?>"></td>
	</tr>
	<tr>
		<td>PIC</td>
		<td colspan="5">			
		<img src="<?=isset($view['spic'])&&$view['spic']!=''?get_image_url($view['spic']):get_image_url('data/nopic8080.gif')?>" onclick="uploadpic(this,'spic')" width="150" id="imgspic"><input type="hidden" name="spic" id="spic" value="<?=isset($view['spic'])?$view['spic']:'';?>"><br><input type="button" class="btn" onclick="unsetThumb('spic','imgspic')" value="<?=lang('unsetpic')?>">	
		</td>
	</tr>
	<tr>
		<td><?=lang('content')?></td>
		<td colspan="5"><textarea style="width:668px;height:300px;" name="content" id="content" class="editor"><?=isset($view['content'])?htmlspecialchars($view['content']):'';?></textarea></td>
	</tr>
	
	<tr>
		<td><?=lang('order')?></td>
		<td><input type="text" name="order_id" id="order_id" value="<?php if(isset($view['order_id'])){echo $view['order_id'];}else{echo '100';} ?>" class="input-text"></td>
		<td><?=lang('status')?></td>
		<td colspan="3"><?=lang('status1')?><input type="radio" name="disable" value="1" <?php if(!isset($view['disable'])||$view['disable']==1){echo 'checked';} ?> /><?=lang('status0')?><input type="radio" name="disable" value="0" <?php if(isset($view['disable'])&&$view['disable']==0){echo 'checked';} ?>  />
		</td>
	</tr>
	</table>
	</div>
	</form>
<?php endif;?>