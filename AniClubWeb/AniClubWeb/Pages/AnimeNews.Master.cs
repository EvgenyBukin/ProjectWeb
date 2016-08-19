using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AniClubWeb.Pages
{
    public partial class AnimeNews : System.Web.UI.MasterPage
    {
        protected void SignOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string AnimeUrlRegistrationForm
        {
            get
            {
                return generateURL("RegistrationForm");
            }
        }

        private string generateURL(string routeName)
        {
            return RouteTable.Routes.GetVirtualPath(null, routeName, null).VirtualPath;
        }
    }
}