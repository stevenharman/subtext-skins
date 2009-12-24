<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.EntryList" %>
<%@ Import Namespace = "Subtext.Framework" %>
<div class="posts">
	<div class="title">
		<asp:literal id="EntryCollectionTitle" runat="server" />
	</div>
	<div class="description">
		<asp:literal id="EntryCollectionDescription" runat="server" />
	</div>
	<div class="adsense_topBanner">
		<script type="text/javascript"><!--
		google_ad_client = "pub-2574483175675865";
		google_ad_width = 468;
		google_ad_height = 60;
		google_ad_format = "468x60_as";
		google_ad_type = "text_image";
		google_ad_channel ="";
		google_color_border = "333333";
		google_color_bg = "333333";
		google_color_link = "F1B257";
		google_color_text = "DDDDDD";
		google_color_url = "F1B257";
		//--></script>
		<script type="text/javascript"
		  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
	</div>
	<asp:repeater runat="Server" runat="server" id="Entries" onitemcreated="PostCreated">
		<itemtemplate>
			<%# (Container.ItemIndex == 2) ?
    @"<div class='adsense_topBanner'>
          <script type='text/javascript'><!--
		google_ad_client = 'pub-2574483175675865';
		google_ad_width = 468;
		google_ad_height = 60;
		google_ad_format = '468x60_as';
		google_ad_type = 'text_image';
		google_ad_channel ='';
		google_color_border = '333333';
		google_color_bg = '333333';
		google_color_link = 'F1B257';
		google_color_text = 'DDDDDD';
		google_color_url = 'F1B257';
		//--></script>
		<script type='text/javascript'
		  src='http://pagead2.googlesyndication.com/pagead/show_ads.js'>
		</script>  
    </div>"
					:
					""
			%>
			<div class="post">
				<div class="title">
					<asp:HyperLink  Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" />
				</div>
				<ul class="info">
					<li class="permalink"><asp:Label id="permalink" runat="server" Format="MMM dd, yyyy" /></li>
					<li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
				</ul>
				<div class="body">
					<asp:literal runat="server" id="PostText" />
				</div>
			</div>
		</itemtemplate>
	</asp:repeater>
	<div class="more">
		<asp:hyperlink runat="server" id="EntryCollectionReadMoreLink" />
	</div>
	<div class="adsense_botBanner">
		<script type="text/javascript"><!--
		google_ad_client = "pub-2574483175675865";
		google_ad_width = 468;
		google_ad_height = 60;
		google_ad_format = "468x60_as";
		google_ad_type = "text_image";
		google_ad_channel = "";
		google_color_border = "333333";
		google_color_bg = "333333";
		google_color_link = "F1B257";
		google_color_text = "DDDDDD";
		google_color_url = "F1B257";
		//--></script>
		<script type="text/javascript"
		  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
	</div>
</div>