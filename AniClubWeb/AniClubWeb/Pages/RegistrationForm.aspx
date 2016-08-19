<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AniClubWeb.Pages.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel='stylesheet' type='text/css' href='/Content/CSS/RegistForm.css' />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="nice-form">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="error" />
                <label for="name" id="headForm">Registration Form</label>
                <input name="name" id="name" type="text" placeholder="Name" class="checked" />
                <input name="password" id="password" type="password" placeholder="Password" class="checked" />
                <asp:Button ID="Button5" Text="Вставить" runat="server" OnClick="Button5_Click" />
            </div>
        </div>
    </form>
</body>
</html>
