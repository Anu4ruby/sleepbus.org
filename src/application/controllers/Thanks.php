<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Thanks extends MY_Controller {
  function __construct() {
    parent :: __construct();
  }

  public function connect_thanks() {
    $this->data['meta']['page_title'] = "Thank you";

    $this->load->view('templates/header', $this->data);
    $this->load->view('thanks/connect', $this->data);
    $this->load->view('templates/footer');
  }

  public function speaker_request_thanks() {
    $this->data['meta']['page_title'] = "Speaker request";

    $this->load->view('templates/header', $this->data);
    $this->load->view('thanks/speaker-request', $this->data);
    $this->load->view('templates/footer');
  }

  public function forgot_password_thanks() {
    $this->data['meta']['page_title'] = "Thank you";

    $this->load->view('templates/header', $this->data);
    $this->load->view('thanks/forgot-password-thanks', $this->data);
    $this->load->view('templates/footer');
  }

  public function reset_password_thanks() {
    $this->data['meta']['page_title'] = "Thank you";

    $this->load->view('templates/header', $this->data);
    $this->load->view('thanks/reset-password-thanks', $this->data);
    $this->load->view('templates/footer');
  }

  public function enewsletter_thanks() {
    $this->data['meta']['page_title'] = "Thank you";

    $this->load->view('templates/header', $this->data);
    $this->load->view('thanks/newsletter-thanks', $this->data);
    $this->load->view('templates/footer');
  }

  public function volunteer_signup_thanks() {
    $this->data['meta'] = array('page_title' => "You're Awesome! - sleepbus");

    $this->load->view('templates/header',$this->data);
    $this->load->view('thanks/volunteer-signup-thanks',$this->data);
    $this->load->view('templates/footer');
  }
}
