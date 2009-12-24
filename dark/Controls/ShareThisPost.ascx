<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.CurrentEntryControl" %>
<div class="share">
	<span class="shareIcon">Share this Post: </span>
	<ul>
		<li>
			<a href="mailto:?body=Thought+you+would+find+this+interesting.+<%#UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog))%>&amp;subject=<%# UrlEncode(Entry.Title) %>" title="Email it">email it</a>
		</li>
		<li>
			<a href="http://del.icio.us/login?url=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>;title=<%# UrlEncode(Entry.Title) %>" title="Bookmark it at del.icio.us">bookmark It</a>
		</li>
		<li>
			<a href="http://digg.com/submit?url=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>&amp;phase=2" title="digg it">digg It</a>
		</li>
		<li>
			<a href="http://www.dotnetkicks.com/submit/?url=<%# UrlEncode(Url.EntryUrl(Entry).ToFullyQualifiedUrl(Blog)) %>&amp;title=<%# UrlEncode(Entry.Title) %>" title="kick it">kick It</a>
		</li>
	</ul>
</div>
