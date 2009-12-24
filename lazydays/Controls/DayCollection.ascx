<%@ Import Namespace = "Subtext.Framework.Components" %>
<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.DayCollection" %>
<%@ Register TagPrefix="uc1" TagName="Day" Src="Day.ascx" %>
<asp:Repeater id="DaysList" runat="server">
	<ItemTemplate>
		<uc1:Day id="DayItem" CurrentDay='<%# (EntryDay) Container.DataItem %>' runat="server" />
		<%# (Container.ItemIndex == 0 || Container.ItemIndex == 2) ?
		    @"<div class='adsense_topBanner'>
			    <script type='text/javascript'><!--
			        google_ad_client = 'pub-2574483175675865';
			        /* ViewPost-bottom-small */
			        google_ad_slot = '2700902534';
			        google_ad_width = 468;
			        google_ad_height = 60;
			        //-->
			    </script>
			    <script type='text/javascript' src='http://pagead2.googlesyndication.com/pagead/show_ads.js'>
			    </script>  
		    </div>"
					:
					""
			%>
	</ItemTemplate>
</asp:Repeater>
