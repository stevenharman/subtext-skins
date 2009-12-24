<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
		<ul class="navmenu">
			<li class="current_page_item">
				<asp:hyperlink runat="server" navigateurl="~/Default.aspx" text="Home" id="HomeLink" /></li>
  			<li class="page_item">
				<asp:hyperlink runat="server" navigateurl="~/Contact.aspx" text="Contact" id="ContactLink" /></li>
				<li class="page_item">
				<asp:hyperlink cssclass="Admin" runat="server" text="Admin" id="Admin" /></li>				
			<li class="page_item">
				<asp:hyperlink runat="server" navigateurl="~/Archives.aspx" text="Archives"	id="Archives" visible="False" />
			</li>
		</ul>


	

