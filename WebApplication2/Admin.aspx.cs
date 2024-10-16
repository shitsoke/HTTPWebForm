using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in by checking the cookie
            if (Request.Cookies["UserLogins"] == null)
            {
                // If no cookie is found, redirect to the login page
                Response.Redirect("Login");
            }
            else
            {
                // Retrieve the username from the query string to find the corresponding user type
                string username = Request.QueryString["username"];
                HttpCookie userCookie = Request.Cookies["UserLogins"];

                // Check if the username exists in the cookie
                if (userCookie.Values[username] == null)
                {
                    // If the username is not found, redirect to the login page
                    Response.Redirect("Login");
                }

                // Retrieve the user type for the current user
                string userType = userCookie.Values[username];

                // Sanitize input and display a personalized message
                UsernameLabel.Text = $"Welcome, {HttpUtility.HtmlEncode(username)}!";

                // Optional: You can also check if the userType matches 'admin'
                if (userType != "admin")
                {
                    // If the user is not an admin, redirect to a general user page or login page
                    Response.Redirect("Login"); // Change to the appropriate page
                }
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            // Clear the UserLogins cookie by setting its expiration date to the past
            if (Request.Cookies["UserLogins"] != null)
            {
                // Create a new cookie with the same name to clear its content
                HttpCookie myCookie = new HttpCookie("UserLogins");
                myCookie.Expires = DateTime.Now.AddMinutes(30); // Expire the cookie
                Response.Cookies.Add(myCookie);
            }

            // Redirect to the login page after logging out
            Response.Redirect("Login");
        }

    }
}