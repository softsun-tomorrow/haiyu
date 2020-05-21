<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ajax extends CI_Controller {
	var $defaultLang;
	function __construct(){
		parent::__construct();
		$this->Cache_model->setLang($this->input->get());
		$this->Lang_model->loadLang('front',$this->Cache_model->currentLang);
		$this->load->helper('myfunc');
	}
	
	public function index(){	
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
		if(empty($res['list'])) $res['list']['isEmpty'] = 1;
		else $res['list']['isEmpty'] = 0;
			
		show_jsonmsg(array('status'=>200,'remsg'=>$res['list']));
	}
	
}