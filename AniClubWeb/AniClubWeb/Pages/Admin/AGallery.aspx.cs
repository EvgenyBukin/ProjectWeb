using AniClubWeb.Models;
using AniClubWeb.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AniClubWeb.Pages.Admin
{
    public partial class AGallery : System.Web.UI.Page
    {
        private Repository repository = new Repository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<AnimeG> GetAnimes()
        {
            return repository.AnimeGs;
        }

        public void UpdateAnime(int AnId)
        {
            AnimeG myAnime = repository.AnimeGs
                .Where(p => p.AnId == AnId).FirstOrDefault();
            if (myAnime != null && TryUpdateModel(myAnime,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SaveAnimeGalleryCatalog(myAnime);
            }
        }

        public void DeleteAnime(int AnId)
        {
            AnimeG myAnime = repository.AnimeGs
                .Where(p => p.AnId == AnId).FirstOrDefault();
            if (myAnime != null)
            {
                repository.DeleteAnimeGalleryCatalog(myAnime);
            }
        }

        public void InsertAnime()
        {
            AnimeG myAnime = new AnimeG();
            if (TryUpdateModel(myAnime,
                new FormValueProvider(ModelBindingExecutionContext)))
            {
                repository.SaveAnimeGalleryCatalog(myAnime);
            }
        }
    }
}