using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class FORDSUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void booknow1(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/EndeavourBooking.aspx");
        }

        protected void booknow2(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/EcoSportBooking.aspx");
        }

        protected void booknow3(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/BroncoBooking.aspx");
        }
    }
}
