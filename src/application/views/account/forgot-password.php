<div class="sign-up">
  <div class="container">

<h1>It happens to the best of us.</h1>

<h2>We&rsquo;ll email you a reset link.</h2>

    <div class="sign-up-box">
      <div class="sign-up-box-in" id="forgotfrom">  
      
		<?php
     	 echo form_open(base_url().'forgot-password',$attributes['form']);
         echo form_hidden('caller','Send');
         ?>
		<div id="errorDiv" style="height:30px; <?php $errors=validation_errors(); if(empty($errors)){?>display:none;<?php } else{?> display:inline; <?php }?>"><?php echo validation_errors("<p style='color:#e60000;'>","</p>"); ?></div>        
        <div class="birthdayinputname">
          <?php echo form_input($attributes['email']);?>
        </div>
        <div class="birthdayinputname2">
        <?php
         echo form_submit($attributes['submit']);
   	    ?>
        </div>
        
        <?php
         echo form_close();
		?>
      </div>
    </div>
  </div>
</div>
