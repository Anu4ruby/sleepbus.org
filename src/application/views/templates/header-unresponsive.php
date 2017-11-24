<!doctype html>
<html class="no-js" lang="">
    <head>
		<?php if (ENVIRONMENT == 'production'): ?>
				<!-- Google Tag Manager -->
				<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
				new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
				j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
				'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
				})(window,document,'script','dataLayer','GTM-5FKJLK7');</script>
				<!-- End Google Tag Manager -->
		<?php else: ?>
				<meta property="GTM_placeholder_head" content="wootwoot" />
		<?php endif; ?>

		<?php if (isset($meta['og_campaign_name'])): ?>
			<meta property="og:url" content="<?php echo base_url();?>campaign/<?php echo $meta['og_campaign_url'];?>" />
			<meta property="og:type" content="article" />
			<meta property="og:title" content="<?php echo $meta['og_campaign_name'];?>" />
			<meta property="og:description" content="<?php echo ltrim(str_replace('***NOTE: PLEASE CLICK "RETURN TO MERCHANT" AFTER YOUR DONATION TO HAVE IT ALLOCATED TO THIS CAMPAIGN.***', '', $meta['og_campaign_description']));?>" />
			<meta property="og:image" content="<?php echo base_url();?>images/campaign/<?php if(!empty($meta['og_campaign_image'])){ echo $meta['og_campaign_image']; }else{ echo 'img457.jpg'; } ?>" />
		<?php else: ?>
			<meta property="og:title" content="Sleepbus.org" />
			<meta property="og:image" content="http://www.sleepbus.org/application/images/share-site-fb-image.jpeg"/>
			<meta property="og:description" content="is a non profit organisation on a mission to end the need for people to sleep rough" />
		<?php endif; ?>
			<meta property="fb:profile_id" content="sleepbusaustralia" />
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
			<!-- favicons -->
			<link rel="apple-touch-icon" sizes="57x57" href="/images/favicons/apple-icon-57x57.png">
			<link rel="apple-touch-icon" sizes="60x60" href="/images/favicons/apple-icon-60x60.png">
			<link rel="apple-touch-icon" sizes="72x72" href="/images/favicons/apple-icon-72x72.png">
			<link rel="apple-touch-icon" sizes="76x76" href="/images/favicons/apple-icon-76x76.png">
			<link rel="apple-touch-icon" sizes="114x114" href="/images/favicons/apple-icon-114x114.png">
			<link rel="apple-touch-icon" sizes="120x120" href="/images/favicons/apple-icon-120x120.png">
			<link rel="apple-touch-icon" sizes="144x144" href="/images/favicons/apple-icon-144x144.png">
			<link rel="apple-touch-icon" sizes="152x152" href="/images/favicons/apple-icon-152x152.png">
			<link rel="apple-touch-icon" sizes="180x180" href="/images/favicons/apple-icon-180x180.png">
			<link rel="icon" type="image/png" sizes="192x192"  href="/images/favicons/android-icon-192x192.png">
			<link rel="icon" type="image/png" sizes="32x32" href="/images/favicons/favicon-32x32.png">
			<link rel="icon" type="image/png" sizes="96x96" href="/images/favicons/favicon-96x96.png">
			<link rel="icon" type="image/png" sizes="16x16" href="/images/favicons/favicon-16x16.png">
			<link rel="manifest" href="/images/favicons//manifest.json">
			<meta name="msapplication-TileColor" content="#ffffff">
			<meta name="msapplication-TileImage" content="/images/favicons//ms-icon-144x144.png">
			<meta name="theme-color" content="#ffffff">
			<!-- favicons end -->
			 <?php
				if(isset($meta['page_title']) and !empty($meta['page_title']))
				{
					// quick fix lowercase sleepbus in title
					$title = str_replace('Sleepbus', 'sleepbus', $meta['page_title']);

				 ?>	  
					<title><?php echo $title; ?> | sleepbus</title>
				 <?php
				} else {
			 ?>
					<title>Sleepbus</title>
			<?php
					}
			?>
			 <?php
				if(isset($meta['meta_description']) and !empty($meta['meta_description']))
				{
				 ?>	  
				 <meta name="description" content="<?php echo $meta['meta_description'];?>" />
				 <?php
				}
				if(isset($meta['meta_keyword']) and !empty($meta['meta_keyword']))
				{
				 ?>	  
				 <meta name="keywords" content="<?php echo $meta['meta_keyword'];?>" />
				 <?php
				}
				if(isset($meta['json_code']) and !empty($meta['json_code']))
				{
				 ?>	  
				 <?php echo $meta['json_code'];
				}   
				?>
        <meta name="description" content="">
        <meta name="viewport" content="width=1366">

        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="/style/campaign-unresponsive.css">
        <link rel="stylesheet" href="/style/landing-unresponsive.css">
        <link rel="stylesheet" href="/style/bus-criteria-unresponsive.css">
        <link rel="stylesheet" href="/style/campaignlist-unresponsive.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>

<div id="headerbanner"><div class="headerVolunteersNeeded"><div class="headerVolunteersNeeded__simonIcon"></div><div class="headerVolunteersNeeded__sleepBusIcon"></div><div class="headerVolunteersNeeded__container">
    <div class="headerVolunteersNeeded__msg">Melbourne VOLUNTEERS required for various roles. Can you help?</div>
    <div class="headerVolunteersNeeded__details"><a href="/volunteer">Click here to join the volunteer database.</a></div>
  </div></div></div>
<div id="header"><div class	="pagewidth">
	<div id="logo">
		<a href="/"><img src="/images/newcampaign/sleepbus.svg"/></a>
	</div>
		<nav id="navbar">
		<ul id="nav1">
			<li class="aboutus"><a href="#">About Us</a>
				<ul class="aboutus-menu">
			      <li class="arrow3"><img src="/images/arrow3.png" alt=""></li>
			      <li class="first"><a href="/about-us">Here's what we're about</a></li>
			      <li><a href="/meet-the-board">Meet the board</a></li>
			      <li><a href="/faq">Frequently asked questions</a></li>
			      <li class="last">&nbsp;</li>
			    </ul>
			</li>
			
			<li><a href="/sleepbuslive">Sleepbus<span>LIVE</span></a></li>
			<li><a href="/bus-criteria">Buses Wanted</a></li>
		
			
			<li class="donate"><a href="#" class="buttonlink white">Donate</a>
				<ul class="donate-menu">
			      <li class="arrow3"> <img src="/images/arrow3.png" alt=""></li>
			      <li class="first"><a href="/donate">Give once</a></li>
			      <li><a href="/donate">Give monthly</a></li>
			      <li><a href="/pledge">Pledge</a></li>
			      <li><a href="/one-year-safe-sleep">Provide one year of safe sleeps</a></li>
			      <li><a href="/corporate-supporters">Corporate support</a></li>
			      <li class="last">&nbsp;</li>
			    </ul>
			</li>			<li><a href="/fundraise" class="buttonlink white">Fundraise</a></li>
			<li><a href="signin"><img src="/images/icon8.png" alt="">Sign in</a></li>
	
	</nav>

	</div>
</div>

<!-- end header -->
