<%@ Control Language="C#" EnableTheming="false" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.GalleryThumbNailViewer"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Import Namespace="Image=Subtext.Framework.Components.Image" %>
<div id="gallery" class="gradient entry">
    <h1 class="title"><span><asp:Literal ID="GalleryTitle" runat="server" /></span></h1>
    <div class="body">
		<p><asp:Literal ID="Description" runat="server" /></p>
        <asp:DataList ID="ThumbNails" runat="server" OnItemCreated="ImageCreated" RepeatColumns="5"
            RepeatDirection="Vertical">
            <ItemTemplate>
                <div class="thumbnail">
					<a href="<%# BaseImagePath + ((Image) Container.DataItem).ResizedFile %>" 
				        title="<%# ((Image) Container.DataItem).Title %>" 
						rel="lightbox[<%# ((Image) Container.DataItem).CategoryID %>]">
				        <img src="<%# BaseImagePath + ((Image) Container.DataItem).ThumbNailFile %>" 
				            alt="<%# ((Image) Container.DataItem).Title %>" />    
				    </a>
				</div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
