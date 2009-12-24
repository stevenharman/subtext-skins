<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Comments" %>
<a name="feedback" title="feedback anchor"></a>
<div class="cmt-form">
	<p class="cmt-info">
		You can Leave a comment here!
	</p>
</div>
<div class="cmt-form">
	<h2 id="comments">
		Comments
	</h2>
</div>
<ol id="commentlist">
	<asp:repeater id="CommentList" runat="server" onitemcreated="CommentsCreated" onitemcommand="RemoveComment_ItemCommand">
		<itemtemplate>
		<li class="alt">
		<div class="cmt-meta">
			<span class="cmt-author"><asp:hyperlink runat="server" id="NameLink" /></span>
			<span class="cmt-date"><asp:literal id="PostDate" runat="server" /></span>
		</div>
		<div class="cmt-main">
		    <asp:Image runat="server" id="GravatarImg" visible="False" CssClass="cmt-gravatar" AlternateText="Gravatar" />
		  <div class="cmt-text">
				<asp:literal id="PostText" runat="server" />
			</div>
		</div>	
    </li> 
		</itemtemplate>
		<AlternatingItemTemplate>
	  <li class="">
		<div class="cmt-meta">
			<span class="cmt-author"><asp:hyperlink runat="server" id="NameLink" /></span>
			<span class="cmt-date"><asp:literal id="PostDate" runat="server" /></span>
		</div>
		<div class="cmt-main">
		    <asp:Image runat="server" id="GravatarImg" visible="False" CssClass="cmt-gravatar" AlternateText="Gravatar" />
		  <div class="cmt-text">
				<asp:literal id="PostText" runat="server" />
			</div>
		</div>	
    </li> 
		</AlternatingItemTemplate>
	</asp:repeater>
</ol>