﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication2
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("LoginRoute", "Login", "~/Login.aspx");
            routes.MapPageRoute("AdminRoute", "Admin", "~/AdminPage.aspx");
            routes.MapPageRoute("StudentRoute", "Student", "~/StudentPage.aspx");
            routes.MapPageRoute("TeacherRoute", "Teacher", "~/TeacherPage.aspx");
        }

    }
}