<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.TagCloud" %>
<%@ Import Namespace = "Subtext.Framework" %>
<div class="gradient entry">
	<h1 class="title"><span>Tag Cloud</span></h1>
	<asp:Repeater Runat="server" ID="Tags" OnItemDataBound="Tags_ItemDataBound">
		<HeaderTemplate>
			<ul id="tag-cloud-full">
		</HeaderTemplate>
		<ItemTemplate>
				<li>
					<asp:HyperLink  Runat="server" ID="TagUrl" CssClass='<%# Eval("Weight", "tag-style-{0} tag-item") %>' 
						Text='<%# UrlDecode(Eval("TagName")) %>' ToolTip='<%# UrlDecode(Eval("TagName")) + " (" + Eval("Count") + ")" %>'/>
				</li>
		</ItemTemplate>
		<FooterTemplate>
			</ul>
		</FooterTemplate>
	</asp:Repeater>
</div>