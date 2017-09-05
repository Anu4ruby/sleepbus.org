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
    $this->data['meta']=$this->Metatags_model->GetMetaTags('SINGLE_PAGE',21,'Sleepbus Toolbox');
    $this->data['cta']=$this->Website_model->GetCTAButtons('SINGLE_PAGE',21);
    $this->data['top_text']=$this->Website_model->GetTopText(8);
    $this->data['branding_content']=$this->Website_model->GetTopText(9);
    $this->data['video']=$this->Website_model->GetTopText(10);
    $this->data['facebook_timeline']=$this->Website_model->GetTopText(11);
    $this->data['twitter_background']=$this->Website_model->GetTopText(12);
    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/toolbox',$this->data);
    $this->load->view('templates/footer');
  }

  public function sitemap() {
    $this->data['meta']=$this->Metatags_model->GetMetaTags('SINGLE_PAGE',18,'Sitemap');
    $this->data['cta']=$this->Website_model->GetCTAButtons('SINGLE_PAGE',18);
    $this->data['contents']=$this->Website_model->GetPageContent(8);
    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/sitemap',$this->data);
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

  public function social_feeds() {
    $this->data['meta']['page_title'] = "Social media feeds";

    $this->load->view('templates/header',$this->data);
    $this->load->view('general-pages/social-feeds',$this->data);
    $this->load->view('templates/footer');
  }
}
