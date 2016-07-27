﻿<%@ Page validateRequest="false" Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" 
    Inherits="AniClubWeb.Pages.Admin.Catalog"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" ItemType="AniClubWeb.Models.Anime" SelectMethod="GetAnimes"
        DataKeyNames="AnimeId" UpdateMethod="UpdateAnime" DeleteMethod="DeleteAnime"
        InsertMethod="InsertAnime" InsertItemPosition="LastItem" EnableViewState="false"
        runat="server">
        <LayoutTemplate>
            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                        <th></th>
                        <th>Название</th>
                        <th>Текст</th>
                        <th>Категория</th>
                        <th>Img1</th>
                        <th>Img2</th>
                        <th>Img3</th>
                        <th>Img4</th>
                        <th>Img5</th>
                        <th>Img6</th>
                        <th>Видео</th>
                        <th>Дата</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Button ID="Button1" CommandName="Edit" Text="Изменить" runat="server" />
                    <asp:Button ID="Button2" CommandName="Delete" Text="Удалить" runat="server" />
                </td>
                <td><%# Item.Name %></td>
                <td class="Text"><span><%# Item.Text %></span></td>
                <td><%# Item.Category %></td>
                <td><%# Item.Img1 %></td>
                <td><%# Item.Img2 %></td>
                <td><%# Item.Img3 %></td>
                <td><%# Item.Img4 %></td>
                <td><%# Item.Img5 %></td>
                <td><%# Item.Img6 %></td>
                <td><%# Item.video %></td>
                <td><%# Item.Data %></td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:Button ID="Button3" CommandName="Update" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Отмена" runat="server" />
                </td>
                <td>
                    <input name="name" value="<%# Item.Name %>" />
                    <input type="hidden" name="ProductID" value="<%# Item.AnimeID %>" />
                </td>
                <td><input name="Text" value="<%# Item.Text %>" /></td>
                <td><input name="Category" value="<%# Item.Category %>" /></td>
                <td><input name="Img1" value="<%# Item.Img1 %>" /></td>
                <td><input name="Img2" value="<%# Item.Img2 %>" /></td>
                <td><input name="Img3" value="<%# Item.Img3 %>" /></td>
                <td><input name="Img4" value="<%# Item.Img4 %>" /></td>
                <td><input name="Img5" value="<%# Item.Img5 %>" /></td>
                <td><input name="Img6" value="<%# Item.Img6 %>" /></td>
                <td><input name="video" value="<%# Item.video %>" /></td>
                <td><input name="Data" value="<%# Item.Data %>" /></td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <asp:Button ID="Button5" CommandName="Insert" Text="Вставить" runat="server" />
                </td>
                <td>
                    <input name="name" />
                    <input type="hidden" name="ProductID" value="0" />
                </td>
                <td><input name="Text" /></td>
                <td>
                    <input name="Category" list="CategoryOptions"/>
                    <datalist id="CategoryOptions">
                        <option value="Обзор">
                        <option value="Аниме">
                    </datalist>
                </td>
                <td>
                    <input name="Img1" list="Img1Options" />
                    <datalist id="Img1Options">
                        <option value="/Content/Img/BD/News00Img1.png">
                    </datalist>
                </td>
                <td>
                    <input name="Img2" list="Img2Options" />
                    <datalist id="Img2Options">
                        <option value="/Content/Img/BD/News00Img2.gif">
                    </datalist>
                </td>
                <td>
                    <input name="Img3" list="Img3Options" />
                    <datalist id="Img3Options">
                        <option value="/Content/Img/BD/News00Img3.gif">
                    </datalist>
                </td>
                <td>
                    <input name="Img4" list="Img4Options" />
                    <datalist id="Img4Options">
                        <option value="/Content/Img/BD/News00WrapImg1.png">
                    </datalist>
                </td>
                <td>
                    <input name="Img5" list="Img5Options"/>
                    <datalist id="Img5Options">
                        <option value="/Content/Img/BD/News00WrapImg2.png">
                    </datalist>
                </td>
                <td>
                    <input name="Img6" list="Img6Options"/>
                    <datalist id="Img6Options">
                        <option value="/Content/Img/BD/News00WrapImg3.png">
                    </datalist>
                </td>
                <td>
                    <input name="Video" list="VideoOptions"/>
                    <datalist id="VideoOptions">
                        <option value="/Content/Video/News00Video01.mp4">
                    </datalist>
                </td>
                <td>
                    <input name="Data" />
                </td>
            </tr>
        </InsertItemTemplate>
    </asp:ListView>
</asp:Content>
