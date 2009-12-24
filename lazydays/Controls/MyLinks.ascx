<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<ul class="floatRight">
	<li><st:NavigationLink Runat="server" NavigateUrl="~/blog/Default.aspx" Text="Home" ID="HomeLink" ActiveCssClass="current" /></li>
	<li><st:NavigationLink Runat="server" NavigateUrl="~/blog/Archives.aspx" Text="Archives" ID="Archives" ActiveCssClass="current" /></li>
	<li><st:NavigationLink Runat="server" NavigateUrl="~/blog/Contact.aspx" Text="Contact Me" ID="ContactLink" ActiveCssClass="current" /></li>
</ul>
