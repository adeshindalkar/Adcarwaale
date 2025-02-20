using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class TharBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BookNow_Click(object sender, EventArgs e)
        {
            // Redirect to the pickup details page with car details as query parameters
            Response.Redirect("~/Payment.aspx?car=MahindraThar&price=15000");
        }
    }
}
