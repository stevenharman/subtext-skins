<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.SubtextSearch" %>

<div id="search">
    <asp:UpdateProgress ID="searchProgress" runat="server">
		<ProgressTemplate>
			<div id="search-progress">
			</div>
		</ProgressTemplate>
	</asp:UpdateProgress>
	    <div id="search-box">
            <asp:TextBox id="txtSearch" runat="server" CssClass="searchterm" />&nbsp;<asp:Button id="btnSearch" runat="server" CssClass="searchButton" Text="Search" CausesValidation="False" />
	    </div>
	<asp:UpdatePanel ID="searchUpdate" runat="server" UpdateMode="conditional">
		<Triggers>
			<asp:AsyncPostBackTrigger ControlID="btnSearch" />
		</Triggers>
		<ContentTemplate>
            <asp:Repeater id="SearchResults" runat="server">
	            <HeaderTemplate>
		            <div id="searchResults">
			            <h5>Results</h5>
			            <div class="searchClose">
			                <a href="<%# HttpContext.Current.Request.Url %>" title="Close Results">[x]</a>
			            </div>
			            <ul>
	            </HeaderTemplate>
	            <ItemTemplate>
				            <li><a href="<%# DataBinder.Eval(Container.DataItem, "url") %>"><%# DataBinder.Eval(Container.DataItem, "Title") %></a></li>
	            </ItemTemplate>
	            <FooterTemplate>
			            </ul>
		            </div>
	            </FooterTemplate>
            </asp:Repeater>
         </ContentTemplate>
    </asp:UpdatePanel>
</div>