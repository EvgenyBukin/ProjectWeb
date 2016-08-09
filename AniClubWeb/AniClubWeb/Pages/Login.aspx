<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AniClubWeb.Pages.Login"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="error" />
    <div class="wrapper">
        <div class="nice-form">
            <label for="name">Log In</label>
            <input name="name" id="name" type="text" placeholder="Name" class="checked" />
            <input name="password" id="password" type="password" placeholder="Password" class="checked" />
            <input type="submit" value="SUBMIT" class="check-button" />
        </div>
    </div>
</asp:Content>
