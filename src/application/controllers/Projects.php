<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Projects extends MY_Controller {
	function __construct() {
		parent :: __construct();
		$this->load->library('CommonFunctions');
	}

	public function index() {
		$this->data['meta']['page_title'] = "Projects";

		$this->load->view('templates/header',$this->data);
		$this->load->view('projects/completed-project',$this->data);
		$this->load->view('templates/footer');
	}
}
