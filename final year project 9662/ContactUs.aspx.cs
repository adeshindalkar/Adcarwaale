using System;
using System.Web.UI;

namespace final_year_project_9662
{
    public partial class ContactUs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add logic to load page content if needed.
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Here you can capture the form data and process it, like saving it to a database or sending an email.

            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string subject = txtSubject.Text;
            string message = txtMessage.Text;

            // Example: Store the information in a database or send an email (logic for this is omitted for brevity)
            // You can redirect to a thank you page or display a confirmation message.
            Response.Write("<script>alert('Thank you for reaching out! We will get back to you soon.');</script>");

            // Optionally clear the form fields
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}
