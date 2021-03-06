﻿<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.TagCloud" %>
<%@ Import Namespace = "Subtext.Framework" %>
<h2>Tag Cloud</h2>
<div>	
	<asp:Repeater Runat="server" ID="Tags" OnItemDataBound="Tags_ItemDataBound">
		<HeaderTemplate>
				<ul id="tag-cloud">
		</HeaderTemplate>
		<ItemTemplate>
			<li>
				<asp:HyperLink  Runat="server" ID="TagUrl" CssClass='<%# Eval("Weight", "tag-style-{0} tag-item") %>' 
					Text='<%# UrlDecode(Eval("TagName")) %>' ToolTip='<%# UrlDecode(Eval("TagName")) + " (" + Eval("Count") + ")" %>'/>
			</li>
		</ItemTemplate>
		<FooterTemplate>
			</ul><br />
		</FooterTemplate>
	</asp:Repeater>
	<asp:HyperLink runat="server" id="DefaultTagLink">More Tags...</asp:HyperLink>
</div>	