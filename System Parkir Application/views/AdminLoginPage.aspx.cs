using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace System_Parkir_Application.views
{
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorAlert.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if(!(username.Equals("admin")) || !(password.Equals("admin")))
            {
                lblErrorAlert.Visible = true;
                lblError.Text = "Username or Password Must be Incorrect!";
                return;
            }
            Session["user_admin"] = username;
            Response.Redirect("~/views/AdminPageReview.aspx");
        }
    }
}