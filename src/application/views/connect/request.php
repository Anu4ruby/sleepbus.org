<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
  <div class="container">
    <div class="row">
       <div class="contact">

        <h1>Speaker request</h1>

        <p>Would you like sleepbus to visit your school or business?<br />
        Please complete your details below and we will be in touch.</p>

        <div class="contactfbbox2"><img alt="" src="/images/icon13.png" /></div>

       
       <div class="contactin" id="enquiriesfrom">
       <div class="row">
<?php
  echo form_open(base_url().'speaker-request',$attribute['form']);
  echo form_hidden('caller','Send');
 ?>
<div id="errorDiv" style="height:30px; <?php $errors=validation_errors(); if(empty($errors)){?>display:none;<?php } else{?> display:inline; <?php }?>"><?php echo validation_errors("<p style='color:#e60000;'>","</p>"); ?>
     	  </div>       
       
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo form_input($attribute['name']);?></div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo form_input($attribute['email']);?></div> 
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo form_input($attribute['phone']);?></div> 
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><?php echo form_dropdown('hear_about_us',$attribute['hear_about_us'],$attribute['hear_about_us_value'],"id='hear_about_us' class='form-control'");?></div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><?php echo form_textarea($attribute['message']);?></div> 
           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ct"><?php echo form_input($attribute['submit']);?></div> 
        </div> 
        
        
   <?php
    echo form_close();
   ?>              
           
       </div> 
       </div>
       </div>
    </div>
  </div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="container">
<div class="row donateh2">
<h2>Other ways you can get involved</h2>

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 donatehome cta4home">
<div class="donatehomeimg"><img alt="" src="/images/icon2.png" /></div>

<p>Pledge your next Birthday for safe sleeps.</p>
<a class="btn btn-primary btn-pledge" href="/pledge">PLEDGE</a></div>

<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 donatehome cta4home">
<div class="donatehomeimg"><img alt="" src="/images/icon3.png" /></div>

<p>Do something crazy or creative to raise money.</p>
<a class="btn btn-info" href="/fundraise">FUNDRAISE</a></div>
</div>
</div>
</div>

