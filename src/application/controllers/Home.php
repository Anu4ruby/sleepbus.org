<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller {
	function __construct() {
		parent :: __construct();
	}

	public function index() {
		$values_monthly=array();	
		$values=array();
		$caller2=$this->input->post('caller2');

		if($caller2 == 'Send') {
			$form_token = $this->session->userdata('form_token');

			if(!isset($form_token)) { $this->RedirectPage(); exit; }
			else if(isset($form_token) && $form_token != 'donation') { $this->RedirectPage(); exit; }

			if(!preg_match('/'.$_SERVER['HTTP_HOST'].'/',$_SERVER['HTTP_REFERER'])) {
				$this->RedirectPage(); exit;
			}	   

			$values_monthly['monthly_amount']=$this->input->post('monthly_amount');
			$this->load->library('form_validation'); 
			$this->form_validation->set_error_delimiters('<span>','</span>');
			$this->form_validation->set_message('required','{field}');
			$this->form_validation->set_message('numeric','Please enter valid amount');
			$this->form_validation->set_rules('monthly_amount','Please enter donation amount', 'trim|required|numeric');

			if($this->form_validation->run() == TRUE) { 
				$donation=array();
				$monthly_amount=$values_monthly['monthly_amount'];
				$this->session->unset_userdata('monthly_amount');
				$this->session->set_userdata('monthly_amount',$monthly_amount);
				$this->session->unset_userdata('form_token');
				$this->RedirectPage('recurring/expresscheckout');
			}
		} else {
			$this->session->set_userdata('form_token','donation');
		}

		$this->data['attribute_monthly']=$this->Website_model->GetMonthlyDonateFormAttributes($values_monthly,55);
		$this->data['attribute']=$this->Website_model->GetDonateFormForOneTimeAttributes($values,55);
		$this->data['section_id']=1;
    $this->data['meta']['page_title'] = "Home";
		$this->websitejavascript->include_footer_js=array('RecurringDonationJs');

		$this->data['monthly_donation_form']=$this->load->view('home/monthly-donation-form',$this->data,true);
		$this->data['one_time_donation_form']=$this->load->view('home/one-time-donation-form',$this->data,true);

		$this->load->view('templates/header-unresponsive',$this->data);
		$this->load->view('home/home-unresponsive',$this->data);
		$this->load->view('templates/footer-unresponsive');
	}
}
