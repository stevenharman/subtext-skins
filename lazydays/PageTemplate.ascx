<%@ Control %>
<%@ Register TagPrefix="DT" Namespace="Subtext.Web.UI.WebControls" Assembly="Subtext.Web" %>	
<%@ Register TagPrefix="uc1" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="News" Src="Controls/News.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogStats" Src="Controls/BlogStats.ascx" %>
<%@ Register TagPrefix="uc1" TagName="MyLinks" Src="Controls/MyLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SyndicatonLinks" Src="Controls/SyndicationLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagCloud" Src="Controls/TagCloud.ascx" %>
<!-- CONTENT: Holds all site content except for the footer.  This is what causes the footer to stick to the bottom -->
<div id="content">
  <!-- HEADER: Holds title, subtitle and header images -->
  <div id="header">
    <uc1:header id="Header1" runat="server" />
  </div>
  <!-- MAIN MENU: Top horizontal menu of the site.  Use class="here" to turn the current page tab on -->
  <div id="mainMenu">
    <uc1:blogstats id="BlogStats1" runat="server" />
    <uc1:mylinks id="MyLinks1" runat="server" />
  </div>
  <!-- PAGE CONTENT BEGINS: This is where you would define the columns (number, width and alignment) -->
  <div id="page">
    <!-- 25 percent width column, aligned to the left -->
      <div class="width25 floatLeft leftColumn">
      <div class="sideMenu">
        <div id="about-me" class="section">
          <h2>About the author</h2>
          <div>
            <p>
              <img src="http://www.gravatar.com/avatar/3585262a963f04894a749aabccd99a86?s=90" 
                alt="Steven Harman" class="left"/>steven harman :: makes sweet software with computers!
            </p>
            <p>For recent posts and more about me, <a href="#foot" title="Get more!">scroll to the bottom</a>.</p>
          </div>
        </div>
        <div class="section ads">
          <h2>Sponsors</h2>
          <div class="ad orcsweb">
            <a href="http://www.orcsweb.com/hosting/shared/">Managed Windows Shared Hosting</a> by OrcsWeb
          </div>
        </div>
        <div class="section feed-list"><uc1:SyndicatonLinks ID="SyndicationLinks1" runat="Server" /></div>
        <div class="section"><uc1:news id="News1" runat="server" /></div>
        <div class="section badges">
          <h2>Badges</h2>
            <ul>
              <li><a href="http://twitter.com/stevenharman" title="Stalk me! Or I'll stalk you." class="twitter">stevenharman</a></li>
              <li><a href="https://github.com/stevenharman" title="Me creating and destroying code, in the open." class="github">stevenharman</a></li>
              <li><a href="http://subtextproject.com" title="Subtext Project Website"><img runat="server" alt="Subtext Project" src="~/images/PoweredBySubtext85x33.png" /></a></li>
            </ul>
        </div>
        <div class="section"><uc1:TagCloud ID="tagCloud" runat="server" ItemCount="20" /></div>
      </div>
    </div>
    <!-- 75 percent width column, aligned to the right -->
    <div class="width75 floatRight rightColumn">
      <dt:contentregion id="MPMain" runat="server" />
    </div>
  </div>
</div>	
<!-- FOOTER: Site footer for links, copyright, etc. -->
<div id="footer">
  <uc1:footer id="Footer1" runat="server" />
</div>
