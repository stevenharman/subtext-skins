<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.CategoryList" %>
<%@ Import Namespace = "Subtext.Framework" %>
<asp:Repeater ID="CatList" Runat="server" OnItemCreated="CategoryCreated">
	<ItemTemplate>
		<div class="grouping">
			<div class="title"><asp:literal runat="server" id="Title" /></div>
			<asp:repeater id="LinkList" runat="server" onitemcreated="LinkCreated">
				<headertemplate>
					<ul>
				</headertemplate>
				<itemtemplate>
					<li>
					    <asp:HyperLink runat="server" id="RssLink" ImageUrl="~/Skins/DayDreaming/Images/feedIcon_orange_10.gif" Text="[rss]" Visible="False" CssClass="feedIcon" />
						<asp:hyperlink runat="server" id="Link" />
					</li>
				</itemtemplate>
				<footertemplate>
					</ul>
				</footertemplate>
			</asp:repeater>
		</div>
	</ItemTemplate>
</asp:Repeater>