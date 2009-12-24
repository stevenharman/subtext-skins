<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.EntryList" %>
<%@ Register TagPrefix="uc1" TagName="PostCategoryList" Src="PostCategoryList.ascx" %>

<%@ Import Namespace = "Subtext.Framework" %>
<div class="posts">
    <h2 class="title">
        <asp:literal id="EntryCollectionTitle" runat="server" />
    </h2>
    <div class="Description">
        <asp:literal id="EntryCollectionDescription" runat="server" />
    </div>
    <asp:repeater runat="server" id="Entries" onitemcreated="PostCreated">
        <itemtemplate>
            <div class="gradient entry">
                <h1 class="title">
                  <span><asp:HyperLink Runat="server" ID="editLink" /><asp:hyperlink runat="server" id="TitleUrl" /></span>
                </h1>
                <ul class="entry-links">
                    <li class="permalink"><asp:Label id="permalink" runat="server" Format="MMM dd, yyyy" /></li>
                    <li class="commentCount"><asp:Label id="commentCount" Runat="server" /></li>
                </ul>
                <div class="body">
                    <%# (Container.ItemIndex == 0 || Container.ItemIndex == 2 || Container.ItemIndex == 4) ?
                    @"<div class='adsense_topBanner'>
                        <script type='text/javascript'><!--
                            google_ad_client = 'pub-2574483175675865';
                            /* ViewPost-top */
                            google_ad_slot = '3040704075';
                            google_ad_width = 468;
                            google_ad_height = 60;
                            //-->
                        </script>
                        <script type='text/javascript' src='http://pagead2.googlesyndication.com/pagead/show_ads.js'>
                        </script> 
                    </div>"
                        :
                        ""
                    %>
                    <asp:literal runat="server" id="PostText" />
                </div>
            </div>
        </itemtemplate>
    </asp:repeater>
    <div class="more">
        <asp:hyperlink runat="server" id="EntryCollectionReadMoreLink" />
    </div>
</div>
