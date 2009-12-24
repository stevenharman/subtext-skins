<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.CategoryList" %>
<%@ Import Namespace = "Subtext.Framework" %>
<asp:Repeater ID="CatList" Runat="server" OnItemCreated="CategoryCreated">
	<ItemTemplate>
		<div class="links gradient entry">
			<h1 class="title"><span><asp:literal runat="server" id="Title" /></span></h1>
			<asp:repeater id="LinkList" runat="server" onitemcreated="LinkCreated">
				<headertemplate>
					<ul>
				</headertemplate>
				<itemtemplate>
					<li>
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