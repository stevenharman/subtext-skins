<%@ Import namespace="Subtext.Framework.Components"%>
<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.CategoryList" %>
<%@ Import Namespace = "Subtext.Framework" %>
<asp:Repeater id="CatList" runat="server" OnItemCreated="CategoryCreated">
	<ItemTemplate>
		<div class="links <%# ((LinkCategory) Container.DataItem).Title.Replace(" ", string.Empty) %>">
			<div class="title"><asp:literal runat="server" id="Title" />.</div>
			<asp:repeater id="LinkList" runat="server" OnItemCreated="LinkCreated">
				<headertemplate>
					<ul>
				</headertemplate>
				<itemtemplate>
					<li>
						<asp:HyperLink runat="server" id="RssLink" ImageUrl="/Skins/CityNight/Images/feedIcon_orange_10.gif" Text="[rss]" Visible="False" />
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