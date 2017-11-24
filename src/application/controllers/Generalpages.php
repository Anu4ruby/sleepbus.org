<?php 

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Generalpages extends MY_Controller {
  function __construct() {
    parent :: __construct();

    $this->load->library('CommonFunctions');
  }

  public function about_us() {
    $this->data['meta']['page_title'] = "About us";

    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/about-us',$this->data);
    $this->load->view('templates/footer');
  }

  public function why_sleep() {
    $this->data['meta']['page_title'] = "Why sleep?";

    $this->load->view('templates/header', $this->data);
    $this->load->view('general-pages/why-sleep', $this->data);
    $this->load->view('templates/footer');
  }

  public function meet_the_board() {
    $this->data['meta']['page_title'] = "Meet the board";

    $this->load->view('templates/header', $this->data);
    $this->load->view('general-pages/meet-the-board', $this->data);
    $this->load->view('templates/footer');
  }

  public function bus_criteria() {
    $this->data['meta']['page_title'] = "Bus Criteria";

    $this->load->view('templates/header-unresponsive', $this->data);
    $this->load->view('general-pages/bus-criteria', $this->data);
    $this->load->view('templates/footer-unresponsive');
  }

  public function sleepbuslive() {
    $this->data['meta']['page_title'] = "sleepbusLIVE";

    $this->load->view('templates/header-unresponsive', $this->data);
    $this->load->view('general-pages/sleepbuslive', $this->data);
    $this->load->view('templates/footer-unresponsive');
  }

  public function simon_story() {
    $this->data['meta']['page_title'] = "Simon's Story";

    $this->load->view('templates/header', $this->data);
    $this->load->view('general-pages/simons-story', $this->data);
    $this->load->view('templates/footer');
  }

  public function media() {
    $this->data['meta']['page_title'] = "In the Media";

    $this->websitejavascript->include_footer_js=array('MediaFooterJs');
    $this->load->view('templates/header', $this->data);
    $this->load->view('general-pages/in-the-media', $this->data);
    $this->load->view('templates/footer');
  }

  public function toolbox() {
    $this->data['meta']['page_title'] = "sleepbus toolbox";
    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/toolbox',$this->data);
    $this->load->view('templates/footer');
  }

  public function privacy_policy() {
    $this->data['meta']['page_title'] = "Privacy policy";

    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/privacy-policy',$this->data);
    $this->load->view('templates/footer');
  }

  public function faq() {
    $this->data['meta']['page_title'] = "Frequently asked questions";

    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/faq',$this->data);
    $this->load->view('templates/footer');
  }

  public function refund_policy() {
    $this->data['meta']['page_title'] = "Refund policy";

    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/refund-policy',$this->data);
    $this->load->view('templates/footer');
  }
}
