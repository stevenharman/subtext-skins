<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.ViewPicture" %>
<div class="singleImage">
    <div class="title">
        <asp:Literal ID="Title" runat="server" /></div>
    <div class="dropshadow">
        <div class="innerbox">
            <asp:Image ID="GalleryImage" runat="server" />
        </div>
    </div>
    <div class="info">
        <asp:HyperLink ID="ReturnUrl" Text="Return to Gallery" runat="server" />&nbsp;|
        <asp:HyperLink ID="OriginalImage" Text="Original Image" runat="server" Target="_New" />
    </div>
</div>
