<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.Day" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>
<%@ Import Namespace="Subtext.Framework" %>
<div class="entryList">
    <div class="date">
        <asp:HyperLink runat="server" title="Day Archive" BorderWidth="0" ID="ImageLink"><asp:Literal ID="DateTitle" runat="server" /></asp:HyperLink>
    </div>
    <asp:Repeater runat="Server" ID="DayList" OnItemCreated="PostCreated">
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
</div>
