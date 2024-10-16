using System;
using System.Web;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        protected string ErrorMessage = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;
            string userType = RoleDropDown.SelectedValue;

            // Check if the username is at least 5 characters long
            if (username.Length < 5)
            {
                lblErrorMessage.Text = "Username must be at least 5 characters long.";
                return;
            }

            // Check if user credentials are valid
            if (IsValidUser(username, password, userType))
            {
                // Retrieve or create a cookie for multiple user logins
                HttpCookie userCookie = Request.Cookies["UserLogins"] ?? new HttpCookie("UserLogins");

                // Add current user's details to the cookie (store username and userType)
                userCookie.Values[username] = userType;
                userCookie.Expires = DateTime.Now.AddMinutes(30); // Set cookie expiry

                // Save the updated cookie
                Response.Cookies.Add(userCookie);

                // Sanitize the input and redirect to the appropriate page
                string encodedUsername = HttpUtility.UrlEncode(username);
                Response.Redirect($"{userType}.aspx?username={encodedUsername}");
            }
            else
            {
                Response.Write("Invalid login attempt. Please try again.");
            }
        }


        private bool IsValidUser(string username, string password, string userType)
        {
            // Simple mock authentication logic
            if (userType == "admin" && username == "admin" && password == "admin123")
                return true;
            if (userType == "student" && username == "student" && password == "student123")
                return true;
            if (userType == "teacher" && username == "teacher" && password == "teacher123")
                return true;

            // Return false if credentials don't match
            return false;
        }
    }
}
