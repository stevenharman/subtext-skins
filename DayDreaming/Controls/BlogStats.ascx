<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.BlogStats" %>
	<dl id="blogstats">
		<dt>
			Posts:
		</dt>
		<dd>
			<asp:literal id = "PostCount" runat = "server" />
		</dd>
		<dt>
			Comments:
		</dt>
		<dd>
			<asp:literal id = "CommentCount" runat = "server" />
		</dd>
		<dt>
			Trackbacks:
		</dt>
		<dd>
			<asp:literal id = "PingTrackCount" runat = "server" />
		</dd>
	</dl>
	<asp:Literal ID = "StoryCount" Runat = "server" Visible="False" />