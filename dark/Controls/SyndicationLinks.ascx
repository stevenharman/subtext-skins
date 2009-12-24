<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<h2>RSS Feeds</h2>
<div class="rssfeeds">
	<p class="rss-entries"><asp:hyperlink id="XMLLink" runat="server" text="RSS 2.0 Feed" /><br/>RSS 2.0</p>
	<p class="rss-comments"><asp:hyperlink id="AtomLink" runat="server" text="Atom 1.0 Feed" /><br/>Atom 1.0</p>
</div>