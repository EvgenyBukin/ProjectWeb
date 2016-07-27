using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AniClubWeb.Pages.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string AnimeUrl
        {
            get
            {
                return generateURL("admin_catalog");
            }
        }

        public string GalleryUrl
        {
            get
            {
                return generateURL("admin_gallery");
            }
        }

        public string HomeUrl
        {
            get
            {
                return generateURL("");
            }
        }

        private string generateURL(string routeName)
        {
            return RouteTable.Routes.GetVirtualPath(null, routeName, null).VirtualPath;
        }
    }
}