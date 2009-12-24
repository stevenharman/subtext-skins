<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Header" %>
<%@ Register TagPrefix="uc1" TagName="SubtextSearch" Src="SubtextSearch.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MyLinks" Src="MyLinks.ascx" %>
<div id="header">

	<div class="search">
		<uc1:SubtextSearch id="search" runat="server" />
	</div>

    <uc1:MyLinks id="mylinks" runat="server" />

	<h1>
     <asp:HyperLink id="HeaderTitle" runat="server" />
	</h1>

</div>