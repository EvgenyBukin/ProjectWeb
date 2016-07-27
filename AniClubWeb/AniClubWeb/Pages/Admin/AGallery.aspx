<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AGallery.aspx.cs"
    Inherits="AniClubWeb.Pages.Admin.AGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" ItemType="AniClubWeb.Models.AnimeG" SelectMethod="GetAnimes"
        DataKeyNames="AnId" UpdateMethod="UpdateAnime" DeleteMethod="DeleteAnime"
        InsertMethod="InsertAnime" InsertItemPosition="LastItem" EnableViewState="false"
        runat="server">
        <LayoutTemplate>
            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                        <th></th>
                        <th>Hashtag</th>
                        <th>GName</th>
                        <th>SGImg</th>
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
                <td><%# Item.Hashtag %></td>
                <td class="Text"><span><%# Item.GName %></span></td>
                <td><%# Item.SGImg %></td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:Button ID="Button3" CommandName="Update" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Отмена" runat="server" />
                </td>
                <td>
                    <input name="Hashtag" value="<%# Item.Hashtag %>" />
                    <input type="hidden" name="ProductID" value="<%# Item.AnId %>" />
                </td>
                <td><input name="GName" value="<%# Item.GName %>" /></td>
                <td><input name="SGImg" value="<%# Item.SGImg %>" /></td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <asp:Button ID="Button5" CommandName="Insert" Text="Вставить" runat="server" />
                </td>
                <td>
                    <input name="Hashtag" />
                    <input type="hidden" name="ProductID" value="0" />
                </td>
                <td><input name="GName" /></td>
                <td>
                    <input name="SGImg" list="SGImgOptions"/>
                    <datalist id="SGImgOptions">
                        <option value="/Content/Img/Gallery/acg0000.png">
                    </datalist>
                </td>
            </tr>
        </InsertItemTemplate>
    </asp:ListView>
</asp:Content>
