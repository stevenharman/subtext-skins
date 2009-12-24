<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<div id="myLinks">
	<ul id="navheader">
		<li>
			<asp:HyperLink ID="HomeLink" runat="server" CssClass="Home" Text="Home" />
		</li>
		<li>
		    <asp:HyperLink ID="Archives" runat="server" CssClass="Archives" Text="Archives" />
		</li>
		<li>
			<asp:HyperLink ID="ContactLink" runat="server" CssClass="Contact" Text="Contact" />
		</li>
		<li>
			<a title="Get a Job!" href="http://jobs.stevenharman.net/1075/browse.aspx">Jobs</a>
		</li>
	</ul>
</div>
