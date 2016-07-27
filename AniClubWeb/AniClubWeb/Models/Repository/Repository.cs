using System.Collections.Generic;
/*
===================================
Класс хранилища, который оперирует на созданном классе EFDbContext и действует в качестве
шлюза между логикой приложения и базой данных.
===================================
*/
namespace AniClubWeb.Models.Repository
{
    public class Repository
    {
        private EFDbContext context = new EFDbContext();
        
        public IEnumerable<AnimeG> AnimeGs
        {
            get{ return context.AnimeGs; }
        }
        
        public IEnumerable<Anime> Animes
        {
            get { return context.Animes; }
        }
        
        public void SaveAnimeGalleryCatalog(AnimeG animeg)
        {
            if (animeg.AnId == 0)
            {
                animeg = context.AnimeGs.Add(animeg);
            }
            else
            {
                AnimeG dbAnimeG = context.AnimeGs.Find(animeg.AnId);
                if (dbAnimeG != null)
                {
                    dbAnimeG.Hashtag = animeg.Hashtag;
                    dbAnimeG.SGImg = animeg.SGImg;
                    dbAnimeG.GName = animeg.GName;
                }
            }
            context.SaveChanges();
        }

        public void SaveAnimeCatalog(Anime anime)
        {
            if(anime.AnimeID == 0)
            {
                anime = context.Animes.Add(anime);
            }
            else
            {
                Anime dbAnime = context.Animes.Find(anime.AnimeID);
                if(dbAnime != null)
                {
                    dbAnime.Name = anime.Name;
                    dbAnime.Text = anime.Text;
                    dbAnime.Category = anime.Category;
                    dbAnime.Img1 = anime.Img1;
                    dbAnime.Img2 = anime.Img2;
                    dbAnime.Img3 = anime.Img3;
                    dbAnime.Img4 = anime.Img4;
                    dbAnime.Img5 = anime.Img5;
                    dbAnime.Img6 = anime.Img6;
                    dbAnime.Data = anime.Data;
                    dbAnime.video = anime.video;
                }
            }
            context.SaveChanges();
        }

        public void DeleteAnimeGalleryCatalog(AnimeG animeg)
        {
            context.AnimeGs.Remove(animeg);
            context.SaveChanges();
        }

        public void DeleteAnimeCatalog(Anime anime)
        {
            context.Animes.Remove(anime);
            context.SaveChanges();
        }
    }
}