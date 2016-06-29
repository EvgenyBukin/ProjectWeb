using AniClubWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using AniClubWeb.Models.Repository;
using System.Web.ModelBinding;

namespace AniClubWeb.Pages.Admin
{
    public partial class Catalog : System.Web.UI.Page
    {
        private Repository repository = new Repository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Anime> GetAnimes()
        {
            return repository.Animes;
        }

        public void UpdateAnime(int AnimeId)
        {
            Anime myAnime = repository.Animes
                .Where(p => p.AnimeID == AnimeId).FirstOrDefault();
            if(myAnime != null && TryUpdateModel(myAnime,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SaveAnimeCatalog(myAnime);
            }
        }

        public void DeleteAnime(int AnimeId)
        {
            Anime myAnime = repository.Animes
                .Where(p => p.AnimeID == AnimeId).FirstOrDefault();
            if(myAnime != null)
            {
                repository.DeleteAnimeCatalog(myAnime);
            }
        }

        public void InsertAnime()
        {
            Anime myAnime = new Anime();
            if(TryUpdateModel(myAnime,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SaveAnimeCatalog(myAnime);
            }
        }
    }
}