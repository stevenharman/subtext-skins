<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.MoreResultsLikeThis" %>

  
        <span class="pagetitle"><asp:Literal ID="keywords" runat="server" /></span>
        <a href="#related-results" class="close"></a>
    

       <div class="navigation clearfix">
			<div class="alignleft"></div>
			<div class="alignright"></div>
		</div>
     <div class="content">
         <p>
            It looks like you found this post via a search engine result.<br />
            Here are a few other posts you might find interesting:
         </p>
	    <asp:Repeater id="Links" runat="server" OnItemCreated="MoreReadingCreated">
		    <HeaderTemplate>
			   
		    </HeaderTemplate>
		    <ItemTemplate>
             <div class="post type-post hentry">
             <h2><asp:HyperLink Target="_blank" Runat="server" ID="Link" /></h2>
              <asp:Literal Runat="server" ID="DisplayType" />
				        <asp:LinkButton Runat="server" ID="EditReadingLink" CausesValidation="False" />	
             </div>
			       
				        
				        							
		            	
	        </ItemTemplate>
		    <FooterTemplate>
			    
			    <a id="searchMore" class="more-results" runat="server">Click for all Search Results for </a>
		    </FooterTemplate>
	    </asp:Repeater>

         <div class="navigation clearfix">
			<div class="alignleft"></div>
			<div class="alignright"></div>
		</div>
	</div>
