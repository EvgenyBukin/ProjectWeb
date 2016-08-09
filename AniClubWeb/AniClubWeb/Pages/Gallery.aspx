<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AniClubWeb.Pages.Gallery" 
    MasterPageFile="~/Pages/AnimeGallery.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="LastChange" runat="server">

        <%
                foreach (AniClubWeb.Models.AnimeG animeG in GetAnimeGsLC())
                {
                    Response.Write(String.Format(@"
                            <label for='modal-1{3}'>
                                <div class='LastChange'>
                                    <img style='position: absolute; top: -9999px;' class='gImgLC' src='{2}'>
                                </div>
                            </label>
                            <div class='modal'>
                                <input class='modal-open' id='modal-1{3}' type='checkbox' hidden>
                                <div class='modal-wrap' aria-hidden='true' role='dialog'>
                                    <label class='modal-overlay' for='modal-1{3}'></label>
                                    <div class='modal-dialog'>
                                        <div class='modal-header'>
                                            <span>Esc</span>
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
                    ",animeG.Hashtag, animeG.GName, animeG.SGImg, animeG.AnId));
                }
        %>
</asp:Content>
<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
        <div id="content">
            <div class="specialGB">
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
                                                <span>Esc</span>
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
        </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="PagerList" runat="server">
            <div class="pager">
            <%
                int maxButtonCount = 6;
                int changedButtonCount = 4;

                    for (int i = 1; i <= MaxPage; i++)
                    {

                        if (i > 1 && i < MaxPage && MaxPage > maxButtonCount)
                        {
                            if (CurrentPageGal >= changedButtonCount && i < CurrentPageGal - ((MaxPage - CurrentPageGal < changedButtonCount) ? changedButtonCount - (MaxPage - CurrentPageGal ) : 1))
                            {
                                continue;
                            }

                            if (MaxPage - CurrentPageGal >= changedButtonCount && i > CurrentPageGal + ((CurrentPageGal < changedButtonCount - 1) ? changedButtonCount - CurrentPageGal + 1: 2))
                            {
                                continue;
                            }
                        }

                        string path = RouteTable.Routes.GetVirtualPath(null, "GalleryPages",
                            new RouteValueDictionary() {
                            { "page", i }
                                }).VirtualPath;
                        Response.Write(
                            String.Format("<a href='{0}' {1}>{2}</a>",
                                path, i == CurrentPageGal ? "class='selected'" : "", i));
                    }
            %>
       </div>
</asp:Content>
