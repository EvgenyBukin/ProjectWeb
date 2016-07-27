using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Routing;
using System.Web.UI;

namespace AniClubWeb.Controls
{
    public partial class CategoryList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*=====================================GENERAL========================================*/

        protected IEnumerable<string> GetCategories() //применяет LINQ для генерации списка названий категорий.
        {
            IEnumerable <string> result = new Repository().Animes
                .Select(p => p.Category)
                .Distinct()
                .OrderBy(x => x);
            return result;
        }

        // Использует систему маршрутизации для генерирования URL, которые содержат
        // компонент категории, позволяя представлять неотфильтрованный список.
        protected string CreateLinkHtml(string category)
        {
            string selectedCategory = (string)Page.RouteData.Values["category"] //!
                ?? Request.QueryString["category"];

            string path = RouteTable.Routes.GetVirtualPath(null, null,
                new RouteValueDictionary() { { "category" , category },
                    { "page", "1"} }).VirtualPath;

            return string.Format("<a href='{0}' {1}>{2}</a>",
            path, category == selectedCategory ? "class='selected1'" : "", category); //!
        }

        /*=============================OVERALL=============================*/
        protected string CreateHomeLinkHtml()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            return string.Format("<a href='{0}'>Главная</a>", path);
        }

        protected string CreatGalleryLinkHtml()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, "GalleryGeneral",
                null ).VirtualPath;
            return string.Format("<a href='{0}'>Gallery</a>", path);
        }
    }
}