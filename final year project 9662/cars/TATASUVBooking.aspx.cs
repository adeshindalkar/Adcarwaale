using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class TATASUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookharrier(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/HarrierBooking.aspx");
        }

        protected void booksafari(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/SafariBooking.aspx");
        }

        protected void booknexon(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/NexonBooking1.aspx");
        }
    }
}
