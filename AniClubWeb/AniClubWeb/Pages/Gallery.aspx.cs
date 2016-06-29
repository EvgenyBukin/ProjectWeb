using AniClubWeb.Models;
using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AniClubWeb.Pages
{
    public partial class Gallery : System.Web.UI.Page
    {
        /*
        private Repository repository = new Repository();
        private int pageSize = 4;

        protected int CurrentPageGal
        {
            get
            {
                int page;
                page = GetPageFromRequest();
                return page > MaxPage ? MaxPage : page;
            }
        }

        protected int MaxPage
        {
            get
            {
                int prodCount = FilterAnimes().Count();
                return (int)Math.Ceiling((decimal)prodCount / pageSize);
            }
        }

        private int GetPageFromRequest()
        {
            int page;
            string reqValue = (string)RouteData.Values["page"] ??
                Request.QueryString["page"];
            return reqValue != null && int.TryParse(reqValue, out page) ? page : MaxPage;
        }


        public IEnumerable<AnimeG> GetAnimeGs()
        {
            return FilterAnimes()
                .OrderBy(g => g.AnId) //обеспечивает обработку объектов Anime в одном и том же порядке.
                .Skip((CurrentPageGal - 1) * pageSize) //CurP and PagS позволяют выбирать требуемые объекты Anime из хранилища. 
                .Take(pageSize); //позволяет выбрать нужное количество объектов Anime для отображения пользователю.
        }

        //Метод для фильтрации по категориям.
        private IEnumerable<AnimeG> FilterAnimes()
        {
            IEnumerable<AnimeG> AnimeGs = repository.AnimeGs;
            string currentCategory = (string)RouteData.Values["hashtag"] ??
                Request.QueryString["hashtag"];
            return currentCategory == null ? AnimeGs :
                AnimeGs.Where(p => p.Hashtag == currentCategory);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }*/
    }
}