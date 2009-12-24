<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Header" %>
<%@ Register TagPrefix="uc1" TagName="SubtextSearch" Src="SubtextSearch.ascx" %>

	<div id="title">
		<h1><asp:HyperLink id="HeaderTitle" runat="server" /></h1>
		<h2><asp:Literal id="HeaderSubTitle" runat="server" /></h2>
	</div>
	<uc1:SubtextSearch id="search" runat="server" />
	
	<img src="~/skins/lazydays/images/bg/balloons.gif" runat="server" alt="balloons" class="balloons" />
    <img src="~/skins/lazydays/images/bg/header_left.jpg" runat="server" alt="left slice" class="left" />
    <img src="~/skins/lazydays/images/bg/header_right.jpg" runat="server" alt="right slice" class="right" />
