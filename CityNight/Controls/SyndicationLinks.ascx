<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<p class="hide"><a href="http://feeds.feedburner.com/stevenharman">
		<img src="http://feeds.feedburner.com/~fc/stevenharman?bg=F1B257&amp;fg=333333&amp;anim=0" height="26" width="88" style="border:0" alt="" />
	</a>
</p>
<ul>
	<li><asp:hyperlink id="XMLLink" runat="server" text="Subscribe to my feed." ToolTip="Subscribe to my feed." ImageUrl="~/Skins/CityNight/images/feedIcon_orange_32.gif" /> via RSS</li>
	<li><a title="Subscribe via email" href="http://www.feedburner.com/fb/a/emailverifySubmit?feedId=829602">
			<img alt="Subscribe via email" src="http://stevenharman.net/Skins/CityNight/Images/email.png"/>
		</a> via Email
	</li>
</ul>	
	<!--<asp:hyperlink id="AtomLink" runat="server" text="Atom 1.0" ToolTip="Atom 1.0" ImageUrl="~/Skins/CityNight/images/feedIcon_blue_32.gif" />-->