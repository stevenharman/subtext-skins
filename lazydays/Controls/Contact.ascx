<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Contact" %>
<div id="contactForm" class="gradient entry">
	<h1 class="title"><span>Contact Me</span></h1>
		<div class="body">
			<p class="info"><asp:label id="lblMessage" runat="server" /></p>
			<h3>Twitter</h3>
			<p><a href="http://twitter.com/stevenharman/" title="Send me a Tweet" class="twitter">stevenharman</a></p>
			<h3>Send a message</h3>
			<p>
				Please use the form below if you have any comments, questions, or suggestions.
			</p>
			<dl class="inputs">
				<dt>
					Name* <asp:RequiredFieldValidator id="vldNameRequired" runat="server" 
						ControlToValidate="tbName" Display="Dynamic" 
						CssClass="error-message">Please enter your name or nickname.</asp:RequiredFieldValidator>
				</dt>
				<dd>
					<asp:textbox id="tbName" CssClass="text" runat="server" />
				</dd>
				<dt>
					Email* <asp:RequiredFieldValidator id="emailRequiredValidator" runat="server" 
						ControlToValidate="tbEmail" Display="Dynamic" 
						CssClass="error-message">Please enter your email.</asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator id="vldEmailRegex" runat="server" 
						ControlToValidate="tbEmail" Display="Dynamic" CssClass="error-message" 
						ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">
						The email address you've entered does not appear to be valid.</asp:RegularExpressionValidator>
				</dt>
				<dd>
					<asp:textbox id="tbEmail" CssClass="text" runat="server" />
				</dd>
				<dt>
					Subject
				</dt>
				<dd>
					<asp:textbox id="tbSubject" CssClass="text" runat="server" /></td>
				</dd>
				<dt>
					Message* <asp:RequiredFieldValidator id="vldMessageRequired" runat="server" 
						ControlToValidate="tbMessage" Display="Dynamic" CssClass="error-message">
						Please enter a message. Anything.</asp:RequiredFieldValidator>
				</dt>
				<dd>
					<asp:textbox id="tbMessage" runat="server" textmode="MultiLine" />
				</dd>
			</dl>
			<div class="Action">
				<asp:button id="btnSend" cssclass="Submit" runat="server" text="Leave it!" />
			</div>
		</div>

</div>