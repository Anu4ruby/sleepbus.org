<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Blog extends MY_Controller {
  function __construct() {
    parent :: __construct();
    $this->load->library('CommonFunctions');
  }

  public function blog_list() {
    $this->websitejavascript->include_js=array('HomepageJs');

    $this->data['meta']['page_title'] = "Blog";

    $this->load->view('templates/header', $this->data);
    $this->load->view('blog/blog-list', $this->data);
    $this->load->view('templates/footer');
  }

  public function GetBlogByURL($blog_url) { 
    $this->data['active_menu'] = 'blog';
    $this->load->view('blog/' . $blog_url, $this->data);
  }
}
