<div id="campaignlistheader">
            <h2>FIND A CAMPAIGN</h2>
            <div id="custom-search-input">
                <div class="input-group">
                    <input class="form-control" placeholder="ENTER A CAMPAIGN NAME" id="campaign-list-search-field" type="text">
                    <span class="input-group-btn">
                        <button class="btn-info" id="campaign-list-search" style="cursor:pointer;" type="button">
                            SEARCH
                        </button>
                    </span>
                </div>
            </div>
            <h3 style="text-align: center;">Or search from the list below.</h3>
      </div>

<div class="pagewidth">
	<div id="campaignlist">
		<h1>CHECK OUT ALL OF OUR CURRENT CAMPAIGNS, OR <a href="#" id="startacampaign"><img src="/images/startyourcampaign.png"/></a></h1>
		  <div id="campaigncontent">
	      <ul>
				<?php foreach($campaigns as $campaign) : ?>

					<li>
							<div class="campaignentry">
								<a href="/campaign/<?php echo $campaign->url; ?>">
									<img src="/images/campaign/<?php echo $campaign->image_file; ?>"/>
								</a>	
								<a href="/campaign/<?php echo $campaign->url; ?>">
									<?php if($campaign->title_length > 50) : ?>

										<h2 class="smalltitle campaign-name"><?php echo strlen($campaign->campaign_name) > 50 ? substr($campaign->campaign_name,0,60)."..." : $campaign->campaign_name; ?></h2>

									<?php elseif($campaign->title_length > 23) : ?>

										<h2 class="smalltitle campaign-name"><?php echo $campaign->campaign_name; ?></h2>

									<?php else : ?>

										<h2 class="campaign-name"><?php echo $campaign->campaign_name; ?></h2>

									<?php endif; ?>
								</a>
								<p><span>$<?php echo $campaign->raised_amount;?></span> of $<?php echo number_format((int)$campaign->campaign_goal, 2, '.', ',') ;?> goal</p>
								<a href="<?php echo base_url();?>donation/<?php echo $campaign->url;?>"><div id="donatenow">Donate Now</div></a>
							</div>
							</a>
					</li>


				<?php endforeach; ?>
	      </ul>
      </div>
	</div>	

</div>
<script>
var searchButton = document.getElementById('campaign-list-search');

searchButton.onclick = function() {
  searchString = document.getElementById('campaign-list-search-field').value.toLowerCase();

  campaigns = document.getElementsByClassName('campaign-name');

  for (var i = 0; i < campaigns.length; i++) {
    campaignName = campaigns[i].innerHTML.toLowerCase();

    // see if search string contained within
    if (campaignName.includes(searchString)) {
      ancestorLI = campaigns[i].parentNode.parentNode.parentNode;
      ancestorLI.style.display = "block";
    } else {
      // if not, hide parent <li>
      ancestorLI = campaigns[i].parentNode.parentNode.parentNode;
      ancestorLI.style.display = "none";
    } 
  }
}

</script>
