using System;
/*
===================================
Представление строк из таблицы базы данных.
===================================
*/
namespace AniClubWeb.Models
{
    public class Anime
    {
        public int AnimeID { get; set; }
        public string Name { get; set; }
        public string Text { get; set; }
        public string Category { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public string Img3 { get; set; }
        public string Img4 { get; set; }
        public string Img5 { get; set; }
        public string Img6 { get; set; }
        public DateTime Data { get; set; }
        public string video { get; set; }

        /*public int NewsID { get; set; }
        public string Txt1 { get; set; }
        public string Txt2 { get; set; }
        public string Txt3 { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public string Img3 { get; set; }*/
    }
}