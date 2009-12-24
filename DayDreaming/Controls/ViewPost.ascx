<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.ViewPost" %>
<%@ Register TagPrefix="uc1" TagName="previousNext" Src="PreviousNext.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>

<uc1:previousNext id="previousNext" runat="server" />

<div class="entry">
	<div class="entry-title">
		<asp:HyperLink  Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" />
	</div>
	<div class="entry-date">Posted on <asp:Label ID="date" runat="server" /></div>
	<div class="body">
		<asp:literal id="Body" runat="server" />
	</div>
	<div class="info">
	    <asp:Label ID="commentCount" runat="server" CssClass="entry-comments" />
	    <uc1:PostCategoryList id="Categories" runat="server"></uc1:PostCategoryList>
	</div>
	<div class="trackback">
		<asp:literal id="PingBack" runat="server" />
		<asp:literal id="TrackBack" runat="server" />
	</div>
</div>
