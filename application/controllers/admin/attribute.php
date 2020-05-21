<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Attribute extends CI_Controller {
	var $tablefunc = 'attribute';
	var $fields = array('name','parent','thumb','listorder','status','category');
	var $funcarr = array('add','order','del');
	var $categoryarr,$recommendarr,$editlang,$langurl;
	function __construct(){
		parent::__construct();
		$this->Lang_model->loadLang('admin');
		$this->load->helper('array');
		$this->load->helper('date');
		$this->load->model('Purview_model');
		$this->load->model('Tags_model');
		$this->Data_model->setTable($this->tablefunc);
		$this->editlang=$this->Lang_model->getEditLang();
		$this->langurl = $this->Lang_model->loadLangUrl($this->editlang);
        $this->categoryarr = mult_to_single($this->Data_model->getData(array('isdisabled'=>0,'isdisplay'=>1,'lang'=>$this->editlang,'parent'=>0),'parent,listorder',0,0,'category'));
		$this->attributearr = mult_to_single($this->Data_model->getData(array('status'=>1,'lang'=>$this->editlang,'parent'=>0),'listorder',0,0,'attribute'));
	}
	
	public function index(){
		$this->Purview_model->checkPurview($this->tablefunc);
		$post = $this->input->post(NULL,TRUE);
		$getwhere = array();
		$search['keyword'] = trim($post['keyword']);
		$search['searchtype'] = trim($post['searchtype']);
        $search['category'] = trim($post['category']);
        if($search['category']>0){
            $getwhere['category']=$search['category'];
        }
		if($search['searchtype']=='id'){
			if($search['keyword']!=''){
				$getwhere[$search['searchtype']]=$search['keyword'];
			}
		}elseif($search['searchtype']=='parent'){
			if($search['keyword']!=''){
				$getwhere[$search['searchtype']]=$search['keyword'];
			}
		}else{
			if($search['keyword']!=''){
				$getwhere[$search['searchtype'].' like']='%'.$search['keyword'].'%';
			}
		}
		$getwhere['lang'] = $this->editlang;
		$pagearr=array(
			'currentpage'=>	isset($post['currentpage'])&&$post['currentpage']>0?$post['currentpage']:1,
			'totalnum'=>$this->Data_model->getDataNum($getwhere),
			'pagenum'=>20
		);
		$data = $this->Data_model->getData($getwhere,'listorder,id desc',$pagearr['pagenum'],($pagearr['currentpage']-1)*$pagearr['pagenum']);

		$res = array(
				'tpl'=>'list',
				'tablefunc'=>$this->tablefunc,
				'search'=>$search,
                'categoryarr'=>$this->categoryarr,
				'liststr'=>$this->_setlist($data,true),
				'pagestr'=>show_page($pagearr,$search),
				'funcstr'=>$this->Purview_model->getFunc($this->tablefunc,$this->funcarr),
		);
		$this->load->view($this->tablefunc,$res);
	}
	
	public function add(){
		$this->Purview_model->checkPurviewAjax($this->tablefunc,'add');
		$post = $this->input->post(NULL,TRUE);
		if($post['action']==site_aurl($this->tablefunc)){
			$data = elements($this->fields,$post);
			$data['lang'] = $this->editlang;
			
			//查询是否已经存在该名字
			$tmp =  $this->Data_model->getSingle(array('name'=>$data['name']),'attribute');

			//顶级不能重名
			if($tmp && ($data['parent'] == 0 || $data['parent'] == $tmp['id'])) {
				show_jsonmsg(array('status'=>207,'remsg'=>'Name repetition'));
			}
			//选择的parent不能为自己
			//...
			
			$id=$this->Data_model->addData($data);
			$this->Cache_model->deleteSome($this->tablefunc.'_'.$this->editlang);
			show_jsonmsg(array('status'=>200,'remsg'=>$this->_setlist($this->Data_model->getSingle(array('id'=>$id)),false)));
		}else{
            $parentstr = '';
            //$parent = $this->Data_model->getData(array('lang'=>$this->editlang,'parent ='=>0),'listorder',0,0,'category');
            $arr = array('listarr'=>$this->categoryarr,'tid'=>0,'did'=>0,'liststr'=>"<option value='\$id' \$selected \$disabled >\$spacer \$name</option>");
            $this->load->library('tree', $arr);
            $parentstr=$this->tree->getlist();
            $parentstr = '<option value="0">'.lang('category_top').'</option>'.$parentstr;

			$res = array(
				'tpl'=>'view',
				'tablefunc'=>$this->tablefunc,
				'attributearr'=>$this->attributearr,
                'parentstr'=>$parentstr,
			);
			show_jsonmsg(array('status'=>200,'remsg'=>$this->load->view($this->tablefunc,$res,true)));
		}
	}

	public function edit(){
		$this->Purview_model->checkPurviewAjax($this->tablefunc,'edit');
		$post = $this->input->post(NULL,TRUE);
		if($post['id']&&$post['action']==site_aurl($this->tablefunc)){
			$data = elements($this->fields,$post);

            //查询是否已经存在该名字
			$tmp =  $this->Data_model->getSingle(array('name'=>$data['name'],'id !='=>$post['id']),'attribute');

			//顶级不能重名
			if($tmp && ($data['parent'] == 0 || $data['parent'] == $tmp['id'])) {
				show_jsonmsg(array('status'=>207,'remsg'=>'Name repetition'));
			}
			
			//选择的parent不能为自己
			if($data['parent'] == $post['id']) {
				show_jsonmsg(array('status'=>207,'remsg'=>'The parent cannot be myself'));
			}
			
			//如果有子分类，或者该分类有商品。则不能移动其他分类下
			$childTmp = $this->Data_model->getSingle(array('parent'=>$post['id']),'attribute');
			//$productTmp = $this->Data_model->getSingle(array('parent'=>$post['id']),'product');
			if($childTmp && $data['parent'] !== $post['parent']) {
				show_jsonmsg(array('status'=>207,'remsg'=>"Can't move, has son"));
			}

			$this->Data_model->editData(array('id'=>$post['id']),$data);


            //如果是顶级属性，有子分类，则一并将子分类的属性类目进行更新
            //如果是子属性，则不允许修改属性类目
            if($childTmp){
                $this->Data_model->editData(array('parent'=>$post['id']), array('category'=>$data['category']));
            }
            $attribute = $this->Data_model->getSingle(array('id'=>$post['id']),'attribute');
			$cachefile = 'attribute/attribute_'.$this->editlang.'_'.$post['id'];
			if(file_exists('data/cache/'.$cachefile)){
				$this->Cache_model->delete($cachefile);
			}
			//$this->Cache_model->deleteSome($this->tablefunc.'_'.$this->editlang);
			show_jsonmsg(array('status'=>200,'id'=>$post['id'],'remsg'=>$this->_setlist($this->Data_model->getSingle(array('id'=>$post['id'])),false)));
		}else{
			$id = $this->uri->segment(4);
			$view = $this->Data_model->getSingle(array('id'=>$id));

            $parentstr = '';
            //$parent = $this->Data_model->getData(array('lang'=>$this->editlang,'parent ='=>0),'listorder',0,0,'category');
            $arr = array('listarr'=>$this->categoryarr,'tid'=>$view['category'],'did'=>0,'liststr'=>"<option value='\$id' \$selected \$disabled >\$spacer \$name</option>");
            $this->load->library('tree', $arr);
            $parentstr=$this->tree->getlist();
            $parentstr = '<option value="0">'.lang('category_top').'</option>'.$parentstr;


			if($id>0 && $view){
				$res = array(
						'tpl'=>'view',
						'tablefunc'=>$this->tablefunc,
						'view'=>$view,
						'attributearr'=>$this->attributearr,
                        'parentstr'=>$parentstr,
				);
				show_jsonmsg(array('status'=>200,'remsg'=>$this->load->view($this->tablefunc,$res,true)));
			}else{
				show_jsonmsg(array('status'=>203));
			}
		}
	}
	
	public function order(){
		$this->Purview_model->checkPurviewAjax($this->tablefunc,'order');
		$data = $this->Data_model->listorder($this->input->post('ids',true),$this->input->post('listorder',true),'listorder');
		$this->Cache_model->deleteSome($this->tablefunc.'_'.$this->editlang);
		$this->Cache_model->deleteSome('recommend_'.$this->editlang.'_'.$this->tablefunc);
		show_jsonmsg(array('status'=>200,'remsg'=>$this->_setlist($data,true)));
	}
	
	public function del(){
		$this->Purview_model->checkPurviewAjax($this->tablefunc,'del');
		$ids = $this->input->post('optid',true);
		if($ids){
			$this->Data_model->delData($ids);
			$this->Cache_model->deleteSome($this->tablefunc.'_'.$this->editlang);
			show_jsonmsg(array('status'=>200,'remsg'=>lang('delok'),'ids'=>$ids));
		}else{
			show_jsonmsg(array('status'=>203));
		}
	}
	
	function _setlist($data,$ismultiple=true){
		$newdata = $ismultiple?$data:($newdata[0]=$data);
		if($ismultiple){
			$newdata = $data;
		}else{
			$newdata = array(0=>$data);
		}
		$newstr = '';

        //$parent = $this->Data_model->getData(array('lang'=>$this->editlang,'parent ='=>0),'listorder',0,0,'category');
        foreach($this->categoryarr as $k_p=>$v_p){
            $category[$v_p['id']] = $v_p['name'];
        }
		foreach($newdata as $key=>$item){
			$item['func'] = '';
			if($this->Purview_model->checkPurviewFunc($this->tablefunc,'edit')){
				$item['func'] .= $this->Purview_model->getSingleFunc(site_aurl($this->tablefunc.'/edit/'.$item['id']),'edit');
			}
			if($this->Purview_model->checkPurviewFunc($this->tablefunc,'order')){
				$item['func'] .= $this->Purview_model->getSingleFunc(site_aurl($this->tablefunc.'/order'),'order');
			}
			if($this->Purview_model->checkPurviewFunc($this->tablefunc,'del')){
				$item['func'] .=  $this->Purview_model->getSingleFunc(site_aurl($this->tablefunc.'/del/'.$item['id']),'sdel',$item['id']);	
			}
			
			$newstr.='<tr id="tid_'.$item['id'].'">
			<td align=left width=30><input type=checkbox name="optid[]" value='.$item['id'].'></td>
			<td align=left width=50><input type="hidden" name="ids[]" value="'.$item['id'].'"><input type="text" name="listorder[]" class="input-order" size="3" value="'.$item['listorder'].'"></td>
			<td align=left width=40>'.$item['id'].'</td>
			<td align=left width=150>'.$item['name'].'</td>
			<td align=left width=50>'.$item['parent'].'</td>
			<td align=left>'.(isset($category[$item['category']]) ? $category[$item['category']] : '').'</td>
			<td align=left width=50 >'.lang('status'.$item['status']).'</td>
			<td align=left width=50>'.$item['func'].'</td></tr>';
		}
		return $newstr;
	}
}