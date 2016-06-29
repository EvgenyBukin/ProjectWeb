using System.Data.Entity;
/*
===================================
Класс, который ассоциирует модель данных Anime с базой данных.
===================================
*/
namespace AniClubWeb.Models.Repository
{
    public class EFDbContext : DbContext
    {
        public DbSet<Anime> Animes { get; set; }
        /*public DbSet<AnimeG> AnimeGs { get; set; }*/
    }
}
