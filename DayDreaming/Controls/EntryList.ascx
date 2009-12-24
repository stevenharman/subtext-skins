<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.EntryList" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>
<%@ Import Namespace="Subtext.Framework" %>
<div class="entryList">
    <div class="title">
        <asp:Literal ID="EntryCollectionTitle" runat="server" />
    </div>
    <div class="description">
        <asp:Literal ID="EntryCollectionDescription" runat="server" />
    </div>
    <asp:Repeater runat="server" ID="Entries" OnItemCreated="PostCreated" >
        <ItemTemplate>
            <div class="entry">
                <div class="entry-title">
                    <asp:HyperLink runat="server" ID="editLink" /><asp:HyperLink runat="server" ID="TitleUrl" />
                </div>
                <div class="entry-date">
                    Posted on
                    <asp:Label ID="postDate" runat="server" />
                </div>
                <div class="body">
                    <asp:Literal runat="server" ID="PostText" />
                </div>
                <div class="info">
                    <asp:Label ID="commentCount" runat="server" CssClass="entry-comments" />
                    <uc1:PostCategoryList ID="Categories" runat="server" />
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="more">
        <asp:HyperLink runat="server" ID="EntryCollectionReadMoreLink" />
    </div>
</div>
