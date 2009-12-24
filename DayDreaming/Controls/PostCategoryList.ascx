<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.PostCategoryList" %>
<%@ Import Namespace = "Subtext.Framework" %>
<span class="entry-categories">
    <asp:Repeater ID="CatList" Runat="server" OnItemCreated="CategoryCreated">
	    <HeaderTemplate>
		    Filed Under [
	    </HeaderTemplate>
	    <ItemTemplate>
		    <asp:HyperLink Runat="server" ID="Link" />
	    </ItemTemplate>
	    <FooterTemplate>
		    ]
	    </FooterTemplate>
    </asp:Repeater>
</span>