<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PostComment" %>
<%@ Register TagPrefix="sub" Namespace="Subtext.Web.Controls" Assembly="Subtext.Web.Controls" %>
<%@ Register TagPrefix="sub" Namespace="Subtext.Web.Controls.Captcha" Assembly="Subtext.Web.Controls" %>

<div id="postComment">
	<h2 class="title">What do you have to say?</h2>
	<dl class="inputs">
		<dt>
			Title<em class="Required">*</em> <asp:RequiredFieldValidator id="vldTitleRequired" runat="server" 
				ErrorMessage="Please enter a title" ControlToValidate="tbTitle" Display="Dynamic" EnableClientScript="true" CssClass="error-message" />
		</dt>
		<dd>
			<asp:textbox id="tbTitle" runat="server" CssClass="text" />
		</dd>
		<dt>
			Name<em class="Required">*</em> <asp:RequiredFieldValidator id="vldNameRequired" runat="server" 
				ErrorMessage="Please enter your name" ControlToValidate="tbName" Display="Dynamic" EnableClientScript="true" CssClass="error-message" />
		</dt>
		<dd>
			<asp:textbox id="tbName" runat="server" CssClass="text" />
		</dd>
		<dt>
			Email <span class="note">(never displayed)</span> <asp:RegularExpressionValidator ID="vldEmail" runat="server" ControlToValidate="tbEmail" 
				ValidationExpression="^.*?@.+\..+$" Display="dynamic" ErrorMessage="Email is not required, but it must be valid if specified." 
				EnableClientScript="true" CssClass="error-message" />
		</dt>
		<dd>
			<asp:textbox id="tbEmail" runat="server" CssClass="text email" /> <span class="note">(will show your <a title="gravatar" 
				href="http://gravatar.com/">gravatar</a>)</span>
		</dd>
		<dt>
			Url <asp:RegularExpressionValidator ID="vldUrl" runat="server" ControlToValidate="tbUrl" 
				ValidationExpression="^(https?://)?([\w-]+\.)+[\w-]+([\w-./?%&=:]*)?$" Display="dynamic" 
				ErrorMessage="Url is not required, but it must be valid if specified." EnableClientScript="true" CssClass="error-message" />
		</dt>
		<dd>
			<asp:textbox id="tbUrl" runat="server" CssClass="text" />
		</dd>
		<dt>
			Comment<em class="Required">*</em> <asp:RequiredFieldValidator id="vldCommentBody" runat="server" 
				ErrorMessage="Please enter a comment" ControlToValidate="tbComment" EnableClientScript="true" CssClass="error-message" />
		</dt>
		<dd>
			<asp:textbox id="tbComment" runat="server" textmode="MultiLine" />
		</dd>
	</dl>
	<sub:SubtextCaptchaControl id="captcha" runat="server" ErrorMessage="Please enter the correct word" />
	<sub:CompliantButton id="btnCompliantSubmit" CssClass="Submit" runat="server" Text="Submit" CausesValidation="true" />
	<asp:Label id="Message" runat="server" CssClass="error-message" />
</div>