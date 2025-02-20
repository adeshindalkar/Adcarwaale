using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class VolkswagenBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookpolo(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/PoloBooking.aspx");
        }

        protected void bookvirtus(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/VirtusBooking.aspx");
        }

        protected void bookvento(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/VentoBooking.aspx");
        }
    }
}
