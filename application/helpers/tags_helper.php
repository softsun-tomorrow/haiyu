<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
function x6cms_lang(){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadLang();
	return $data;
}

function x6cms_path($path){
	if(substr($path,0,4)=='http'){
		return $path;
	}else{
		return base_url($path);
	}
}

function x6cms_location($category,$code=''){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadLocation($category,$code);
	return $data;
}

function x6cms_url($url){
	if(substr($url,0,4)=='http'){
		return $url;
	}else{
		return site_url($url);
	}
}

function x6cms_search($model='article',$ismult=true){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadSearch($model,$ismult);
	return $data;
}

function x6cms_productsearch($model='product',$ismult=false){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadProductSearch($model,$ismult);
	return $data;
}

function x6cms_navigation($type){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadNavigation($type);
	return $data;
}

function x6cms_singleCategory($id){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadCategoryById($id);
	return $data;
}

function x6cms_category($num=0){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadCategory($num);
	return $data;
}
//获取幻灯片类型
function x6cms_slideType($pos){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadSlideType($pos);
	return $data;
}

//获取幻灯片
function x6cms_slide($type){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadSlide($type);
	return $data;
}

function x6cms_modellist($model,$category,$order,$num,$recommend){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadModel($model,$category,$order,$num,$recommend);
	return $data;
}

function x6cms_recommend($recommendid,$order,$num){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadRecommend($recommendid,$order,$num);
	return $data;
}

function x6cms_fragment($varname){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadFragment($varname);
	return $data;
}

function x6cms_tags($num=0){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadTags($num);
	return $data;
}

function x6cms_tagsData($model,$tags,$num){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadTagsData($model,$tags,$num);
	return $data;
}

function x6cms_link($type=0){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadLink($type);
	return $data;
}

function x6cms_online(){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadOnline();
	return $data;
}

function x6cms_thiscategory($category){
	$CI =& get_instance();
	if($category['model']=='customise'){		
		$data=$CI->Cache_model->loadCdata($category);
	}else{
		$data=$CI->Cache_model->loadThisCategory($category);
	}
	return $data;
}

function x6cms_allcategory(){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadAllCategory();
	return $data;
}

function x6cms_related($detail,$num=5){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadRelated($detail,$num);
	return $data;
}

//通过属性ID，获取单个属性信息
function x6cms_attribute($id){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadAttributeByID($id);
	return $data;
}

function x6cms_attributebyname($name){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadAttributeByName($name);
	return $data;
}

function x6cms_attributebyparent($parent){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadAttributeByParent($parent);
	return $data;
}

//获取所有属性信息
function x6cms_thisattribute($ids){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadThisAttribute($ids);
	return $data;
}

//获取所有属性信息
function x6cms_allattribute(){
	$CI =& get_instance();
	$data=$CI->Cache_model->loadAllAttribute();
	return $data;
}

