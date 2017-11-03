<!-- donation page main content -->

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="container">
<div class="row">
<div class="funding">
<div class="fundingicon"><img alt="" src="/images/icon31.png" /></div>

<h1>Donate</h1>

<div class="fundingtoptext">
<h2>100% of your money will fund sleepbus projects.<br />
Give people safe sleeps and get them off our streets.</h2>
</div>
</div>
</div>
</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 completedmainbox">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 completedbox2">
<div class="dontebox dontecolorone">
<h2>Give safe sleeps</h2>

<h3>One safe sleep is just $27.50</h3>

<p>100% funds sleepbus projects.</p>

<!-- one time donation form -->
	<?php
 	 echo form_open(base_url().'donate',$attribute['form']);
     echo form_hidden('caller','Send');
    ?>
<div id="errorDiv" style="height:30px; <?php $errors=validation_errors(); $show_error=form_error('amount'); if(empty($show_error)){?>display:none;<?php } else{?> display:inline;color: #e60000; <?php }?>"><?php echo $show_error; ?>
    </div> 	       
    <div id="donatefrom"></div>
     <div class="form-group positionrelative">
     
 	     
      <div class="dollar2">$</div>
      <?php echo form_input($attribute['amount']);?>
      <div class="aud2">AUD</div>
     </div>
     <div class="dontelinkbox">
     
      <?php echo form_input($attribute['submit']);?>
	 </div>
    <?php
     echo form_close();
	?> 
<!-- end one time donation form -->
</div>
<img alt="" src="/images/img17.jpg" /></div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 completedbox2">
<div class="dontebox dontecolorone">
<h2>Give monthly</h2>

<h3>Give safe sleeps all year long.</h3>

<p>100% of your donation gets people off the street and provides safe sleeps.</p>

<!-- monthly donation form -->
	<?php
 	 echo form_open(base_url().'donation/donate',$attribute_monthly['form']);
     echo form_hidden('caller2','Send');
    ?>
<div id="errorDiv2" style="height:30px; <?php $errors=validation_errors(); $show_error=form_error('monthly_amount'); if(empty($show_error)){?>display:none;<?php } else{?> display:inline;color: #e60000; <?php }?>"><?php echo $show_error; ?>
     	  </div>     
    <div id="donatemonthlyfrom"></div>
     <div class="form-group positionrelative">
      <div class="dollar2">$</div>
      <?php echo form_input($attribute_monthly['monthly_amount']);?>
      <div class="aud2">AUD/MONTH</div>
     </div>
     <div class="dontelinkbox">
      <?php echo form_input($attribute_monthly['monthly_submit']);?>
	 </div>
	 <?php
     echo form_close();
	?> 
<!-- end monthly donation form -->
</div>
<img alt="" src="/images/img18.jpg" /></div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 completedbox2">
<div class="dontebox dontecolorone">
<h2>Provide one year of safe sleeps</h2>

<h3>Have an impact. Make a difference.</h3>

<p>100% funds sleepbus projects.</p>

<div class="findoutmore3"><a href="/one-year-safe-sleep">find out more</a></div>
</div>
<img alt="" src="/images/img19.jpg" /></div>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 completedbox2">
<div class="dontebox dontecolorone">
<h2>Corporate support</h2>

<h3>Provide the fuel that keeps sleepbus rolling.</h3>

<p>Our promise of 100% of public donations fund sleepbus projects is ambitious and we need investors to help. sleepbus investors are donors that recognise the impact of a major gift to our operational expenses. Like any startup business, we need investors who believe in, and support our business model. The 100% Model.</p>

<div class="findoutmore3"><a href="/corporate-supporters">help us get people off the street</a></div>
</div>
<img alt="" src="/images/img20.jpg" /></div>
</div>
</div>

<!-- donation page call to action pledge & fundraise -->

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



