<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Contact" %>

<div class="cmt-form">

	<h2 id="postcomment">Contact</h2>

	<p class="cmt-info">
	  Please use the form below if you have any comments, questions, or suggestions
	</p>
			
			<p>
			<label for="Name">Name</label>
			<asp:textbox id="tbName" runat="server" />
			<asp:RequiredFieldValidator id="vldNameRequired" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbName" Display="Dynamic"> *Please enter your name or nickname.</asp:RequiredFieldValidator>
			</p>	
			
			<p>
			<label for="Email">Email</label>
			<asp:textbox id="tbEmail" runat="server" />
			<asp:RegularExpressionValidator id="vldEmailRegex" runat="server" ErrorMessage="The email address you've entered does not appear to be valid." ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">*</asp:RegularExpressionValidator>
			</p>
		  
		  <p>
			<label for="Subject">Subject</label>
			<asp:textbox id="tbSubject" runat="server" />
			</p>
			
			<p>
			<label for="Comment">Message</label>
				<asp:textbox id="tbMessage" runat="server" textmode="MultiLine" />
        <asp:RequiredFieldValidator id="vldMessageRequired" runat="server" ErrorMessage="Please enter a message" ControlToValidate="tbMessage" Display="Dynamic"> *Please enter a message. Anything.</asp:RequiredFieldValidator>
			</p>
      
      <asp:button id="btnSend" runat="server" text="Send" />

</div>