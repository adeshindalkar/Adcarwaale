using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_year_project_9662
{
    public partial class ManageDrivers : Page
    {
        // Corrected Database Connection String
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\driver.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            if (!IsPostBack)
            {
                LoadDrivers(); // Load existing drivers into GridView on page load
            }
            
        }

        protected void BtnAddDriver1(object sender, EventArgs e)
        {
            
                string lblDriverName = txtDriverName.Text.Trim();
                string lblPhone = txtPhone.Text.Trim();
                string lblLicenceNo = txtLicenceNo.Text.Trim();
                string lblAvailability = ddlAvailability.SelectedValue;

                if (string.IsNullOrEmpty(lblDriverName) || string.IsNullOrEmpty(lblPhone) || string.IsNullOrEmpty(lblLicenceNo))
                {
                    Response.Write("<script>alert('Please fill all fields');</script>");
                    return;
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO managedriver (drivername, phone, licenceno, availability) VALUES (@drivername, @phone, @licenceno, @availability)", con))
                {
                    cmd.Parameters.AddWithValue("@drivername", lblDriverName);
                    cmd.Parameters.AddWithValue("@phone", lblPhone);
                    cmd.Parameters.AddWithValue("@licenceno", lblLicenceNo);
                    cmd.Parameters.AddWithValue("@availability", lblAvailability);
                    
                    cmd.ExecuteNonQuery();
                    

                    
                }

               
        }
            
        

        private void LoadDrivers()
        {
           
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM managedriver", con))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gridDrivers.DataSource = dt;
                    gridDrivers.DataBind();
                }
            }

        protected void gridDrivers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Assign")
            {
                string drivername = e.CommandArgument.ToString();

                // Check current availability of the driver
                using (SqlCommand checkCmd = new SqlCommand("SELECT availability FROM managedriver WHERE drivername=@drivername", con))
                {
                    checkCmd.Parameters.AddWithValue("@drivername", drivername);
                    object result = checkCmd.ExecuteScalar();

                    if (result != null)
                    {
                        string availability = result.ToString();

                        if (availability == "Available")
                        {
                            // Update availability to Assigned
                            using (SqlCommand updateCmd = new SqlCommand("UPDATE managedriver SET availability='Assigned' WHERE drivername=@drivername", con))
                            {
                                updateCmd.Parameters.AddWithValue("@drivername", drivername);
                                updateCmd.ExecuteNonQuery();
                            }

                            // Reload GridView to reflect changes
                            LoadDrivers();

                            // Show success popup
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Driver assigned successfully!');", true);
                        }
                        else
                        {
                            // Show unavailable message
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Driver is not available. Please select another driver.');", true);
                        }
                    }
                }
            }
        }


        protected void AssignDriver(string customerName, string driverName)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE customer SET drivername = @drivername WHERE cname = @cname", con))
                {
                    cmd.Parameters.AddWithValue("@drivername", driverName);
                    cmd.Parameters.AddWithValue("@cname", customerName);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                Response.Write("<script>alert('Driver assigned successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error assigning driver: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        }



    }
}

