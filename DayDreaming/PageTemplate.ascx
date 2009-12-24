<%@ Control %>
<%@ Register TagPrefix="DT" Namespace="Subtext.Web.UI.WebControls" Assembly="Subtext.Web" %>	
<%@ Register TagPrefix="uc1" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="News" Src="Controls/News.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SingleColumn" Src="Controls/SingleColumn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogStats" Src="Controls/BlogStats.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MyLinks" Src="Controls/MyLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentComments" Src="Controls/RecentComments.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentPosts" Src="Controls/RecentPosts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SyndicatonLinks" Src="Controls/SyndicationLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagCloud" Src="Controls/TagCloud.ascx" %>
<script type="text/javascript">
    NiftyLoad = function(){ Nifty("div.grouping", "top", "big", "transparent"); }
</script>
<div id="container">
	<div id="header">
		<uc1:header id="Header" runat="server" />
	</div>
	<div id="menu">
	    <uc1:mylinks id="MyLinks" runat="server" />
	    <uc1:blogstats id="BlogStats" runat="server" />
	</div>
	<div id="sidebar">
	    <uc1:SyndicatonLinks ID="SyndicationLinks" runat="Server" />
	    <div class="grouping">
		    <uc1:news id="News" runat="server" />
		</div>
		<div class="grouping">
		    <uc1:TagCloud ID="tagCloud" runat="server" ItemCount="20" />
		</div>
		<div class="grouping">
		    <uc1:RecentComments id="RecentComments" runat="server" />
		</div>
		<uc1:singlecolumn id="SingleColumn" runat="server" />
		<div id="sidebar-bottom">
			&nbsp;
		</div>
	</div>
	<div id="content">
	    <div id="ad-top">
			<!-- Insert 468x60 banner advertisement -->
		</div>
		<dt:contentregion id="MPMain" runat="server" />
	</div>
	<uc1:footer id="Footer" runat="server" />
</div>
