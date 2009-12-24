<%@ Control %>
<%@ Register TagPrefix="DT" Namespace="Subtext.Web.UI.WebControls" Assembly="Subtext.Web" %>	
<%@ Register TagPrefix="uc1" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="News" Src="Controls/News.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MyLinks" Src="Controls/MyLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogStats" Src="Controls/BlogStats.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SingleColumn" Src="Controls/SingleColumn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentComments" Src="Controls/RecentComments.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SyndicatonLinks" Src="Controls/SyndicationLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagCloud" Src="Controls/TagCloud.ascx" %>

<script type="text/javascript">
<!--
// This addLoadEvent function is defined in the LiveCommentPreivew.js file, which was 
// declared in the Skins.config file, and included by the DTP.aspx page.
addLoadEvent(initSlider);
-->
</script>

<div id="container">
	<div id="header">
		<uc1:header id="Header1" runat="server" />
	</div>
	<div id="topNav">
		<uc1:MyLinks id="MyLinks1" runat="server" />
		<div id="blogstats"><uc1:BlogStats runat="server" id="blogStats" /></div>
	</div>
	<div id="main">
		<div id="content">
			<dt:contentregion id="MPMain" runat="server" />
		</div>	
		<div id="navigation">
			<uc1:news id="News1" runat="server" />
			<div class="links">
				<div class="title">Jobs.</div>
				<ul><li>
					<script type="text/javascript" src="http://jobs.stevenharman.net/js.ashx?PubId=1075&amp;Type=Skyscraper"></script>
				</li></ul>
			</div>
			<div id="AdSense_Links" class="links AdSense_links hide"></div>
			<div id="subscription-options" class="links">
				<div class="title">Subscribe</div>
				<uc1:SyndicatonLinks ID="SyndicationLinks1" runat="Server" />
			</div>
			<div class="links">
			    <uc1:TagCloud ID="tagCloud" runat="server" ItemCount="20" />
			</div>
			<div class="links">
				<uc1:RecentComments id="recentComments" runat="server" />
			</div>
			<uc1:singlecolumn id="SingleColumn1" runat="server" />
			<div id="badges" class="links">
				<div class="title">Badges.</div>
				<ul>
					<li><asp:HyperLink Runat=server Text="Subtext Project" ID="subTextBadge" ImageUrl="~/images/PoweredBySubtext85x33.png" /></li>
					<li><a href="http://sourceforge.net/donate/index.php?group_id=137896"><img src="http://images.sourceforge.net/images/project-support.jpg" width="88" height="32" border="0" alt="Support Subtext" /></a></li>
					<li>
						<div id="AdSense_FireFox" class="AdSense_referrals_FF">
							<script type="text/javascript">
								<!--
									google_ad_client = "pub-2574483175675865";
									google_ad_width = 110;
									google_ad_height = 32;
									google_ad_format = "110x32_as_rimg";
									google_cpa_choice = "CAAQgYOy0QEaCHt_mB0Eu3rIKOP143Q";
								//-->
							</script>
							<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
						</div>
					</li>
					<li>
						<div>
							<script type="text/javascript">
								<!--
									google_ad_client = "pub-2574483175675865";
									google_ad_width = 110;
									google_ad_height = 32;
									google_ad_format = "110x32_as_rimg";
									google_cpa_choice = "CAAQ0LGkgwIaCHug5WeA9TfeKIy84IEB";
								//-->
							</script>
							<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
						</div>
					</li>
				</ul>
			</div>
			<div class="links">
				<div class="title">Advertisements.</div>
				<ul>
					<li>
						<a href="http://HiddenNetwork.com/ref.ashx?1075">
							<img src="http://HiddenNetwork.com/Resources/Images/hn_tizes/bnr.120.gif" 
								border="0" alt="HiddenNetwork.com Banner" />
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<uc1:footer id="Footer1" runat="server" />
	</div>
</div>
