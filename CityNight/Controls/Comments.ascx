<%@ Control Language="C#" EnableTheming="false" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Comments" %>
<a name="feedback"></a>
<div id="comments">
	<h2 id="commentsTitle">Comments on this post.</h2>
	<asp:literal id="NoCommentMessage" runat="server" />
	<asp:repeater id="CommentList" runat="server" onitemcreated="CommentsCreated" onitemcommand="RemoveComment_ItemCommand">
		<itemtemplate>
		<a name="<%# Comment.Id %>"></a>
		<div class="comment<%# AuthorCssClass %>">
			<div class="title">
				<asp:literal runat="server" id="Title" />
			</div>
			<div class="postedBy">
				<span>Posted by <asp:hyperlink runat="server" id="NameLink" /> on <asp:literal id="PostDate" runat="server" />
				</span>
			</div>
			<div class="content">
			    <asp:Image runat="server" id="GravatarImg" visible="False" CssClass="avatar" AlternateText="Gravatar" />
				<asp:literal id="PostText" runat="server" />
			</div>
			<asp:linkbutton runat="server" id="EditLink" CssClass="removeLink" Visible="false" CausesValidation="False" />
		</div>
		</itemtemplate>
	</asp:repeater>
</div>
