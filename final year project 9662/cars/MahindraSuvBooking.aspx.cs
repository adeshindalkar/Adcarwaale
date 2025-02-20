using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class MahindraSuvBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookxuv700(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/XUV700Booking.aspx");
        }

        protected void bookscorpion(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/ScorpioNBooking.aspx");
        }

        protected void bookthar(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/TharBooking.aspx");
        }
    }
}
