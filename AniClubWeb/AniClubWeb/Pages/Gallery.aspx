<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AniClubWeb.Pages.Gallery" 
    MasterPageFile="~/Pages/AnimeGallery.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
        <div id="content">
            <div class='galleryBlock'> 
            <%
                foreach (AniClubWeb.Models.AnimeG animeG in GetAnimeGs())
                {
                    Response.Write(String.Format(@"
                        <div class='galleryModuleSize'>
                            <label for='modal-1{3}' class='item'>
                                <div class='galleryImg'>
                                    <img style='position: absolute; top: -9999px;' class='gImg' src='{2}' alt=''>
                                </div>
                                <div class'gen1'>
                                    <div class='galleryInfImg'>
                                        <span>{0} :: {1}</span>
                                    </div>
                                </div>
                            </label>                        
                            <div class='modal'>
                                <input class='modal-open' id='modal-1{3}' type='checkbox' hidden>
                                <div class='modal-wrap' aria-hidden='true' role='dialog'>
                                    <label class='modal-overlay' for='modal-1{3}'></label>
                                    <div class='modal-dialog'>
                                        <div class='modal-header'>
                                            <label class='btn-close' for='modal-1{3}' aria-hidden='true'>×</label>
                                        </div>
                                        <div class='modal-body'>
                                            <div class='galleryImgWrap'>
                                                <img class='gImgWrap' src='{2}' alt=''>
                                            </div>
                                        </div>
                                        <div class='modal-footer'>
                                            <span>{1}</span>
                                            <span>#{0}</span>
                                            <a href='{2}' class='maxSizeImg'></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>", 
                        animeG.Hashtag, animeG.GName, animeG.SGImg, animeG.AnId));
                }
            %>
            </div>
        </div>
        <div class="pager">
            <%
                if (countPage >= MaxPage)
                {
                    for (int i = 1; i <= MaxPage; i++)
                    {
                        string path = RouteTable.Routes.GetVirtualPath(null, "GalleryPages",
                            new RouteValueDictionary() {
                            { "page", i }
                                }).VirtualPath;
                        Response.Write(
                            String.Format("<a href='{0}' {1}>{2}</a>",
                                path, i == CurrentPageGal ? "class='selected'" : "", i));
                    }
                }
            %>
       </div>
</asp:Content>
