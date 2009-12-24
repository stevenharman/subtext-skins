<%@ Import Namespace = "Subtext.Framework.Components" %>
<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.DayCollection" %>
<%@ Register TagPrefix="uc1" TagName="Day" Src="Day.ascx" %>
<asp:Repeater id="DaysList" runat="server">
	<ItemTemplate>
		<%# (Container.ItemIndex == 3) ?
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
		<uc1:Day id="DayItem" CurrentDay='<%# (EntryDay) Container.DataItem %>' runat="server" />
	</ItemTemplate>
</asp:Repeater>
