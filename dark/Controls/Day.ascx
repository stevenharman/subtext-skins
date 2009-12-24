<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Day" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>
<%@ Import Namespace = "Subtext.Framework" %>
<asp:HyperLink Runat="server" height="15" Width="12" BorderWidth="0" ID="ImageLink" Visible="false"></asp:HyperLink><asp:Literal ID = "DateTitle" Runat = "server" Visible="false" />

	<asp:Repeater runat="Server" ID="DayList" OnItemCreated="PostCreated">
		<ItemTemplate>
			<div class="post">
			 <div class="post-meta">
			    <span class="post-date"><asp:label runat="server" id="postDate" /></span>
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
