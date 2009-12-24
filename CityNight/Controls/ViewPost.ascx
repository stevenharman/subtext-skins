<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.ViewPost" %>
<%@ Register TagPrefix="uc1" TagName="previousNext" Src="PreviousNext.ascx" %>
<%@ Register TagPrefix="uc1" TagName="shareThisPost" Src="ShareThisPost.ascx" %>
<div class="adsense_topBanner">
	<script type="text/javascript"><!--
	google_ad_client = "pub-2574483175675865";
	google_ad_width = 468;
	google_ad_height = 60;
	google_ad_format = "468x60_as";
	google_ad_type = "text_image";
	google_ad_channel = "";
	google_color_border = "333333";
	google_color_bg = "333333";
	google_color_link = "F1B257";
	google_color_text = "DDDDDD";
	google_color_url = "F1B257";
	//--></script>
	<script type="text/javascript"
	  src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
	</script>
</div>
<uc1:previousNext id="previousNext" runat="server" />
<div class="post">
	<div class="title">
		<asp:HyperLink  Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" />
	</div>
	<ul class="info">
		<li class="permalink"><asp:Label id="date" runat="server" Format="MMM dd, yyyy" /></li>
		<li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
		<li class="printIcon"><a href="javascript:window.print();">Print</a></li>
	</ul>
	<div class="body">
		<asp:literal id="Body" runat="server" />
		<uc1:shareThisPost id="shareThisPost" runat="server" />
	</div>

	<div class="trackback">
		<asp:literal id="TrackBack" runat="server" />
	</div>
</div>
<div class="adsense_botBanner">
    <div class="section">
        <script type="text/javascript"><!--
        google_ad_client = "pub-2574483175675865";
        google_ad_width = 468;
        google_ad_height = 60;
        google_ad_format = "468x60_as";
        google_cpa_choice = "CAEQABAAEAAQABAAEAAQABAAEAAQABAAGgj-Aq66nofHdyid7du-ASip5rfCASiGk7WuAijDj4fKASiUgJOwASjuncytAijNqvGqASj-qMfcASiPjofKASiL_aPHASitpbeqAVA1";
        google_color_border = "333333";
	    google_color_bg = "333333";
	    google_color_link = "F1B257";
	    google_color_text = "DDDDDD";
	    google_color_url = "F1B257";
        //-->
        </script>
        <script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
        </script>
    </div>
    <div class="section">
	    <script type="text/javascript"><!--
	    google_ad_client = "pub-2574483175675865";
	    google_ad_width = 468;
	    google_ad_height = 60;
	    google_ad_format = "468x60_as";
	    google_ad_type = "text_image";
	    google_ad_channel = "";
	    google_color_border = "333333";
	    google_color_bg = "333333";
	    google_color_link = "F1B257";
	    google_color_text = "DDDDDD";
	    google_color_url = "F1B257";
	    //--></script>
	    <script type="text/javascript"
	      src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
	    </script>
	</div>
</div>