<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryList.ascx.cs"
    Inherits="AniClubWeb.Controls.CategoryList" %>

<%= CreateHomeLinkHtml() %> <!-- Главная -->

<% foreach (string category in GetCategories()) {
       Response.Write(CreateLinkHtml(category));       
}%><!-- Перечисление доступных категорий -->