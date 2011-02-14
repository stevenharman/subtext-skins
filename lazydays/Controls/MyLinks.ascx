<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<ul class="floatRight">
	        	<li class="page_item current_page_item"><asp:hyperlink cssclass="Home" runat="server" navigateurl="~/Default.aspx" text="Home" id="HomeLink" /></li>
		    <li class="page_item"><asp:hyperlink cssclass="archives" runat="server" navigateurl="~/Archives.aspx" text="Archives"	id="Archives" /></li>
		    <li class="page_item"><asp:hyperlink cssclass="Contact" runat="server" navigateurl="~/Contact.aspx" text="Contact" id="ContactLink" /></li>
</ul>
