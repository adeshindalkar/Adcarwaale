using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class ToyotaSUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookfortuner(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/FortunerBooking.aspx");
        }

        protected void bookhyryder(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/HyryderBooking.aspx");
        }

        protected void bookcruiser(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/LandCruiserBooking.aspx");
        }
    }
}
