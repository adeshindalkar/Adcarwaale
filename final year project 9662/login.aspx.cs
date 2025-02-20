using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class login : System.Web.UI.Page
    {
        // Connection string to your database
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Signup.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           

            // Ensure connection is closed on initial page load
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                // Get user input
                string firstName = txtFirstName.Text.Trim();
                string lastName = txtLastName.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Check if user is Admin
                if (firstName == "Admin" && lastName == "Admin" && password == "Admin123")
                {
                    Response.Redirect("AdminDashboard.aspx");
                    return;
                }

                // SQL query to validate user credentials
                string query = "SELECT FirstName, LastName, Password FROM Signup WHERE FirstName = @FirstName AND LastName = @LastName AND Password = @Password";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Password", password);

                // Open the connection if it's not already open
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                object result = cmd.ExecuteScalar();

                // Close the connection after execution
                con.Close();

                // Validate login credentials
                if (result == null)
                {
                    Response.Write("<script>alert('Invalid First Name, Last Name, or Password. Please try again.');</script>");
                }
                else
                {
                    // Save user details in session
                    Session["FirstName"] = firstName;
                    Session["LastName"] = lastName;

                    // Redirect to the home page
                    Response.Redirect("HomePage.aspx");
                }
            }
            catch (Exception ex)
            {
                // Handle errors gracefully
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }

                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
