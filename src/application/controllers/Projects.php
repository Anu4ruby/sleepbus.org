<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Projects extends MY_Controller
 {
  function __construct()
  {
   parent :: __construct();
   $this->load->library('CommonFunctions');
   $this->load->model('Project_model');
  }
  public function index()
  {
   $this->data['meta']['page_title'] = "Projects";

   $this->load->view('templates/header',$this->data);
   $this->load->view('projects/completed-project',$this->data);
   $this->load->view('templates/footer');
  }
  public function details($project_id)
  {
   $this->data['project_id']=$project_id;
   $this->data['project_details']=$this->Project_model->GetProjectDetails($this->data['project_id']);  
	 $this->data['meta']['page_title'] = "Projects";
   
   $this->data['project_images']=$this->Project_model->GetProjectImages($this->data['project_id']);  
   
   $this->load->view('templates/header',$this->data);
   $this->load->view('projects/project-details',$this->data);
   $this->load->view('templates/footer');
  }
  
 }
