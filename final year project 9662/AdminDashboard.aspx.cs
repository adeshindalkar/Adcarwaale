using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class AdminDashboard : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\user.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure the connection is open
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (!IsPostBack)
            {
                Loaduser(); // Load existing drivers into GridView on page load
            }
        }



        protected void btnLogout1(object sender, EventArgs e)
        {

            // Clear session variables
            Session.Clear();
            Session.Abandon();

            // Redirect to HomePage
            Response.Redirect("HomePage.aspx");
        }
        private void Loaduser()
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM customer", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    griduser.DataSource = dt;
                    griduser.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading user info: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        
    }
    }
}
