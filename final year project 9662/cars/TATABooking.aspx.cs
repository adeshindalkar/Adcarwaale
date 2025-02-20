using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class TATABooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void booknexon(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/NexonBooking.aspx");
        }

        protected void booktigor(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/TigorBooking.aspx");
        }

        protected void booktiago(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/TiagoBooking.aspx");
        }
    }
}
