<%@ Control Language="C#" EnableTheming="false" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PostComment" %>
<%@ Register TagPrefix="sub" Namespace="Subtext.Web.Controls" Assembly="Subtext.Web.Controls" %>
<div id="postComment">
	<h2 class="title">Post a Comment.</h2>
		<dl class="Inputs">
			<dt>
				Title:<em class="required">*</em>
			</dt>
			<dd>
				<asp:textbox id="tbTitle" runat="server" cssclass="Text" size="40" />
				<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a title" ControlToValidate="tbTitle" Display="Dynamic" />
			</dd>
			<dt>
				Name:<em class="required">*</em>
			</dt>
			<dd>
				<asp:textbox id="tbName" runat="server" cssclass="Text" size="40" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbName"
                    Display="Dynamic" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
            </dd>
			<dt>Email: <em class="smallnote">(never displayed)</em></dt>
			<dd><asp:TextBox ID="tbEmail" runat="server" AccessKey="E" size="40" />&nbsp;<em class="smallnote">(will show your <a href="http://gravatar.com/" title="gravatar" rel="external">gravatar</a>)</em><br />
                <asp:RegularExpressionValidator
                ID="vldEmail" runat="server" ControlToValidate="tbEmail" Display="dynamic" EnableClientScript="true"
                ErrorMessage="Email is not required, but it must be valid if specified." ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
            </dd>
			<dt>Website:</dt>
			<dd>
				<asp:textbox id="tbUrl" runat="server" cssclass="Text" size="40" /><br />
                <asp:RegularExpressionValidator ID="vldUrl" runat="server" ControlToValidate="tbUrl"
                    Display="dynamic" EnableClientScript="true" ErrorMessage="Url is not required, but it must be valid if specified."
                    ValidationExpression="^(https?://)?([\w-]+\.)+[\w-]+([\w-./?%&=:]*)?$"></asp:RegularExpressionValidator>
			</dd>
			<dt>Comment:<em class="required">*</em>
				<em class="smallnote">Allowed tags: a, blockquote, code, em, p, sub, super, strike, strong, u</em>
			</dt>
			<dd>
				<asp:Textbox id="tbComment" runat="server" textmode="MultiLine" rows="10" Columns="40" class="livepreview" style="width:400px;" /><br />
				<asp:RequiredFieldValidator ID="vldCommentBodyRequired" runat="server" ControlToValidate="tbComment"
                    ErrorMessage="Please enter a comment"></asp:RequiredFieldValidator>
			</dd>
			<dt>
				<sub:CompliantButton id="btnCompliantSubmit" runat="server" Text="Leave Your Mark" /> 
			</dt>
			<dd>
		        <asp:Label id="Message" runat="server" ForeColor="Red" />
			</dd>
		</dl>
		<h3>Preview Your Comment.</h3>
		<div id="commentPreview" class="livepreview content" >&nbsp;</div>	
</div>