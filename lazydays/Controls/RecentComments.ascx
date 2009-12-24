<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.RecentComments" %>
<h3>Recent Comments.</h3>
<div id="recentComments">
	<asp:Repeater id="feedList" Runat="server" OnItemCreated="EntryCreated">
		<HeaderTemplate>
				<ul>
		</HeaderTemplate>
		<ItemTemplate>
				<li>
					<asp:HyperLink Runat="server" id="Link" /><br />
					<span class="comment-by"><asp:Literal runat="server" id="Author" /></span>
				</li>
		</ItemTemplate>
		<FooterTemplate>
				</ul>
		</FooterTemplate>
	</asp:Repeater>
</div>