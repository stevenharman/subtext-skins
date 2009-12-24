<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.GalleryThumbNailViewer"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Import Namespace="Image=Subtext.Framework.Components.Image" %>
<div id="gallery">
    <div class="title">
        <asp:Literal ID="GalleryTitle" runat="server" /></div>
    <div class="description">
        <asp:Literal ID="Description" runat="server" /></div>
    <div class="thumbnails">
        <asp:DataList ID="ThumbNails" runat="server" OnItemCreated="ImageCreated" RepeatColumns="3"
            RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="dropshadow">
                    <div class="innerbox">
                        <div class="thumbnail">
							<a href="<%# BaseImagePath + ((Image) Container.DataItem).ResizedFile %>" 
						        title="<%# ((Image) Container.DataItem).Title %>" 
								rel="lightbox[<%# ((Image) Container.DataItem).CategoryID %>]">
						        <img src="<%# BaseImagePath + ((Image) Container.DataItem).ThumbNailFile %>" 
						            alt="<%# ((Image) Container.DataItem).Title %>" />    
						    </a>
						</div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>