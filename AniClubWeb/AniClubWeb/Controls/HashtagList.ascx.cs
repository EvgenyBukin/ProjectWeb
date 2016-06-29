using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Routing;
using System.Web.UI;

namespace AniClubWeb.Controls
{
    public partial class HashtagList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*=====================================GALLERY==========================================*/
        
        /*protected IEnumerable<string> GetCategories() //применяет LINQ для генерации списка названий категорий.
        {
            return new Repository().AnimeGs
                .Select(p => p.Hashtag)
                .Distinct()
                .OrderBy(x => x);
        }*/

        /*=============================OVERALL=============================*/
        /*protected string CreateHomeLinkHtml()
        {
            string path = RouteTable.Routes.GetVirtualPath(null, null).VirtualPath;
            return string.Format("<a href='{0}'>Главная</a>", path);
        }*/

        // Использует систему маршрутизации для генерирования URL, которые содержат
        // компонент категории, позволяя представлять неотфильтрованный список.
       /* protected string CreateLinkHtml(string hashtag)
        {
            string selectedCategory = (string)Page.RouteData.Values["hashtag"] //!
                ?? Request.QueryString["hashtag"];

            string path = RouteTable.Routes.GetVirtualPath(null, null,
                new RouteValueDictionary() { { "hashtag" , hashtag },
                    { "page", "1"} }).VirtualPath;

            return string.Format("<a href='{0}' {1}>{2}</a>",
            path, hashtag == selectedCategory ? "class='selected1'" : "", hashtag); //!
        }*/
    }
}