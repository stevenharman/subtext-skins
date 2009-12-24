<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.Day" %>
<%@ Import Namespace = "Subtext.Framework" %>
 <div class="day">
	<asp:Repeater runat="Server" Runat="server" ID="DayList" OnItemCreated="PostCreated">
		<ItemTemplate>
			<div class="post">
				<div class="title">
					<asp:HyperLink  Runat="server" ID="editLink" /> <asp:HyperLink  Runat="server" ID="TitleUrl" />
				</div>
				<ul class="info">
					<li class="permalink"><asp:Label id="permalink" runat="server" Format="MMM dd, yyyy" /></li>
					<li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
				</ul>
				<div class="body">
					<asp:literal  runat="server" id="PostText" />
				</div>
			</div>
		</ItemTemplate>
	</asp:Repeater>
	<asp:hyperlink runat="server" title="Day Archive" borderwidth="0" id="ImageLink" Visible=False >
	<asp:literal id = "DateTitle" runat = "server" Visible=False/></asp:hyperlink>
</div>