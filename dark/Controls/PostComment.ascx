<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PostComment" %>
<div class="cmt-form">

	<h2 id="postcomment">Leave <span>a comment</span></h2>

	<p class="cmt-info">
		Please be polite and on topic. Your e-mail will never be published.
	</p>
	
			<p>
			<label for="Title">Title</label>
			<asp:textbox id="tbTitle" runat="server" cssclass="Text" />
			<asp:RequiredFieldValidator id="vldTitleRequired" runat="server" ErrorMessage="Please enter a title" ControlToValidate="tbTitle" Display="Dynamic" EnableClientScript="true" />
			</p>
			
			<p>
			<label for="Name">Name</label>
			<asp:textbox id="tbName" runat="server" />
			<asp:RequiredFieldValidator id="vldNameRequired" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbName" Display="Dynamic" EnableClientScript="true" />
			</p>	
			
			<p>
			<label for="Email">Email</label>
			<asp:textbox id="tbEmail" runat="server" />
			<asp:RegularExpressionValidator ID="vldEmail" runat="server" ControlToValidate="tbEmail" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" Display="dynamic" ErrorMessage="Email is not required, but it must be valid if specified." EnableClientScript="true" />
			</p>
		  
		  <p>
			<label for="Website">Website</label>
			<asp:textbox id="tbUrl" runat="server" />
			</p>
			
			<p>
			<label for="Comment">Comment</label>
				<asp:textbox id="tbComment" runat="server" textmode="MultiLine" />
			  <asp:RequiredFieldValidator id="vldCommentBodyRequired" runat="server" ErrorMessage="Please enter your comment" ControlToValidate="tbComment" Display="Dynamic" EnableClientScript="true" />
			</p>
			
			<p>
			<asp:checkbox id="chkRemember" runat="server" text="Remember Me?" checked="True" />
      </p>
      
      <asp:button id="btnSubmit" cssclass="Submit" runat="server" text="Submit" />

</div>