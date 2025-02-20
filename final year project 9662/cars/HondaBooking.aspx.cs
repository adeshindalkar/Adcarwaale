using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class HondaBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookcity(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/CityBooking.aspx");
        }

        protected void bookamaze(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/AmazeBooking.aspx");
        }

        protected void bookjazz(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/JazzBooking.aspx");
        }
    }
}
