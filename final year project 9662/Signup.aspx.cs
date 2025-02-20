using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class Signup : System.Web.UI.Page
    {
        // Connection string to connect with LocalDB
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Signup.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           

            // Ensure the connection is open
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                // SQL command using parameterized query to prevent SQL Injection
                SqlCommand cmd = new SqlCommand("INSERT INTO Signup (FirstName, LastName, Email, Password) VALUES (@FirstName, @LastName, @Email, @Password)", con);

                // Adding parameters to prevent SQL Injection
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim()); // Consider hashing the password in a real application

                // Execute the query
                cmd.ExecuteNonQuery();

                // Clear the input fields after successful registration
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";

                // Display success message and redirect to login page
                Response.Write("<script>alert('Registration successful! Redirecting to login.'); window.location='Login.aspx';</script>");
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                // Display or log error
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
