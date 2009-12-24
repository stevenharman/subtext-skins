<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<h2>Subscribe</h2>
<div>
	<ul>
		<li>
		  <asp:hyperlink id="XMLLink" runat="server" text="Subscribe to my feed." ToolTip="Subscribe to my feed" 
		    ImageUrl="~/skins/lazydays/images/icons/feed.png" /> via RSS
		</li>
		<li>
		    <a title="Subscribe via email" href="http://www.feedburner.com/fb/a/emailverifySubmit?feedId=829602">
				  <img alt="Subscribe via email" src="~/skins/lazydays/images/icons/email.png" runat="server"/>
			  </a> via email
		</li>
	</ul>	
	<p class="hide">
    <a href="http://feeds.feedburner.com/stevenharman">
			<img src="http://feeds.feedburner.com/~fc/stevenharman?bg=F1B257&amp;fg=333333&amp;anim=0" height="26" width="88" style="border:0" alt="" />
	  </a>
	</p>
</div>