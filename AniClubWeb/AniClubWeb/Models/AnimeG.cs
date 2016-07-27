using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AniClubWeb.Models
{
    public class AnimeG
    {
        [Key]
        public int AnId { get; set; }
        public string Hashtag { get; set; }
        public string SGImg { get; set; }
        public string GName { get; set; }
    }
}