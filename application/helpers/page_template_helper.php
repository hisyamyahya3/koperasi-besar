<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
  
   if (! function_exists('element')) {
       function template($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view('tpl/'.$template,$data,true);
		   $ci->load->view(_THEMES,$data);
       }
	   
	   function client_tpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_CLIENT_TPL,$data);
       }
	   
	   function traveltpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_THEMES_ITT,$data);
       }
	   
	   function calltpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_THEMES_ISC,$data);
       }
	   
	   function kulinertpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_THEMES_IK,$data);
       }
	   
	   function fournituretpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_THEMES_IF,$data);
       }
       
	   function admin($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_ADTHEMES,$data);
       }
	   
	   function admstore($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_ADMSTORE,$data);
       }
	   
	   function operator_tpl($template,$data=null){
       	   $ci = &get_instance();
		   $data['view'] = $ci->load->view($template,$data,true);
		   $ci->load->view(_OPERATOR,$data);
       }
	   
	   function malltpl($tpl,$template,$data=null,$valid=0){
		   $ci = &get_instance();
		   $data['view'] = $ci->load->view($tpl.'/'.$template,$data,true);
		   if($valid===1){
			$ci->load->view($tpl,$data);
		   }
		   else{
			$ci->load->view(_INVALID_URL,$data);
		   }
	   }
	   
	   function vsd($tpl,$template,$data=null,$valid=0){
		   $ci = &get_instance();
		   $data['view'] = $ci->load->view($tpl.'/'.$template,$data,true);
		   if($valid===1){
			$ci->load->view($tpl,$data);
		   }
		   else{
			$ci->load->view(_INVALID_URL,$data);
		   }
	   }
   }
