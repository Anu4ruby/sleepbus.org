<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Support extends MY_Controller
 {
  function __construct()
  {
   parent :: __construct();
   $this->load->library('CommonFunctions');
   $this->load->model('Support_model');
  }
  public function index()
  {
	 $this->data['meta']['page_title'] = "Corporate support";
   $this->load->view('templates/header',$this->data);
   $this->load->view('corporate-support/corporate-support',$this->data);
   $this->load->view('templates/footer');
  }
 }
