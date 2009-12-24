<%@ Control Language="C#" EnableTheming="false" Inherits="Subtext.Web.UI.Controls.Footer" %>
<%@ Import namespace="Subtext.Framework.Configuration"%>
	<div class="copyright">
		Copyright &copy; 2005-2007 <asp:Literal id="FooterText" runat="server" />
	</div>
	<div class="skinnedBy">
	    Skinned with CityNight, by <a href="http://stevenharman.net/">Steven Harman</a>. <!-- Get this skin from <a href="http://subtextskins.com/Default.aspx?tabid=156">SubtextSkins.com</a>. -->
	</div>
	<div class="admin">
		<a href="<%= Config.CurrentBlog.RootUrl %>admin/" title="Admin"></a>
	</div>
