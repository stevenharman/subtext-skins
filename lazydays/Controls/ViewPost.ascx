<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.ViewPost" %>
<%@ Register TagPrefix="uc1" TagName="previousNext" Src="PreviousNext.ascx" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>

<uc1:previousNext id="previousNext" runat="server" />

<div class="gradient entry">
    <h1 class="title">
        <span><asp:HyperLink  Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" /></span>
    </h1>
    <ul class="entry-links">
        <li class="permalink"><asp:Label id="date" runat="server" Format="MMM dd, yyyy" /></li>
        <li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
        <li class="printIcon"><a href="javascript:window.print();">Print</a></li>	
    </ul>
    <div class="body">
        <div class="adsense_topBanner">
            <script type="text/javascript"><!--
                google_ad_client = "pub-2574483175675865";
                /* ViewPost-top */
                google_ad_slot = "3040704075";
                google_ad_width = 468;
                google_ad_height = 60;
                //-->
            </script>
            <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
            </script>
        </div>
        <asp:literal id="Body" runat="server" />
    </div>
    <div class="trackback">
        <asp:literal id="TrackBack" runat="server" />
    </div>
</div>
<div class="adsense_botBanner">
    <script type="text/javascript"><!--
        google_ad_client = "pub-2574483175675865";
        /* ViewPost-bottom-small */
        google_ad_slot = "2700902534";
        google_ad_width = 468;
        google_ad_height = 60;
        //-->
    </script>
    <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
</div>
