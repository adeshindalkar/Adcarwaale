using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class SUVBooking : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure the page is loading correctly
        }

        protected void btnSelectFord_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/FORDSUVBooking.aspx");
        }

        protected void btnSelectSuzuki_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/SuzukiSUVBooking.aspx");
        }

        protected void btnSelectMahindra_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/MahindraSUVBooking.aspx");
        }

        protected void btnSelectHyundai_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/HyundaiSUVBooking.aspx");
        }

        protected void btnSelectTata_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/TATASUVBooking.aspx");
        }

        protected void btnSelectToyota_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/cars/ToyotaSUVBooking.aspx");
        }
    }
}
