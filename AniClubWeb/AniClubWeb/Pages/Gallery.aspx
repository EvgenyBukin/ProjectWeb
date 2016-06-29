<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AniClubWeb.Pages.Gallery" 
    MasterPageFile="~/Pages/AnimeGallery.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
        <div id="content">
            <%
                foreach (AniClubWeb.Models.AnimeG animeG in GetAnimeGs())
                {
                    Response.Write(String.Format(@"
                        <div class='item'>
                            <h3>{0}</h3>
                            {1}
                            <h4>{2:c}</h4>
                        </div>", 
                        animeG.Hashtag, animeG.GName, animeG.SGImg));
                }
            %>
        </div>
        <div class="pager">
            <%
                for(int i = 1; i <= MaxPage; i++)
                {
                    string hashtag = (string)Page.RouteData.Values["hashtag"]
                        ?? Request.QueryString["hashtag"];

                    string path = RouteTable.Routes.GetVirtualPath(null, null,
                        new RouteValueDictionary() {
                            { "hashtag", hashtag},
                            { "page", i }
                        }).VirtualPath;

                    Response.Write(
                        String.Format("<a href='{0}' {1}>{2}</a>",
                        path, i == CurrentPageGal ? "class='selected1'" : "", i));
                }
            %>
       </div>
</asp:Content>
