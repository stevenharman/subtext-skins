Entry.FullyQualifiedUrlEntry.FullyQualifiedUrl<%@ Control Language="C#" EnableTheming="false" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.CurrentEntryControl" %>
<div class="share">
	<h4>If you liked this post, share it with others!</h4>
	<ul>
		<!--<li>
			<script src="http://digg.com/tools/diggthis.js" type="text/javascript"></script>
		</li>-->
		<li>
			<script type="text/javascript">reddit_url='<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>'</script>
			<script type="text/javascript" src="http://reddit.com/button.js?t=1"></script>
		</li>
		<li>
			<a href="http://www.dotnetkicks.com/kick/?url=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>">
				<img border="0" alt="kick it on DotNetKicks.com"  
					src="http://www.dotnetkicks.com/Services/Images/KickItImageGenerator.ashx?url=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>" />
			</a>
		</li>
	</ul>
</div>
<script src="http://feeds.feedburner.com/~s/stevenharman?i=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>" 
	type="text/javascript" charset="utf-8"></script>
