<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Footer" %>
<%@ Import namespace="Subtext.Framework.Configuration"%>
<%@ Register TagPrefix="uc1" TagName="RecentComments" Src="RecentComments.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentPosts" Src="RecentPosts.ascx" %>
<a name="foot"></a>
<div id="width">
	<div class="width33 floatLeft section"><uc1:RecentPosts id="RecentPosts1" runat="server" /></div>
	<div class="width33 floatLeft section"><uc1:RecentComments id="RecentComments1" runat="server" /></div>
	<div class="width33 floatRight section">
		<h3>About Me</h3>
		<p>I'm not a Leprechaun, I just play one on <strike>TV</strike> the Internet.</p>
		<p><a href="http://www.flickr.com/photos/stevenharman/2193333469/" title="Steven Harman">
			<img src="http://farm3.static.flickr.com/2108/2193340711_9d8def150b_o.jpg" alt="My profile pic!" 
			class="floatLeft" /></a>Actually, by day I am a software craftsman &amp; engineer at <a href="http://versionone.com/" 
			title="VersionOne, it's how I pay the bills.">VersionOne, Inc</a>.
		</p>
		<p>By night I'm Co-Administrator of the <a title="Subtext Project Website" 
			href="http://subtextproject.com/">Subtext Project</a>, an Open Source blog engine.</p>
		<p class="clear">For non-geek friends and family, check out my <a href="http://life.stevenharman.net" 
			title="My life blog" rel="me">other blog</a>.
		</p>
	</div>
	
	<div id="copyright" class="grey clear">
		<span class="block floatLeft">
			Copyright &copy;<%= DateTime.Now.Year %> <asp:Literal id="FooterText" runat="server" />
			| 
			<span class="admin"><a href="<%= Config.CurrentBlog.RootUrl %>admin/" title="Blog Admin">
				<img src="~/skins/lazydays/images/icons/lock.png" alt="Admin" runat="server" /></a>
			</span>
		</span>
		
		<span class="block floatRight">
		  skinned with <em>LazyDays</em> by <a href="http://stevenharman.net/" title="Geek. And proud of it.">Steven Harman</a>, 
		  based on a design by <a href="http://fullahead.org" title="Goto Fullahead">Fullahead</a> 
		  | valid <a href="http://validator.w3.org/check?uri=referer" title="Validate XHTML">XHTML</a> 
		  | should be valid <a href="http://jigsaw.w3.org/css-validator" title="Validate CSS">CSS</a>
		</span>
		
	</div>
</div>