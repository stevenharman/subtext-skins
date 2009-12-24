<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Contact" %>
<div id="contactForm">
	<h2 class="title">Contact</h2>
	<div class="info"><asp:label id="lblMessage" runat="server" /></div>
		<div class="body">
			<p>
				Please use the form below if you have any comments, questions, or suggestions.
			</p>
			<dl class="Inputs">
				<dt>
					Name<asp:RequiredFieldValidator id="vldNameRequired" runat="server" 
						ErrorMessage="Please enter your name" ControlToValidate="tbName" 
						Display="Dynamic">*</asp:RequiredFieldValidator>
				</dt>
				<dd>
					<asp:textbox id="tbName" CssClass="longBox" runat="server" />
				</dd>
				<dt>
					Email<asp:RequiredFieldValidator id="emailRequiredValidator" runat="server" 
						ErrorMessage="Please enter your email address" ControlToValidate="tbEmail" 
						Display="Dynamic">*</asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator id="vldEmailRegex" runat="server" 
						ErrorMessage="The email address you've entered does not appear to be valid." 
						ControlToValidate="tbEmail" Display="Dynamic" 
						ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">*</asp:RegularExpressionValidator>
				</dt>
				<dd>
					<asp:textbox id="tbEmail" CssClass="longBox" runat="server" />
				</dd>
				<dt>
					Subject
				</dt>
				<dd>
					<asp:textbox id="tbSubject" CssClass="longBox" runat="server" />
				</dd>
				<dt>
					Message<asp:RequiredFieldValidator id="vldMessageRequired" runat="server" 
						ErrorMessage="Please enter a message. Anything." ControlToValidate="tbMessage" 
						Display="Dynamic">*</asp:RequiredFieldValidator>
				</dt>
				<dd>
					<asp:textbox id="tbMessage" runat="server" textmode="MultiLine" Rows="10" Columns="40" />
				</dd>
			</dl>
			<div class="Action">
				<asp:button id="btnSend" cssclass="Submit" runat="server" text="Send" />
			</div>
		</div>
</div>