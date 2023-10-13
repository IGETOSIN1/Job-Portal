using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Web_Trupurpose_New
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
          /* RouteTable.Routes.MapRoute(
              name: "route18",
               "{Url}",
             "~/Dynamic.aspx"
          );*/
             RouteTable.Routes.MapPageRoute("route18er", "{Url}", "~/Dynamic.aspx");

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

        }
    }
}
