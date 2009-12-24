<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<div id="myLinks">
	<div class="links">
		<ul>
			<li>
				<asp:hyperlink cssclass="link-home" runat="server" navigateurl="~/Default.aspx" text="Home" id="HomeLink" /></li>
			<li>
				<asp:hyperlink cssclass="link-archives" runat="server" navigateurl="~/Archives.aspx" text="Archives"	id="Archives" visible="False" />
			</li>
			<li>
				<asp:hyperlink cssclass="link-contact" runat="server" navigateurl="~/Contact.aspx" text="Contact" id="ContactLink" /></li>
			<li>
				<asp:hyperlink cssclass="link-feeds" runat="server" text="Syndication" id="Syndication" />
			</li>
			<li>
				<asp:hyperlink cssclass="Admin" runat="server" text="Admin" id="Admin" />
			</li>
		</ul>
	</div>
	
</div>
