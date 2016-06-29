using AniClubWeb.Models;
using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AniClubWeb.Pages
{
    public partial class Listing : System.Web.UI.Page
    {
        private Repository repository = new Repository();
        private int pageSize = 4;

        //выясняет, присутствует ли значение page в запрошенном URL. 
        protected int CurrentPage
        {
            get
            {
                int page;
                page = GetPageFormRequest();
                return page > MaxPage ? MaxPage : page;
            }
        }

        //возвращающее наибольший номер допустимой страницы
        protected int MaxPage 
        {
            get
            {
                int prodCount = FilterAnimes().Count();
                return (int)Math.Ceiling((decimal)prodCount / pageSize);
            }
        }

        //Проверка переменных маршрутизации с целью выяснения, захвачено ли значение page:
        private int GetPageFormRequest()
        {
            int page;
            string reqValue = (string)RouteData.Values["page"] ??
                Request.QueryString["page"];
            return reqValue != null && int.TryParse(reqValue, out page) ? page : MaxPage;
        }


        public IEnumerable<Anime> GetAnimes()
        {
            return FilterAnimes()
                .OrderBy(g => g.AnimeID) //обеспечивает обработку объектов Anime в одном и том же порядке.
                .Skip((CurrentPage - 1) * pageSize) //CurP and PagS позволяют выбирать требуемые объекты Anime из хранилища. 
                .Take(pageSize); //позволяет выбрать нужное количество объектов Anime для отображения пользователю.
        }

        //Метод для фильтрации по категориям.
        private IEnumerable<Anime> FilterAnimes()
        {
            IEnumerable<Anime> animes = repository.Animes;
            string currentCategory = (string)RouteData.Values["category"] ??
                Request.QueryString["category"];
            return currentCategory == null ? animes :
                animes.Where(p => p.Category == currentCategory);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}