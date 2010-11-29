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
        <div class="section">
          <h2>Sponsors</h2>
            <div id="adzerk">
              <div id="adzerk_ad_div">
                  <!-- The Lounge Ads - script located at bottom of the page -->
              </div>
              <p id="adzerk_by">
                  <a href='http://theloungenet.com'>Ads by The Lounge</a>
              </p>
          </div>
          <div id="orcsweb">
            <a href="http://www.orcsweb.com/hosting/shared/">Managed Windows Shared Hosting</a> by OrcsWeb
          </div>
        </div>
        <div class="section feed-list"><uc1:SyndicatonLinks ID="SyndicationLinks1" runat="Server" /></div>
        <div class="section"><uc1:news id="News1" runat="server" /></div>
        <div class="section"><uc1:TagCloud ID="tagCloud" runat="server" ItemCount="20" /></div>
        <div class="section badges">
          <h2>Badges</h2>
          <div>
            <ul>
              <li><a href="http://twitter.com/stevenharman/" title="Send me a Tweet" class="twitter">stevenharman</a></li>
              <li><a href="http://subtextproject.com" title="Subtext Project Website"><img runat="server" alt="Subtext Project" src="~/images/PoweredBySubtext85x33.png" /></a></li>
              <li>
                <div id="AdSense_FireFox" class="AdSense_referrals_FF">
                  <script type="text/javascript">
                    <!--
                      google_ad_client = "pub-2574483175675865";
                      google_ad_width = 110;
                      google_ad_height = 32;
                      google_ad_format = "110x32_as_rimg";
                      google_cpa_choice = "CAAQgYOy0QEaCHt_mB0Eu3rIKOP143Q";
                    //-->
                  </script>
                  <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
                </div>
              </li>
            </ul>
          </div>
        </div>
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
<script type="text/javascript" src="http://theloungenet.com/Server/DOTNETSP/HARMAN/VERT"></script>
