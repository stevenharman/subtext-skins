<%@ Control %>
<%@ Register TagPrefix="DT" Namespace="Subtext.Web.UI.WebControls" Assembly="Subtext.Web" %>	
<%@ Register TagPrefix="uc1" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SingleColumn" Src="Controls/SingleColumn.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentComments" Src="Controls/RecentComments.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RecentPosts" Src="Controls/RecentPosts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagCloud" Src="Controls/TagCloud.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SyndicationLinks" Src="Controls/SyndicationLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="News" Src="Controls/News.ascx" %>

<div id="wrapper">
    <uc1:Header id="Header1" runat="server" />
    <div id="content">	
	     <dt:contentregion id="MPMain" runat="server" />
	  </div>
		 <div id="sidebar">		
           <div id="sidebar1">
              <div class="sb1">
                 <uc1:SyndicationLinks id="SyndicationLinks1" runat="server" />
                 <uc1:News id="News1" runat="server" /> 
                 <uc1:TagCloud ID="tagCloud" runat="server" ItemCount="20" />                 
              </div>
           </div>
           <div id="sidebar2">
              <uc1:singlecolumn id="SingleColumn1" runat="server" />
              
           </div>   
	     </div>

    <div id="bottom">
      <div class="bottom">
        <uc1:RecentPosts id="RecentPosts1" runat="server" />
        <uc1:RecentComments id="RecentComments1" runat="server" />
        <div class="bottom-right">
		   <div class="flickr">
		     <div class="clear"></div>
	       </div>
        </div>
       </div>  
    </div>
    <uc1:footer id="Footer1" runat="server" />
</div>  