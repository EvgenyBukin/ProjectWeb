using System;
using System.Web.Routing;

//namespace AniClubWeb.App_Start
namespace AniClubWeb
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "page/{category}/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "page/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "page", "~/Pages/Listing.aspx");

            routes.MapPageRoute("GalleryPages", "gallery/page/{page}", "~/Pages/Gallery.aspx");
            routes.MapPageRoute("GalleryGeneral", "gallery", "~/Pages/Gallery.aspx");
            // routes.MapPageRoute(null, "gallery/page", "~/Pages/Gallery.aspx");

            //new code
            routes.MapPageRoute("admin_catalog", "admin/catalog", "~/Pages/Admin/Catalog.aspx");

            //new code 25.07.16
            routes.MapPageRoute("admin_gallery", "admin/gallery", "~/Pages/Admin/AGallery.aspx");
        }
    }
}