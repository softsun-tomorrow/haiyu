<?php if($tpl=='list'):?>
	<?php $this->load->view('admin_head.php');?>
	<div id="main_head" class="main_head">
	<form name="formsearch" id="formsearch" action="<?=site_aurl($tablefunc)?>" method="post">
	<table class="menu">
	<tr><td>
	<a href="<?=site_aurl($tablefunc)?>" class="current"><?=lang('func_'.$tablefunc)?></a>
	<span><?=lang('filter')?></span><input type="text" name="keyword" value="<?=$search['keyword']?>" class="input-text">
	<select name="searchtype">
	<option value="parent" <?php if ($search['searchtype'] == 'parent'): ?>selected<?php endif; ?>><?=lang('parent')?></option>
	<option value="name" <?php if ($search['searchtype'] == 'name'): ?>selected<?php endif; ?>><?=lang('name')?></option>
	<option value="id" <?php if ($search['searchtype'] == 'id'): ?>selected<?php endif; ?>><?=lang('id')?></option>
	</select>
    <select name="category"><option value="0"><?=lang('attribute_category')?></option>
        <?php foreach($categoryarr as $category):?>
            <option value="<?=$category['id']?>"<?php if ($search['category']==$category['id']): ?>selected<?php endif; ?>><?=$category['name']?></option>
        <?php endforeach;?>
    </select>
	<input type="submit" class="btn" value="<?=lang('search')?>"></td></tr>
	</table>
	</form>
	<table cellSpacing=0 width="100%" class="content_list"><thead>
	<tr>
	<th width=30  align="left"><input type="checkbox" onclick="checkAll(this)"></th>
	<th width=50  align="left"><?=lang('order')?></th>
	<th width=40  align="left"><?=lang('id')?></th>
	<th width=150  align="left"><?=lang('name')?></th>
	<th width=50  align="left"><?=lang('parent')?></th>
    <th align="left"><?=lang('attribute_category')?></th>
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
	<link rel="stylesheet" href="<?=base_url('js/kindeditor/themes/default/default.css')?>" />
	<form name="formview" id="formview" action="" method="post">
	<input type="hidden" name="action" id="action" value="<?=site_aurl($tablefunc)?>">
	<input type="hidden" name="id" value="<?=isset($view['id'])?$view['id']:'';?>">
	<div id="main_view" class="main_view">
	<table cellSpacing=0 width="100%" class="content_view">
	<tr><td><?=lang('name')?></td>
		<td colspan="4"><input type="text" name="name" id="name" size="60" style="color:<?=isset($view['color'])?$view['color']:'';?>" class="validate input-text" validtip="required"  value="<?=isset($view['name'])?$view['name']:'';?>">
			<a  class="selectcolor colorpicker" onclick="colorpicker(this,'color','name')">&nbsp;</a>
			<input type="hidden" name="color" id="color"  value="<?=isset($view['color'])?$view['color']:'';?>">
			<input type="checkbox" id="isbold" name="isbold" <?=isset($view['isbold'])&&$view['isbold']==1?'checked':'';?> value="1"><?=lang('isbold')?>
		</td>
	</tr>
	<tr>
		<td><?=lang('parent')?></td>
		<td>
			<select name="parent" id="parent" >
				<option value="0"><?=lang('no_parent')?></option>
				<?php foreach($attributearr as $attribute):?>
				<option <?php if (isset($view['id']) && $attribute['id']==$view['id']): ?>disabled<?php endif; ?> value="<?=$attribute['id']?>"<?php if (isset($view['parent'])&&$view['parent']==$attribute['id']): ?>selected<?php endif; ?>><?=$attribute['name']?></option>
				<?php endforeach;?>
			</select>
		</td>
	</tr>
    <?php if(isset($view['parent']) && $view['parent'] == 0): ?>
    <tr>
        <td><?=lang('attribute_category')?></td>
        <td>
            <select name="category" onchange="setClass(this)">
                <?=$parentstr?>
            </select>
        </td>
    </tr>
    <?php endif; ?>
	<tr>
		<td><?=lang('thumb')?></td>
		<td class="upic">
		<img src="<?=isset($view['thumb'])&&$view['thumb']!=''?get_image_url($view['thumb']):get_image_url('data/nopic8080.gif')?>" onclick="uploadattributepic(this,'thumb')" width="150" id="imgthumb"><input type="hidden" name="thumb" id="thumb" value="<?=isset($view['thumb'])?$view['thumb']:'';?>"><br><input type="button" class="btn" onclick="unsetThumb('thumb','imgthumb')" value="<?=lang('unsetpic')?>">	
		</td>
	</tr>
	<tr>
		<td><?=lang('order')?></td>
		<td><input type="text" name="listorder" id="listorder" value="<?php if(isset($view['listorder'])){echo $view['listorder'];}else{echo '999';} ?>" class="input-text"></td>
		<td><?=lang('status')?></td>
		<td colspan="3"><?=lang('status1')?><input type="radio" name="status" value="1" <?php if(!isset($view['status'])||$view['status']==1){echo 'checked';} ?> /><?=lang('status0')?><input type="radio" name="status" value="0" <?php if(isset($view['status'])&&$view['status']==0){echo 'checked';} ?>  /></td>
	</tr>
	</table>
	</div>
	</form>

<?php endif;?>