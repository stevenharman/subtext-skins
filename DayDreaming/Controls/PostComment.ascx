<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PostComment" %>
<%@ Register TagPrefix="sub" Namespace="Subtext.Web.Controls" Assembly="Subtext.Web.Controls" %>
	<div id="postComment">
		<h2 class="title">Leave Your Comment</h2>
		
			<dl class="Inputs">
				<dt>
					Title<em class="Required">*</em>
				</dt>
				<dd>
					<asp:textbox id="tbTitle" runat="server" CssClass="longBox" />
					<asp:RequiredFieldValidator id="vldTitleRequired" runat="server" ErrorMessage="Please enter a title" ControlToValidate="tbTitle" Display="Dynamic" EnableClientScript="true" />
				</dd>
				<dt>
					Name<em class="Required">*</em>
				</dt>
				<dd>
					<asp:textbox id="tbName" runat="server" CssClass="longBox" />
					<asp:RequiredFieldValidator id="vldNameRequired" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbName" Display="Dynamic" EnableClientScript="true" />
				</dd>
				<dt>
					Email (never displayed)
				</dt>
				<dd>
					<asp:textbox id="tbEmail" runat="server" CssClass="longBox" />&nbsp;(will show your <a href="http://gravatar.com/" title="gravatar" rel="external">gravatar</a>)<br />
					<asp:RegularExpressionValidator ID="vldEmail" runat="server" ControlToValidate="tbEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" Display="dynamic" ErrorMessage="Email is not required, but it must be valid if specified." EnableClientScript="true" />
				</dd>
				<dt>
					Url 
				</dt>
				<dd>
					<asp:textbox id="tbUrl" runat="server" CssClass="longBox" />
					<asp:RegularExpressionValidator ID="vldUrl" runat="server" ControlToValidate="tbUrl" ValidationExpression="^(https?://)?([\w-]+\.)+[\w-]+([\w-./?%&=:]*)?$" Display="dynamic" ErrorMessage="Url is not required, but it must be valid if specified." EnableClientScript="true" />
				</dd>
				<dt>
					Comment<em class="Required">*</em> 
				</dt>
				<dd>
					<asp:textbox id="tbComment" runat="server" textmode="MultiLine" Rows="10" Columns="40" CssClass="livepreview" /><br />
					<asp:RequiredFieldValidator id="vldCommentBodyRequired" runat="server" ErrorMessage="Please enter your comment" ControlToValidate="tbComment" Display="Dynamic" EnableClientScript="true" />
				</dd>
				<dt>
				    <sub:CompliantButton id="btnCompliantSubmit" runat="server" Text="Leave It!" />
				</dt>
				<dd>
		            <asp:Label id="Message" runat="server" ForeColor="Red" />
			    </dd>
			</dl>
			<h3>Preview Your Comment.</h3>
		    <div class="comment"><div id="commentPreview" class="livepreview content" >&nbsp;</div></div>
	</div>