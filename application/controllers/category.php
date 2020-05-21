<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Category extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->Cache_model->setLang($this->input->get());
		$this->Lang_model->loadLang('front',$this->Cache_model->currentLang);
		$this->load->helper('tags');
		//if($this->uri->segment(4)||($this->uri->segment(3)&&!is_numeric($this->uri->segment(3)))){
		if(($this->uri->segment(3)&&!is_numeric($this->uri->segment(3)))){
			show_404();
		}
	}
	
	public function index(){

		$dir = $this->uri->segment(2);
		$thiscategory = $this->Cache_model->loadCategoryByDir($dir);
		if(empty($thiscategory['model'])){show_404();}
		if($thiscategory['model']=='page'||$thiscategory['model']=='guestbook'){
			$this->tpldetail($thiscategory);
		}else if($thiscategory['model']=='customise'){
			//2014-12-1
			$config = $this->Cache_model->loadConfig();			
			$this->load->setPath();
			$tpl = $thiscategory['model'];
			$res = array(
				'config'=>$config,
				'langurl'=>$this->Cache_model->langurl,
				'category'=>$thiscategory
			);
			$this->load->view($config['site_template'].'/'.$tpl,$res);
		}else{
			/*
			if($dir=='gear2')
			{
				$thiscategory = $this->Cache_model->loadCategoryByDir('gear');
				
				$this->tpllist2($thiscategory);
			}else if($dir=='gear')
			{
				$this->tpllist($thiscategory);
			}else
			{

				//$this->get_product();
			}
			*/
			
			$this->tpllist($thiscategory);//gear  model=product;
		}
	}
	
	private function get_product()
	{
		//一级分类
		//$gtype=$_POST['gtype'];

		$thiscategory = $this->Cache_model->loadCategoryByDir('gear');
		$tmpCategory = $this->Data_model->getData(array('model'=>$thiscategory['model'],'lang'=>$this->Cache_model->currentLang,'lft >='=>$thiscategory['lft'],'lft <'=>$thiscategory['rht']),'id asc',0,0,'category');
        if(empty($tmpCategory)){show_404();}
        $categoryidarr = mult_to_idarr($tmpCategory);
		$datawhere = array(
				'category'=>$categoryidarr,
				'puttime <'=>time(),
				'status'=>1,
				'lang'=>$this->Cache_model->currentLang
		);
		
		$where = $genderArray = $categoryArray = array();
		$genderString = 'g';
		$categoryString = 'c';
		
		// if('product' == $thiscategory['model']){
		// 	if($this->uri->segment(4) && 'g' != $this->uri->segment(4)) {
		// 		$genderString = $this->uri->segment(4);
		// 		$genderArray = explode('_', str_replace('g_', '', $genderString));
		// 		foreach($genderArray as $val) {
		// 			$where[] = $val;
		// 		}
		// 	}
		// 	if($this->uri->segment(4) && 'c' != $this->uri->segment(5)) {
		// 		$categoryString = $this->uri->segment(5);
		// 		$categoryArray = explode('_', str_replace('c_', '', $categoryString));
		// 		foreach($categoryArray as $val) {
		// 			$where[] = $val;
		// 		}
		// 	}
			
		// 	if($where) {
		// 		$where = array_unique($where);
		// 		$datawhere['findinset'] = array('attrs'=>$where);
		// 	}
		// }

		$where=$_POST['gtype'];
		$where = array_unique($where);
		//$sql_where=implode(',', $where)
		//print_r($where);
		$sql_where=$this->arr2str($where);
		$datawhere['findinset'] = array('attrs'=>$where);


		
		$currentpage = intval($this->uri->segment(3));
		$currentpage = $currentpage > 0 ?$currentpage:1;
		$totalnum = $this->Data_model->getDataNum($datawhere,$thiscategory['model']);

		$this->load->library('pagination');
		$pageconfig['base_url'] = site_url('category/'.$thiscategory['dir']);
		$pageconfig['total_rows'] =$totalnum;
		$pageconfig['per_page'] = $thiscategory['pagesize']>0?$thiscategory['pagesize']:50;
		$pageconfig['uri_segment'] = 3;
		$pageconfig['langurl'] = $this->Cache_model->langurl;
		$this->pagination->initialize($pageconfig);

		
		$list = $this->Data_model->getData($datawhere,'listorder,puttime desc',$pageconfig['per_page'],($currentpage-1)*$pageconfig['per_page'],$thiscategory['model']);

		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $thiscategory['title']==''?$thiscategory['name']:$thiscategory['title'];
		$config['seo_keywords'] = $thiscategory['keywords']==''?$thiscategory['name']:$thiscategory['keywords'];
		$config['seo_description'] = $thiscategory['description']==''?'':$thiscategory['description'];
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'where' => $where,
				'currentpage'=>$currentpage,
				'genderString'=>$genderString,
				'genderArray'=>$genderArray,
				'categoryString'=>$categoryString,
				'categoryArray'=>$categoryArray,
				'langurl'=>$this->Cache_model->langurl,
				'list'=>$this->Cache_model->handleModelData($list),
				'pagestr'=>$this->pagination->create_links(),
				'category'=>$thiscategory
		);

		//print_r($where);

		//$tpl = $thiscategory['tpllist']==''?$thiscategory['model'].'_list':$thiscategory['tpllist'];




		$tpl='product_list2';
		$this->load->view($config['site_template'].'/'.$tpl,$res);
	}
	
	private function tpllist2($thiscategory){
		$tmpCategory = $this->Data_model->getData(array('model'=>$thiscategory['model'],'lang'=>$this->Cache_model->currentLang,'lft >='=>$thiscategory['lft'],'lft <'=>$thiscategory['rht']),'id asc',0,0,'category');
        if(empty($tmpCategory)){show_404();}
		$categoryidarr = mult_to_idarr($tmpCategory);
		$datawhere = array(
				'category'=>$categoryidarr,
				'puttime <'=>time(),
				'status'=>1,
				'lang'=>$this->Cache_model->currentLang
		);
		
		$where = $genderArray = $categoryArray = array();
		$genderString = 'g';
		$categoryString = 'c';
		
		if('product' == $thiscategory['model']){
			if($this->uri->segment(4) && 'g' != $this->uri->segment(4)) {
				$genderString = $this->uri->segment(4);
				$genderArray = explode('_', str_replace('g_', '', $genderString));
				foreach($genderArray as $val) {
					$where[] = $val;
				}
			}
			if($this->uri->segment(4) && 'c' != $this->uri->segment(5)) {
				$categoryString = $this->uri->segment(5);
				$categoryArray = explode('_', str_replace('c_', '', $categoryString));
				foreach($categoryArray as $val) {
					$where[] = $val;
				}
			}
			
			if($where) {
				$where = array_unique($where);
				$datawhere['findinset'] = array('attrs'=>$where);
			}
		}
		
		$currentpage = intval($this->uri->segment(3));
		$currentpage = $currentpage > 0 ?$currentpage:1;
		$totalnum = $this->Data_model->getDataNum($datawhere,$thiscategory['model']);

		$this->load->library('pagination');
		$pageconfig['base_url'] = site_url('category/'.$thiscategory['dir']);
		$pageconfig['total_rows'] =$totalnum;
		$pageconfig['per_page'] = $thiscategory['pagesize']>0?$thiscategory['pagesize']:16;
		$pageconfig['uri_segment'] = 3;
		$pageconfig['langurl'] = $this->Cache_model->langurl;
		$this->pagination->initialize($pageconfig);
		$list = $this->Data_model->getData($datawhere,'listorder,puttime desc',$pageconfig['per_page'],($currentpage-1)*$pageconfig['per_page'],$thiscategory['model']);

		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $thiscategory['title']==''?$thiscategory['name']:$thiscategory['title'];
		$config['seo_keywords'] = $thiscategory['keywords']==''?$thiscategory['name']:$thiscategory['keywords'];
		$config['seo_description'] = $thiscategory['description']==''?'':$thiscategory['description'];
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'where' => $where,
				'currentpage'=>$currentpage,
				'genderString'=>$genderString,
				'genderArray'=>$genderArray,
				'categoryString'=>$categoryString,
				'categoryArray'=>$categoryArray,
				'langurl'=>$this->Cache_model->langurl,
				'list'=>$this->Cache_model->handleModelData($list),
				'pagestr'=>$this->pagination->create_links(),
				'category'=>$thiscategory
		);
		//$tmpData = x6cms_thiscategory($thiscategory,'id desc');
		//print_r($tmpData);exit;
		$tpl = $thiscategory['tpllist']==''?$thiscategory['model'].'_list':$thiscategory['tpllist'];
		//print_r($_POST['gtype']);
		$tpl='product_list2';
		$this->load->view($config['site_template'].'/'.$tpl,$res);
	}


	
	private function tpllist($thiscategory){
		
		$tmpCategory = $this->Data_model->getData(array('isdisplay'=>1,'model'=>$thiscategory['model'],'lang'=>$this->Cache_model->currentLang,'lft >='=>$thiscategory['lft'],'lft <'=>$thiscategory['rht']),'id asc',0,0,'category');
        if(empty($tmpCategory)){show_404();}
		$categoryidarr = mult_to_idarr($tmpCategory);
		$datawhere = array(
				'category'=>$categoryidarr,
				'puttime <'=>time(),
				'status'=>1,
				'lang'=>$this->Cache_model->currentLang
		);
		
		$where = $genderArray = $categoryArray = array();
		$genderString = 'g';
		$categoryString = 'c';
		
		if('product' == $thiscategory['model']){
            if('gear' == $thiscategory['dir']) {
                if ($this->uri->segment(4) && 'g' != $this->uri->segment(4)) {
                    $genderString = $this->uri->segment(4);
                    $genderArray = explode('_', str_replace('g_', '', $genderString));
                    foreach ($genderArray as $val) {
                        $where[] = $val;
                    }
                }
                if ($this->uri->segment(5) && 'c' != $this->uri->segment(5)) {
                    $categoryString = $this->uri->segment(5);
                    $categoryArray = explode('_', str_replace('c_', '', $categoryString));
                    foreach ($categoryArray as $val) {
                        $where[] = $val;
                    }
                }
            }
			
			if($where) {
				$where = array_unique($where);
				$datawhere['findinset'] = array('attrs'=>$where);
			}
		}
		
		$currentpage = intval($this->uri->segment(3));
		$currentpage = $currentpage > 0 ?$currentpage:1;
		$totalnum = $this->Data_model->getDataNum($datawhere,$thiscategory['model']);

		$this->load->library('pagination');
		$pageconfig['base_url'] = site_url('category/'.$thiscategory['dir']);
		$pageconfig['total_rows'] =$totalnum;
		$pageconfig['per_page'] = $thiscategory['pagesize']>0?$thiscategory['pagesize']:16;
		$pageconfig['uri_segment'] = 3;
		$pageconfig['langurl'] = $this->Cache_model->langurl;
		$this->pagination->initialize($pageconfig);
		$list = $this->Data_model->getData($datawhere,'listorder,puttime desc',$pageconfig['per_page'],($currentpage-1)*$pageconfig['per_page'],$thiscategory['model']);

		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $thiscategory['title']==''?$thiscategory['name']:$thiscategory['title'];
		$config['seo_keywords'] = $thiscategory['keywords']==''?$thiscategory['name']:$thiscategory['keywords'];
		$config['seo_description'] = $thiscategory['description']==''?'':$thiscategory['description'];
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'where' => $where,
				'currentpage'=>$currentpage,
				'langurl'=>$this->Cache_model->langurl,
				'list'=>$this->Cache_model->handleModelData($list),
				'pagestr'=>$this->pagination->create_links(),
				'category'=>$thiscategory,
                'genderString'=>$genderString,
                'genderArray'=>$genderArray,
                'categoryString'=>$categoryString,
                'categoryArray'=>$categoryArray,
		);
		$tpl = $thiscategory['tpllist']==''?$thiscategory['model'].'_list':$thiscategory['tpllist'];
		
		//print_r($config['site_template'].'/'.$tpl);exit;
		$this->load->view($config['site_template'].'/'.$tpl,$res);
	}
	
	private function tpldetail($thiscategory){
        if(empty($thiscategory)){show_404();}
		if($this->uri->segment(3)){show_404();}
		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $thiscategory['title']==''?$thiscategory['name']:$thiscategory['title'];
		$config['seo_keywords'] = $thiscategory['keywords']==''?$thiscategory['name']:$thiscategory['keywords'];
		$config['seo_description'] = $thiscategory['description']==''?'':$thiscategory['description'];
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'langurl'=>$this->Cache_model->langurl,
				'category'=>$thiscategory
		);
		$tpl = $thiscategory['tpldetail']==''?$thiscategory['model']:$thiscategory['tpldetail'];
		$this->load->view($config['site_template'].'/'.$tpl,$res);
	}
	
	public function ajaxTo(){
		$dir = $this->uri->segment(2);
		$thiscategory = $this->Cache_model->loadCategoryByDir($dir);
		if(!$thiscategory){show_404();}

		$tmpCategory = $this->Data_model->getData(array('model'=>$thiscategory['model'],'lang'=>$this->Cache_model->currentLang,'lft >='=>$thiscategory['lft'],'lft <'=>$thiscategory['rht']),'',0,0,'category');
		$categoryidarr = mult_to_idarr($tmpCategory);
		$datawhere = array(
				'category'=>$categoryidarr,
				'puttime <'=>time(),
				'status'=>1,
				'lang'=>$this->Cache_model->currentLang
		);
		
		$where = $genderArray = $categoryArray = array();
		$genderString = 'g';
		$categoryString = 'c';

		$currentpage = intval($this->uri->segment(3));
		$currentpage = $currentpage > 0 ?$currentpage:1;
		$totalnum = $this->Data_model->getDataNum($datawhere,$thiscategory['model']);

		$this->load->library('pagination');
		$pageconfig['base_url'] = site_url('category/'.$thiscategory['dir']);
		$pageconfig['total_rows'] =$totalnum;
		$pageconfig['per_page'] = $thiscategory['pagesize']>0?$thiscategory['pagesize']:16;
		$pageconfig['uri_segment'] = 3;
		$pageconfig['langurl'] = $this->Cache_model->langurl;
		$this->pagination->initialize($pageconfig);
		$list = $this->Data_model->getData($datawhere,'listorder,puttime desc',$pageconfig['per_page'],($currentpage-1)*$pageconfig['per_page'],$thiscategory['model']);

		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $thiscategory['title']==''?$thiscategory['name']:$thiscategory['title'];
		$config['seo_keywords'] = $thiscategory['keywords']==''?$thiscategory['name']:$thiscategory['keywords'];
		$config['seo_description'] = $thiscategory['description']==''?'':$thiscategory['description'];
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'where' => $where,
				'currentpage'=>$currentpage,
				'genderString'=>$genderString,
				'genderArray'=>$genderArray,
				'categoryString'=>$categoryString,
				'categoryArray'=>$categoryArray,
				'langurl'=>$this->Cache_model->langurl,
				'list'=>$this->Cache_model->handleModelData($list),
				'pagestr'=>$this->pagination->create_links(),
				'category'=>$thiscategory
		);
		exit($res['list']);
	}

	function arr2str ($arr)
	{
	    foreach ($arr as $v)
	    {
	        $v = join(",",$v); 
	        $temp[] = $v;
	    }
	    $t="";
	    foreach($temp as $v){
	        $t.="'".$v."'".",";
	    }
	    $t=substr($t,0,-1);
	    return $t;
	}
		
}