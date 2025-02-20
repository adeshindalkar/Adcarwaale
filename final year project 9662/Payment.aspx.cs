using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; // Add this line

namespace final_year_project_9662
{
    public partial class Payment : System.Web.UI.Page
    {
        // Connection string to connect with LocalDB
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\user.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure the connection is open
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();


            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                ddlCarName.Items.Clear();
            }
            // Store user details in Session variables
            Session["FullName"] = txtFullName.Text;
            Session["Email"] = txtEmail.Text;
            Session["Phone"] = txtPhone.Text;
            Session["CarType"] = ddlCarType.Text;
            Session["CarName"] = ddlCarName.Text;
            Session["PickupDate"] = TextBox1.Text;
            Session["DropDate"] = txtDropDate.Text;
            Session["TotalDays"] = TextBox2.Text;
            Session["PickupLocation"] = txtPickupLocation.Text;
            Session["Amount"] = txtAmount.Text;
            Session["TotalPrice"] = TextBox3.Text;



        }

        protected void ddlCarType1(object sender, EventArgs e)
        {
            ddlCarName.Items.Clear();

            if (ddlCarType.SelectedValue == "Sedan")
            {
                ddlCarName.Items.Add(new ListItem("Amaze", "Amaze"));
                ddlCarName.Items.Add(new ListItem("Baleno", "Baleno"));
                ddlCarName.Items.Add(new ListItem("Camry", "Camry"));
                ddlCarName.Items.Add(new ListItem("City", "City"));
                ddlCarName.Items.Add(new ListItem("Corolla", "Corolla"));
                ddlCarName.Items.Add(new ListItem("Dzire", "Dzire"));
                ddlCarName.Items.Add(new ListItem("Etios", "Etios"));
                ddlCarName.Items.Add(new ListItem("i20", "i20"));
                ddlCarName.Items.Add(new ListItem("Jazz", "Jazz"));
                ddlCarName.Items.Add(new ListItem("Nexon", "Nexon"));
                ddlCarName.Items.Add(new ListItem("Polo", "Polo"));
                ddlCarName.Items.Add(new ListItem("Swift", "Swift"));
                ddlCarName.Items.Add(new ListItem("Tiago", "Tiago"));
                ddlCarName.Items.Add(new ListItem("Tigor", "Tigor"));
                ddlCarName.Items.Add(new ListItem("Vento", "Vento"));
                ddlCarName.Items.Add(new ListItem("Verna", "Verna"));
                ddlCarName.Items.Add(new ListItem("Vernanew", "Vernanew"));
                ddlCarName.Items.Add(new ListItem("Virtus", "Virtus"));
            }
            else if (ddlCarType.SelectedValue == "SUV")
            {
                ddlCarName.Items.Add(new ListItem("Brezza", "Brezza"));
                ddlCarName.Items.Add(new ListItem("Bronco", "Bronco"));
                ddlCarName.Items.Add(new ListItem("Creta", "Creta"));
                ddlCarName.Items.Add(new ListItem("EcoSport", "EcoSport"));
                ddlCarName.Items.Add(new ListItem("Endeavour", "Endeavour"));
                ddlCarName.Items.Add(new ListItem("Fortuner", "Fortuner"));
                ddlCarName.Items.Add(new ListItem("GrandVitara", "GrandVitara"));
                ddlCarName.Items.Add(new ListItem("Harrier", "Harrier"));
                ddlCarName.Items.Add(new ListItem("Hyryder", "Hyryder"));
                ddlCarName.Items.Add(new ListItem("Jimmy", "Jimmy"));
                ddlCarName.Items.Add(new ListItem("LandCruiser", "LandCruiser"));
                ddlCarName.Items.Add(new ListItem("Nexon", "Nexon"));
                ddlCarName.Items.Add(new ListItem("Safari", "Safari"));
                ddlCarName.Items.Add(new ListItem("Scorpion", "Scorpion"));
                ddlCarName.Items.Add(new ListItem("Thar", "Thar"));
                ddlCarName.Items.Add(new ListItem("Tucson", "Tucson"));
                ddlCarName.Items.Add(new ListItem("Venue", "Venue"));
                ddlCarName.Items.Add(new ListItem("XUV700", "XUV700"));
            }
        }

        protected void txtPickupDate_TextChanged(object sender, EventArgs e)
        {
            DateTime pickupDate, dropDate;

            if (DateTime.TryParse(TextBox1.Text, out pickupDate) && DateTime.TryParse(txtDropDate.Text, out dropDate))
            {
                int totalDays = (dropDate - pickupDate).Days;
                TextBox2.Text = totalDays.ToString();
                CalculateTotalPrice();
            }
        }
        protected void txtDropDate_TextChanged(object sender, EventArgs e)
        {
            DateTime pickupDate, dropDate;

            // Ensure both dates are valid before calculating
            if (DateTime.TryParse(TextBox1.Text, out pickupDate) && DateTime.TryParse(txtDropDate.Text, out dropDate))
            {
                int totalDays = (dropDate - pickupDate).Days;

                // Ensure totalDays is at least 1 (if pickup and drop are the same day, consider 1 day rental)
                if (totalDays <= 0)
                {
                    totalDays = 1;
                }

                TextBox2.Text = totalDays.ToString();
                CalculateTotalPrice();
            }
        }


        protected void txtAmount_TextChanged(object sender, EventArgs e)
        {
            CalculateTotalPrice();
        }

        private void CalculateTotalPrice()
        {
            int totalDays;
            decimal amount;

            if (int.TryParse(TextBox2.Text, out totalDays) && decimal.TryParse(txtAmount.Text, out amount))
            {
                TextBox3.Text = (totalDays * amount).ToString();
            }
        }

        

        protected void btnSubmitPayment_Click(object sender, EventArgs e)
        {
            // SQL command using parameterized query to prevent SQL Injection
            SqlCommand cmd = new SqlCommand("INSERT INTO customer (cname, cemail, cphone, ccarname, cpickupdate, cpickuplocation) VALUES (@cname, @cemail, @cphone, @ccarname, @cpickupdate, @cpickuplocation)", con);

            // Adding parameters to prevent SQL Injection
            cmd.Parameters.AddWithValue("@cname", txtFullName.Text.Trim());
            cmd.Parameters.AddWithValue("@cemail", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@cphone", txtPhone.Text.Trim());
            cmd.Parameters.AddWithValue("@ccarname", ddlCarName.Text.Trim());
            cmd.Parameters.AddWithValue("@cpickupdate", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@cpickuplocation", txtPickupLocation.Text.Trim());// Consider hashing the password in a real application

            // Execute the query
            cmd.ExecuteNonQuery();

            // Clear the input fields after successful registration
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
    
            TextBox1.Text = "";
            txtPickupLocation.Text = "";




            Response.Redirect("successfulpayment.aspx");

        }
        


    }
}
