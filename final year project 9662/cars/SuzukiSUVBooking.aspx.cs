using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class SuzukiSUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookvitara(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/SUV/GrandVitaraBooking.aspx");
        }

        protected void bookbrezza(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/SUV/BrezzaBooking.aspx");
        }

        protected void bookjimmy(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/SUV/JimmyBooking.aspx");
        }
    }
}
