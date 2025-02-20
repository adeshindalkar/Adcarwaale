using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class HyundaiBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookverna(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/VernaBooking.aspx");
        }

        protected void bookvernanew(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/VernanewBooking.aspx");
        }

        protected void booki20(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/i20Booking.aspx");
        }
    }
}
