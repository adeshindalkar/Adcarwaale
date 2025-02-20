using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class MarutiSuzukiBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any logic to load data or initialize controls on page load
        }

        // Method to handle booking button clicks
        protected void bookswift(object sender, EventArgs e)
        {
            // Redirect to Ford Endeavour booking page
            Response.Redirect("~/sedan/SwiftBooking.aspx");
        }

        protected void bookdzire(object sender, EventArgs e)
        {
            // Redirect to Ford EcoSport booking page
            Response.Redirect("~/sedan/DzireBooking.aspx");
        }

        protected void bookbaleno(object sender, EventArgs e)
        {
            // Redirect to Ford Bronco booking page
            Response.Redirect("~/sedan/BalenoBooking.aspx");
        }
    }
}
