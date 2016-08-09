<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="AniClubWeb.Pages.Listing" 
    MasterPageFile="~/Pages/AnimeNews.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
       <article class="newsContent">
           <%
               foreach (AniClubWeb.Models.Anime freme in GetAnimes())
               {
                   Response.Write(String.Format(@"
                    <div class='newsContent_Module_1'>
						<div class='newsContent_Window'>
                            <div class='newsContent_Window_Wrapper'>
                                <div class='newsContent_Window_Wrapper_Line1'></div>
                                <div class='newsContent_Window_Wrapper_Block1'>
                                    <img src='{8}' class='Modal_Img3' arl='img'>
                                </div>
                                <div class='newsContent_Window_Wrapper_Block2' >
                                     <div class='scroller'>
                                        <span class='block2_container'>{1}</span>
                                     </div>
                                </div>
                                 <span class='dateTime'>Дата добавления: {9}</span>
                                 <span class='Category'>Категория: {10}</span>
                                <div class='module_Button1'>
                                    <label class='btn' for='modal-1{5}'></label>
                                    <sapn class='module_Button1_Txt' id='setav'>Подробние</span>
                                </div>                              
                            </div>
                            <div class='modal'>
                                   <input class='modal-open' id='modal-1{5}' type='checkbox' hidden>
                                   <div class='modal-wrap' role='dialog'>
                                       <label class='modal-overlay' for='modal-1{5}'></label>
                                       <div class='modal-dialog'>
                                           <div class='modal-header'>
                                               <h2>{0}</h2>
                                               <div class='Wrapper_Modal_Log1'></div>
                                               <label class='btn-close' for='modal-1{5}'>×</label>
                                           </div>
                                           <img src='{6}' class='Modal_Img1' arl='img'>
                                           <div id='modal-body' class='scroller m1'>
                                               <img src='{7}' class='Modal_Img2' arl='img'>
                                               <p>{1}</p>
                                               <video class='video' width='400' height='300' controls='controls'>
                                                    <source class='source1' src='{11}' type='video/mp4;'>
                                               </video>
                                           </div>
                                           <div class='modal-footer'>                                               
                                           </div>
                                      </div>
                                 </div>
                            </div>
                            <div class='newsContent_Window_Title'>
                                <span class='nameNews'>{0}</span>
                            </div>
                            <img class='newsContent_Window_Img1' src='{2}' alt='img'>                            
                        </div>
						<div class='newsContent_TitleModule'>
							<div class='newsContent_Tile block1'>
                                <img class='newsContent_Tile_Img1' src='{3}' alt='img'>
                            </div>
                            <div class='newsContent_Tile_block1_Wrap'></div>
                            <div class='newsContent_Tile_block1_buttonPanel'></div>
							<div class='newsContent_Tile block2'>
                                <img class='newsContent_Tile_Img2' src='{4}' alt='img'>
                            </div>
                            <div class='newsContent_Tile_block2_Wrap'></div>
                            <div class='newsContent_Tile_block2_buttonPanel'></div>
						</div>
					</div>",
                   freme.Name, freme.Text, freme.Img1, freme.Img2, freme.Img3,
                   freme.AnimeID, freme.Img4, freme.Img5, freme.Img6, freme.Data,
                   freme.Category, freme.video));
               }
           %>
       </article>
       <div class="pager">
            <%
                int maxButtonCount = 6;
                int changedButtonCount = 4;

                for(int i = 1; i <= MaxPage; i++)
                {
                    if (i > 1 && i < MaxPage && MaxPage > maxButtonCount)
                    {
                        if (CurrentPage >= changedButtonCount && i < CurrentPage - ((MaxPage - CurrentPage < changedButtonCount) ? changedButtonCount - (MaxPage - CurrentPage ) : 1))
                        {
                            continue;
                        }

                        if (MaxPage - CurrentPage >= changedButtonCount && i > CurrentPage + ((CurrentPage < changedButtonCount - 1) ? changedButtonCount - CurrentPage + 1: 2))
                        {
                            continue;
                        }
                    }

                    string category = (string)Page.RouteData.Values["category"]
                        ?? Request.QueryString["category"];

                    string path = RouteTable.Routes.GetVirtualPath(null, null,
                        new RouteValueDictionary() {
                            { "category", category},
                            { "page", i }
                        }).VirtualPath;

                    Response.Write(
                        String.Format("<a href='{0}' {1}>{2}</a>",
                        path, i == CurrentPage ? "class='selected'" : "", i));
                }
            %>
       </div>
</asp:Content>

