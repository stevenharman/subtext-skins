<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Comments" %>
<a name="feedback" title="feedback anchor"></a>
<div id="comments">
	<h2>What others are saying.</h2>
	<asp:literal id="NoCommentMessage" runat="server" />
	<asp:repeater id="CommentList" runat="server" onitemcreated="CommentsCreated" onitemcommand="RemoveComment_ItemCommand">
		<itemtemplate>
		<a name="<%# Comment.Id %>"></a>
		<div class="comment<%# AuthorCssClass %>">
			<h5 class="title"><asp:literal runat="server" id="Title" /></h5>
			<div class="wrapper">
				<div class="body">
					<div class="avatar">
						<asp:Image runat="server" id="GravatarImg" visible="False" CssClass="avatar" AlternateText="Gravatar" />
						<asp:hyperlink runat="server" id="NameLink" CssClass="comment-author" /><br />
						<span class="comment-date"><%# Comment.DateCreated.ToString("MMM dd, yyy") %></span>
					</div>
					<asp:literal id="PostText" runat="server" />
					<span class="comment-footer"></span>
				</div>
			</div>
		</div>
		<div class="comment-admin" style='<%# IsEditEnabled ? "" : "display:none;" %>'>
			<a href="<%# EditUrl(Comment) %>" runat="server" title="edit comment" class="edit-comment"></a> | 
			<asp:LinkButton Runat="server" CssClass="remove-comment" ID="EditLink" CausesValidation="False" />
		</div>
		</itemtemplate>
	</asp:repeater>
</div>
