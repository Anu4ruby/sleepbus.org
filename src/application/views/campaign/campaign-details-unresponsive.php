
<div class="pagewidth">
<div id="campaignbanner">
	<div class="threefifth" style="background-image: url(<?php echo base_url();?>images/campaign/<?php if(!empty($campaign_details['image_file'])){ echo $campaign_details['image_file']; }else{ echo 'img457.jpg'; } ?>);">
		<div id="campaignlogo">
			<img src="/images/newcampaign/sleepbus-logo.png" width="250px"/>
		</div>
		
	</div>	
	<div class="twofifth">
		<div id="campaigntitle">
			<img src="/images/newcampaign/donate-icon black.png"/><h2><?php echo $campaign_details['campaign_name'];?></h2>
		</div>
		<div id="campaigngoal">
			<span>$<?php echo $raised_amount;?></span> of $<?php echo $campaign_goal;?> goal</br>
			<img src="/images/newcampaign/status_dummy.png" width="100%"/>
			<em>This will provide <strong><?php echo $safe_sleeps_raised;?></strong> safe sleeps.</em>
		</div>
		<div id="campaignaction">
			<a href="<?php echo base_url();?>donation/<?php echo $campaign_details['url'];?>">
        <div id="donatenow">Donate Now</div>
      </a>
			<a href="<?php echo base_url();?>donation/<?php echo $campaign_details['url'];?>">
        <div id="shareonfb"><img src="/images/newcampaign/fb_icon.png">Share on Facebook</div>
      </a>
      <!-- PENDING
			<div id="numberofshares">6 shares</div>
      -->
		</div>
		<div id="campaignnotice">
			<img src="/images/newcampaign/return_to_merchant.png"/>
		</div>
		<div id="campaigndetails">
			<div id="campaigninfo">
				<div id="campaigndate">
					Created <?php echo strftime('%B %m, %Y', strtotime($created_date)); ?>
				</div>
				<div id="campaignfriendlydate">
					<img src="/images/newcampaign/calendar_icon.png"/> <?php echo $created_time_ago; ?> AGO 
				</div>	
			</div>
			<div id="campaigneravatar">
				<img src="/images/newcampaign/campaigner_photo.png"/>
			</div>
			<div id="campaigername">
				<?php echo $campaign_details['user_full_name'];?>
			</div>
			<div id="campaignerlocation">
				Melbourne, Vic.
			</div>
	</div>
</div>	
</div>
	<div id="campaignbody">
			<div class="threefifth">
						<div class="onethird">
							<div id="donationlist">
								<div id="donationtitle">
									<div id="numberofdonations"><?php echo $total_donations;?> Donation(s)</div>
									<div id="recent">Recent</div>
									</div>	
								<div id="donationentries">
									<ul>
                    <?php foreach($donations as $donation) : ?>

                      <li>
                        <div id="donationamount"><span>$</span><?php echo number_format(($donation['paid_amount']),2);?></div>
                        <div id="donationlikes"><img src="/images/newcampaign/sleepbusheart.png">0</div>
                        <div id="donorname"><?php if($donation['anonymous'] == "yes"){ echo "Anonymous";}else{ echo $donation['donor_name']; }?></div>
                        <div id="donationdate"><?php echo $donation['time_ago'];?> ago</div>
                        <div id="donationmessage"><?php echo $donation['comment'];?></div>
                      </li>

                    <?php endforeach; ?>
									</ul>
									
								</div>	 
								<div id="donationpagination"><span id="currentpage">1-10</span> of <span id="totaldonation">13</span> donations</div><a href="#" id="nextpage"><i class="fa fa-chevron-right"></i></a>		
							</div>
						</div>
						<div class="twothird">
							<div id="campaigndescription">
								<div id="campaigntextarea">
                  <?php //TODO: need paragraph's, not line breaks, move this function to common class
                  function replace_br($data) {
                      $data = preg_replace('#(?:<br\s*/?>\s*?){2,}#', '</p><p>', $data);
                      return "<p>$data</p>";
                  }
                  ?>
                  <?php echo replace_br(nl2br($campaign_details['mission_statement'])); ?>
								<div id="sharecampaign" class="campaigntitles">
									<h4>Copy and share this URL with your friends to raise funds for sleepbus &reg;</h4>
									<input value="https://www.sleepbus.org/campaign/lincolnbarclayscampaign"></input>
								</div>
								
							</div>
								<div id="campaigngallery">
									<h4>CAMPAIGN PHOTO GALLERY</h4>
									<a href="#">Click on a photo to view detail.</a>
									<div id="gallerygrid">
										<div class="gallerygridcolumn">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
										<div class="gallerygridcolumn">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
										<div class="gallerygridcolumn last">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
									</div>
									<div id="gallerygrid">
										<div class="gallerygridcolumn">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
										<div class="gallerygridcolumn">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
										<div class="gallerygridcolumn last">	
											<img id="galleryimage" src="/images/newcampaign/galleryimage.jpg">
										</div>
								</div>
								
								</div>
							</div>	

							
						</div>	
			</div>	
			<div class="twofifth" id="newsfeed">
				<div id="newsfeedcontent">
					<h3>Newsfeed</h3>
					<ul>
              <!-- example news feed -->

            <li>
							<div id="feeddate"><img src="/images/newcampaign/calendar_icon_gray.png"/> <?php echo $created_time_ago; ?> AGO</div>
							<div id="feedtitle"><?php echo $campaign_details['user_full_name'];?> STARTED A FUNDRAISER.</div>
							<div id="campaigneravatar"><img src="/images/user_avatars/<?php echo $campaigner_photo;?>"/></div>
							<div id="feeddetails">
								<div id="feeddescriptionexerpt"><?php echo $campaign_details['user_full_name'];?> has taken the first steps towards helping those who are sleeping rough.</div>
						</li>

            <!-- end example news feed -->
					</ul>

            <!-- PENDING 
					<a href="#" id="seemoreactivity">See more activity</a>	
             PENDING -->
				</div>
				
            <!-- PENDING 
				<div id="eventslist">
					<h3>Events</h3>
					<ul>
						<li><div id="eventtitle">LINCOLN'S FUN RUN.</div>
								<div id="eventcontent">
									<div id="eventfriendlydate"><img src="/images/newcampaign/calendar_icon_gray.png"/> 2 weeks ago</div>
									<div id="campaigneravatar"><img src="/images/newcampaign/campaigner_photo.png"/></div>
									<div id="eventdetails">Join Lincoln for his fun run and show him you are proud of his hard work.</div>
									<div id="eventdate"><span>Date:</span> 30th March, 2017</div>
									<div id="eventtime"><span>Time:</span> 3:00pm - 5:00pm</div>
									<div id="eventlocation"><span>Location:</span> 123 Name Street, Town 3000</div></div>
								</div>
						</li>
					</ul>

				</div>
        -->
				
			</div>
	</div>		
