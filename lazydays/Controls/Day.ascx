<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Day" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>
<%@ Import Namespace = "Subtext.Framework" %>
<asp:Repeater runat="Server" Runat="server" ID="DayList" OnItemCreated="PostCreated">
	<ItemTemplate>
		<div class="gradient entry">
			<h1 class="title">
				<span><asp:HyperLink  Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" /></span>
			</h1>
			<ul class="entry-links">
				<li class="permalink"><asp:Label id="permalink" runat="server" Format="MMM dd, yyyy" /></li>
				<li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
			</ul>
			<div class="body">
				<asp:literal  runat="server" id="PostText" />
			</div>
			<!--
			<div class="info">
				<uc1:PostCategoryList id="Categories" runat="server"></uc1:PostCategoryList>
			</div>
			-->
		</div>
	</ItemTemplate>
</asp:Repeater>
<asp:hyperlink runat="server" title="Day Archive" borderwidth="0" id="ImageLink" Visible=False >
<asp:literal id = "DateTitle" runat = "server" Visible=False/></asp:hyperlink>