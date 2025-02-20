using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class i20Booking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BookNow_Click(object sender, EventArgs e)
        {
            // Redirect to PickupDetails.aspx with car details as query parameters
            Response.Redirect("~/Payment.aspx?car=i20&price=2500");
        }
    }
}
