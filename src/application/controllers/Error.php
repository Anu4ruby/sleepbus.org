<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Error extends MY_Controller
 {
  function __construct()
  {
   parent :: __construct();
  }
  public function index()
  {
	 $this->data['meta']['page_title'] = "Page not found";

   $this->load->view('templates/header',$this->data);
   $this->load->view('general-pages/error',$this->data);
   $this->load->view('templates/footer');
  }
 }
