using System;
using System.Web;

namespace final_year_project_9662
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] != null)
            {
                lblUserName.Text = "Welcome, " + Session["FirstName"].ToString();
                lnkLogin.Visible = false;
                lnkSignup.Visible = false;
                btnLogout.Visible = true;
            }
            else
            {
                lblUserName.Text = "";
                lnkLogin.Visible = true;
                lnkSignup.Visible = true;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}
