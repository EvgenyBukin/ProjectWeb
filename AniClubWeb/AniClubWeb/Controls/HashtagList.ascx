<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HashtagList.ascx.cs"
    Inherits="AniClubWeb.Controls.HashtagList" %>

<%= CreateHomeLinkHtml() %>

<% foreach (string hashtag in GetCategories()) {    
}%>