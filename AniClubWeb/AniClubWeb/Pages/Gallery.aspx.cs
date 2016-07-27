﻿using AniClubWeb.Models;
using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AniClubWeb.Pages
{
    public partial class Gallery : System.Web.UI.Page
    {
        
        private Repository repository = new Repository();
        private int pageSize = 12;
        public int countPage = 6;

        //выясняет, присутствует ли значение page в запрошенном URL. 
        protected int CurrentPageGal
        {
            get
            {
                int page;
                page = GetPageFromRequest();
                return page > MaxPage ? MaxPage : page;
            }
        }

        //возвращающее наибольший номер допустимой страницы
        protected int MaxPage
        {
            get
            {
                return (int)Math.Ceiling((decimal)repository.AnimeGs.Count() / pageSize);
            }
        }

        //Проверка переменных маршрутизации с целью выяснения, захвачено ли значение page:
        private int GetPageFromRequest()
        {
            int page;
            string reqValue = (string)RouteData.Values["page"] ??
                Request.QueryString["page"];
            return reqValue != null && int.TryParse(reqValue, out page) ? page : 1;
        }


        public IEnumerable<AnimeG> GetAnimeGs()
        {
            //return FilterAnimes()
            return repository.AnimeGs
                .OrderBy(g => g.AnId) //обеспечивает обработку объектов Anime в одном и том же порядке.
                .Skip((CurrentPageGal - 1) * pageSize) //CurP and PagS позволяют выбирать требуемые объекты Anime из хранилища. 
                .Take(pageSize); //позволяет выбрать нужное количество объектов Anime для отображения пользователю.
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}