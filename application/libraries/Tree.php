<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); 

class Tree {
	protected $listarr = array();
	protected $ret = '';
	protected $liststr = "<option value='\$id' \$selected \$disabled >\$spacer \$title</option>";
	protected $liststrarr = array(
				'option'=>"<option value='\$id' \$selected \$disabled >\$spacer \$title</option>",
			  );
	protected $icon = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	protected $pid = 0;
	protected $tid = '';
	protected $did = '';
	public function __construct($arr = array()){
		if(is_array($arr)){
			if(isset($arr['listarr'])){
				$this->listarr = $arr['listarr'];
			}
			if(isset($arr['liststr'])){
				$this->liststr = $arr['liststr'];
			}
			if(isset($arr['option'])){
				$this->liststr = $this->liststrarr[$arr['liststr']];
			}
			if(isset($arr['icon'])){
				$this->icon = $arr['icon'];
			}
			if(isset($arr['pid'])){
				$this->pid = $arr['pid'];
			}
			if(isset($arr['tid'])){
				$this->tid = $arr['tid'];
			}
			if(isset($arr['did'])){
				$this->did = $arr['did'];
			}
            if(isset($arr['search'])){
                $this->search = $arr['search'];
            }
			$this->ret = '';
		}else{
			show_error(lang('message'),200,lang('treeerror'));
		}
	}
	
	public function getlist(){
		return $this->get_tree($this->pid,$this->liststr,$this->tid,$this->did);
	}
	
	private function get_tree($pid,$str,$tid='',$did='',$level=0){
		$child = $this->get_child($pid);
		$spacer = '';
		for($i=0;$i<$level;$i++){
			$spacer.=$this->icon;
		}
        //判断是否有传递search参数，有表示是列表
        $tid= isset($this->search['category'])?$this->search['category']:$tid;
		if(is_array($child)){
			foreach($child as $key => $item){
				@extract($item);
				$selected = $id==$tid ? 'selected' : '';
				$disabled = $id==$did ? 'disabled' : '';
                //$str1 = preg_replace('/\$selected/', $selected, $str);
				@eval("\$newstr = \"$str\";");
				$this->ret .= $newstr;
				$this->get_tree($item['id'],$str,$tid,$did,$level+1);
			}
		}
		return $this->ret;
	}
	
	private function get_child($pid){
		$newarr = array();
		foreach($this->listarr as $key => $item){
			if($item['parent']==$pid){
				$newarr[] = $item;
			}
		}
		return $newarr?$newarr:false;
	}
	
	
}
