<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.Header" %>
<%@ Register TagPrefix="uc1" TagName="SubtextSearch" Src="SubtextSearch.ascx" %>

    <div class="search">
        <uc1:SubtextSearch id="search" runat="server" />
    </div>
    <div class="titleContainer">
        <h1><asp:HyperLink id="HeaderTitle" runat="server" /></h1>
	    <h3><asp:Literal id="HeaderSubTitle" runat="server" /></h3>
	</div>
	  

