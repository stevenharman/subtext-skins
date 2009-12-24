<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.BlogStats" %>
<ul class="floatLeft stats">
	<li>Posts: <asp:literal id="PostCount" runat="server" /></li>
	<li>Comments: <asp:literal id="CommentCount" runat="server" /></li>
	<li>Trackbacks: <asp:literal id="PingTrackCount" runat="server" /></li>
</ul>
<asp:Literal ID="StoryCount" Runat="server" Visible="False" />