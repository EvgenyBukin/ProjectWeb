<%@ Page validateRequest="false" Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" 
    Inherits="AniClubWeb.Pages.Admin.Catalog"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>




<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView2" ItemType="AniClubWeb.Models.Anime" SelectMethod="GetAnimes"
        DataKeyNames="AnimeId" UpdateMethod="UpdateAnime" DeleteMethod="DeleteAnime"
        InsertMethod="InsertAnime" InsertItemPosition="LastItem" EnableViewState="false"
        runat="server">
        <LayoutTemplate>
            <div class="outerContainer1">
                <div class="wrapBattonPanel">
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Panel</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Название</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Текст</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Категория</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img1</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img2</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img3</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img4</span>
                        </div>
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img5</span>
                        </div>                       
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Img6</span>
                        </div>                     
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Видео</span> 
                        </div>                       
                    </div>
                    <div class="wrapBatton">
                        <div class="wrapBattonModule">
                            <span class="hide"><</span>
                            <span class="show">></span>
                            <span>Дата</span>
                        </div>
                    </div>
                </div>
                <div class="tableHeader">
                    <div>Panel</div>
                    <div>Название</div>
                    <div>Текст</div>
                    <div>Категория</div>
                    <div>Img1</div>
                    <div>Img2</div>
                    <div>Img3</div>
                    <div>Img4</div>
                    <div>Img5</div>
                    <div>Img6</div>
                    <div>Видео</div>
                    <div>Дата</div>
                </div>
            <div runat="server" id="itemPlaceholder"></div>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="tableBody">
                <div>
                    <asp:Button ID="Button1" CommandName="Edit" Text="Изменить" runat="server" />
                    <asp:Button ID="Button2" CommandName="Delete" Text="Удалить" runat="server" />
                </div>
                <div><span><%# Item.Name %></span></div>
                <div class="Text"><span><%# Item.Text %></span></div>
                <div><span><%# Item.Category %></span></div>
                <div><span><%# Item.Img1 %></span></div>
                <div><span><%# Item.Img2 %></span></div>
                <div><span><%# Item.Img3 %></span></div>
                <div><span><%# Item.Img4 %></span></div>
                <div><span><%# Item.Img5 %></span></div>
                <div><span><%# Item.Img6 %></span></div>
                <div><span><%# Item.video %></span></div>
                <div><span><%# Item.Data %></span></div>
            </div>
        </ItemTemplate>
        <EditItemTemplate>
            <div class="tableBody">
                <div>
                    <asp:Button ID="Button3" CommandName="Update" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Отмена" runat="server" />
                </div>
                <div>
                    <input class="change01" name="name" value="<%# Item.Name %>" />
                    <input type="hidden" name="ProductID" value="<%# Item.AnimeID %>" />
                </div>
                <div><input class="change02" name="Text" value="<%# Item.Text %>" /></div>
                <div><input class="change03" name="Category" value="<%# Item.Category %>" /></div>
                <div><input class="change04" name="Img1" value="<%# Item.Img1 %>" /></div>
                <div><input class="change05" name="Img2" value="<%# Item.Img2 %>" /></div>
                <div><input class="change06" name="Img3" value="<%# Item.Img3 %>" /></div>
                <div><input class="change07" name="Img4" value="<%# Item.Img4 %>" /></div>
                <div><input class="change08" name="Img5" value="<%# Item.Img5 %>" /></div>
                <div><input class="change09" name="Img6" value="<%# Item.Img6 %>" /></div>
                <div><input class="change10" name="video" value="<%# Item.video %>" /></div>
                <div><input class="change11" name="Data" value="<%# Item.Data %>" /></div>
            </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="tableBody">
                <div>
                    <asp:Button ID="Button5" CommandName="Insert" Text="Вставить" runat="server" />
                </div>
                <div>
                    <input class="change01" name="name" />
                    <input type="hidden" name="ProductID" value="0" />
                </div>
                <div>
                    <input class="change02"name="Text" />
                </div>
                <div>
                    <input class="change03" name="Category" list="CategoryOptions" class="categoryStyle"/>
                    <datalist id="CategoryOptions">
                        <option value="Обзор">
                        <option value="Аниме">
                    </datalist>
                </div>
                <div>
                    <input class="change04" name="Img1" list="Img1Options" />
                    <datalist id="Img1Options">
                        <option value="/Content/Img/BD/News00Img1.png">
                    </datalist>
                </div>
                <div>
                    <input class="change05" name="Img2" list="Img2Options" />
                    <datalist id="Img2Options">
                        <option value="/Content/Img/BD/News00Img2.gif">
                    </datalist>
                </div>
                <div>
                    <input class="change06" name="Img3" list="Img3Options" />
                    <datalist id="Img3Options">
                        <option value="/Content/Img/BD/News00Img3.gif">
                    </datalist>
                </div>
                <div>
                    <input class="change07" name="Img4" list="Img4Options" />
                    <datalist id="Img4Options">
                        <option value="/Content/Img/BD/News00WrapImg1.png">
                    </datalist>
                </div>
                <div>
                    <input class="change08" name="Img5" list="Img5Options"/>
                    <datalist id="Img5Options">
                        <option value="/Content/Img/BD/News00WrapImg2.png">
                    </datalist>
                </div>
                <div>
                    <input class="change09" name="Img6" list="Img6Options"/>
                    <datalist id="Img6Options">
                        <option value="/Content/Img/BD/News00WrapImg3.png">
                    </datalist>
                </div>
                <div>
                    <input class="change10" name="Video" list="VideoOptions"/>
                    <datalist id="VideoOptions">
                        <option value="/Content/Video/News00Video01.mp4">
                    </datalist>
                </div>
                <div>
                    <input class="change11" name="Data" id="newData"/>
                </div>
            </div>
        </InsertItemTemplate>
    </asp:ListView>
</asp:Content>