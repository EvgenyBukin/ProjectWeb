using System;
using System.Web.Routing;

//namespace AniClubWeb.App_Start
namespace AniClubWeb
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "list/{category}/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list", "~/Pages/Listing.aspx");
            
            routes.MapPageRoute(null, "list/{hashtag}/{page}", "~/Pages/Gallery.aspx");
            routes.MapPageRoute(null, "list/{page}", "~/Pages/Gallery.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Gallery.aspx");
            routes.MapPageRoute(null, "list", "~/Pages/Gallery.aspx");
            
            //new code
            routes.MapPageRoute("admin_catalog", "admin/catalog", "~/Pages/Admin/Catalog.aspx");
        }
    }
}