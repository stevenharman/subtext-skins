<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Comments" %>
<a name="feedback" title="feedback anchor"></a>
<div id="commentList">
	<h2>Comments</h2>
	<asp:literal id="NoCommentMessage" runat="server" />
	<asp:repeater id="CommentList" runat="server" OnItemCreated="CommentsCreated" OnItemCommand="RemoveComment_ItemCommand">
		<itemtemplate>
		<a name="<%# Comment.Id %>"></a>
		<div class="comment<%# AuthorCssClass %>">
		    <div class="title">
				<asp:literal runat="server" id="Title" />
			</div>
			<div class="content">
			    <asp:Image runat="server" id="GravatarImg" visible="False" CssClass="avatar" AlternateText="Gravatar" />
				<asp:literal id="PostText" runat="server" />
			</div>
			<div class="comment-author">
				<span>Left by <asp:hyperlink runat="server" id="NameLink" /> on <asp:literal id="PostDate" runat="server" /></span>
			</div>
			<asp:linkbutton runat="server" id="EditLink" causesvalidation="False" />
		</div>
		</itemtemplate>
	</asp:repeater>
</div>
