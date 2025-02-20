using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class ToyotaBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookcorolla(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/CorollaBooking.aspx");
        }

        protected void bookcamry(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/CamryBooking.aspx");
        }

        protected void booketios(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/EtiosBooking.aspx");
        }
    }
}
