<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.ViewPost" %>
<%@ Register TagPrefix="uc1" TagName="previousNext" Src="PreviousNext.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>


			<uc1:PreviousNext id="PreviousNext" runat="server" Visible="false" />
			<div class="post">
			 <div class="post-meta">
          <span class="post-date"><asp:label runat="server" id="date" /></span>
			    <span class="post-cmts"><uc1:PostCategoryList id="Categories" runat="server"></uc1:PostCategoryList></span>
			    <span class="post-edit"><asp:HyperLink  Runat="server" ID="editLink" />Edit this post</span>
			 </div>
			 
			 <div class="post-main">
				<h2 class="post-title">
					<asp:hyperlink runat="server" id="TitleUrl" />
				</h2>
				<div class="post-entry">
					<asp:literal id="Body" runat="server" />
					<asp:Literal runat="server" ID="PostDescription" Visible="false" />
				</div>
			 </div>	
			</div>
