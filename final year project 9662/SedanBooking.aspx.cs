using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class SedanBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle Maruti Suzuki booking button click
        protected void btnSelectMaruti_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/MarutiSuzukiBooking.aspx");
        }

        // Method to handle TATA booking button click
        protected void btnSelectTATA_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/TATABooking.aspx");
        }

        // Method to handle Volkswagen booking button click
        protected void btnSelectVolkswagen_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/VolkswagenBooking.aspx");
        }

        // Method to handle Toyota booking button click
        protected void btnSelectToyota_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/ToyotaBooking.aspx");
        }

        // Method to handle Hyundai booking button click
        protected void btnSelectHyundai_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/HyundaiBooking.aspx");
        }

        // Method to handle Honda booking button click
        protected void btnSelectHonda_Click(object sender, EventArgs e)
        {
            // Redirect to the appropriate booking page
            Response.Redirect("~/cars/HondaBooking.aspx");
        }
    }
}
