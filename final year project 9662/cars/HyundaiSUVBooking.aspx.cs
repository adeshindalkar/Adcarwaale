using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class HyundaiSUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookcreta(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/CretaBooking.aspx");
        }

        protected void bookvenue(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/VenueBooking.aspx");
        }

        protected void booktucson(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/TucsonBooking.aspx");
        }
    }
}
