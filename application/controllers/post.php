<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Post extends CI_Controller {
	var $defaultLang;
	function __construct(){
		parent::__construct();
		$this->Cache_model->setLang($this->input->get());
		$this->Lang_model->loadLang('front',$this->Cache_model->currentLang);
		if($this->uri->segment(3)){
			show_404();
		}
		$this->load->helper('tags');
	}
	public function guestbook(){	
		$post = $this->input->post(NULL,TRUE);
		if(!$post){show_404();}
		$data = array();
		$message = '';
		$iserror = FALSE;
		$data['email'] = trim($post['email']);
		if($data['email']==''){
			$message .= lang('emailtip1');
			$iserror = TRUE;
		}
		if (!preg_match ("/^[0-9a-zA-Z]+(?:[\_\-][a-z0-9\-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\.[a-zA-Z]+$/i",$data['email'])) {
			$message .= lang('emailtip2');
			$iserror = TRUE;
		}
		$data['content'] = trim($post['content']);
		if($data['content']==''){
			$message .= lang('contenttip');
			$iserror = TRUE;
		}
		if($message==''){
			$category = $this->Data_model->getSingle(array('id'=>$post['category'],'model'=>'guestbook'),'category');
			if($category&&$category['isdisabled']==0){
				$data['category'] = $post['category'];
				$data['firstname'] = $post['firstname'];
				$data['surname'] = $post['surname'];
				$data['gender'] = $post['gender'];
				$data['phone'] = $post['phone'];
				$data['country'] = $post['country'];
				$data['status'] = 0;
				$data['lang'] = $category['lang'];
				$data['createtime'] = time();
				if($this->Data_model->addData($data,'guestbook')){
					$message = lang('submit_success');
					
					$mailconfig = $this->Cache_model->loadConfig('mail');
					$config['protocol'] = $mailconfig['mail_type'];//'smtp';
					$config['smtp_host']=$mailconfig['smtp_host'];//'smtp.qq.com';//smtp地址
					$config['smtp_user']=$mailconfig['smtp_user'];//发邮件帐号
					$config['smtp_pass']=$mailconfig['smtp_pass'];
					$config['smtp_port']=$mailconfig['smtp_port'];//'25';
					//$config['smtp_crypto']='ssl';
					$config['charset'] = 'utf-8';//你的网页编码
					$config['mailtype'] = 'html';
					$config['wordwrap'] = TRUE;

					/**
					 * 默认Email类中 var $newline= "\n";   var $crlf= "\n";  这两项是这样的。
					 * 在163邮箱中可以通过。而腾讯邮箱服务器好像不支持，所以就是出现错误的罪魁祸首。
					 * 把这两项改成$config['crlf']="\r\n";   $config['newline']="\r\n"; 
					 * 就完成支持腾讯邮箱服务器了
					 */
					$config['crlf']="\r\n";
					$config['newline']="\r\n";

					$subject = ''.lang('c_emailtitle');
					$str_content =  'First Name:' . $data['firstname'].'<br/>'.
									'Surname:' . $data['surname'].'<br/>'.
									'Gender:' . ($data['gender'] ==1 ? 'Male':'Female') .'<br/>'.
									'E-mail:' . $data['email'].'<br/>'.
									'Phone:' . $data['phone'].'<br/>'.
									'Country:' . $data['country'].'<br/>'.
									'Message:' . $data['content'];
					$content = str_replace('TITLE_LIUS_LTF', $subject, str_replace('CONTENT_LIUS_LTF', $str_content, lang('c_emailadmincontent'))) ;
					
					$this->email->initialize($config);
					$this->email->from($mailconfig['smtp_user'], lang('c_emailadminsend'));
					$this->email->to($mailconfig['smtp_sendmail']);//收邮件帐号
					$this->email->subject($subject);
					$this->email->message($content);
					$this->email->send();

				}else{
					$message = lang('submit_error');
					$iserror = TRUE;
				}
			}else{
				if(isset($category['isdisabled'])){
					$message = lang('submit_isdisabled');
				}else{
					$message = lang('submit_error');
				}
				
				$iserror = TRUE;
			}
		}
		$config = $this->Cache_model->loadConfig();
		$config['seo_title'] = $iserror?lang('submit_error'):lang('submit_success');
		$config['seo_keywords'] = '';
		$config['seo_description'] = '';
		$url = isset($_SERVER['HTTP_REFERER'])&&$_SERVER['HTTP_REFERER']!=''?$_SERVER['HTTP_REFERER']:base_url($this->Cache_model->langurl);
		$actionurl[] = array('name'=>lang('reback'),'url'=>$url);
		$this->load->setPath();
		$res = array(
				'config'=>$config,
				'message'=>$message,
				'actionurl'=>$actionurl,
				'langurl'=>$this->Cache_model->langurl
		);
		$this->load->view($config['site_template'].'/message',$res);
	}
}