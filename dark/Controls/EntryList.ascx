<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.EntryList" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>
<%@ Import Namespace = "Subtext.Framework" %>

	<asp:Repeater runat="Server" id="Entries" OnItemCreated="PostCreated">
		<ItemTemplate>
			<div class="post">
			 <div class="post-meta">
			    <span class="post-cmts"><uc1:PostCategoryList id="Categories" runat="server"></uc1:PostCategoryList></span>
			    <span class="post-edit"><asp:HyperLink  Runat="server" ID="editLink" />Edit this post</span>
			 </div>
			 
			 <div class="post-main">
				<h2 class="post-title">
					<asp:hyperlink runat="server" id="TitleUrl" />
				</h2>
				<div class="post-entry">
					<asp:literal  runat="server" id="PostText" />
				</div>
			 </div>	
			</div>
		</ItemTemplate>
	</asp:Repeater>
	<div class="pages">
			<span class="newer"><asp:hyperlink runat="server" id="EntryCollectionReadMoreLink" /></span>
	</div>

