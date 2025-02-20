using System;
using System.Drawing.Printing;
using System.Drawing;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Xml.Linq;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace final_year_project_9662
{
    public partial class successfulpayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve user details from Session
                if (Session["FullName"] != null)
                {
                    lblFullName.Text = Session["FullName"].ToString();
                }
                if (Session["Email"] != null)
                {
                    lblEmail.Text = Session["Email"].ToString();
                }
                if (Session["Phone"] != null)
                {
                    lblPhone.Text = Session["Phone"].ToString();
                }
                if (Session["CarType"] != null)
                {
                    lblCarType.Text = Session["CarType"].ToString();
                }
                if (Session["CarName"] != null)
                {
                    lblCarName.Text = Session["CarName"].ToString();
                }
                if (Session["PickupDate"] != null)
                {
                    lblPickupDate.Text = Session["PickupDate"].ToString();
                }
                if (Session["DropDate"] != null)
                {
                    lblDropDate.Text = Session["DropDate"].ToString();
                }
                if (Session["TotalDays"] != null)
                {
                    lblTotalDays.Text = Session["TotalDays"].ToString();
                }
                if (Session["PickupLocation"] != null)
                {
                    lblPickupLocation.Text = Session["PickupLocation"].ToString();
                }
                if (Session["Amount"] != null)
                {
                    lblAmount.Text = Session["Amount"].ToString();
                }
                if (Session["TotalPrice"] != null)
                {
                    lblTotalPrice.Text = Session["TotalPrice"].ToString();
                }
            }
           
        }

        // Generate and Download Payment Receipt PDF
        protected void btnDownloadReceipt_Click(object sender, EventArgs e)
        {
            if (Session["FullName"] == null || Session["Email"] == null)
            {
                Response.Write("<script>alert('User details not found!');</script>");
                return;
            }

            string fullName = Session["FullName"].ToString();
            string email = Session["Email"].ToString();
            string phone = Session["Phone"] != null ? Session["Phone"].ToString() : "N/A";
            string cartype = Session["CarType"].ToString();
            string carname = Session["CarName"].ToString();
            string pickupdate = Session["PickupDate"].ToString();
            string dropdate = Session["DropDate"].ToString();
            string totaldays = Session["TotalDays"].ToString();
            string pickuplocation = Session["PickupLocation"].ToString();
            string amount = Session["Amount"].ToString();
            string totalprice = Session["TotalPrice"].ToString();
            string transactionId = "TXN" + new Random().Next(100000, 999999).ToString();
            string paymentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            // Create the PDF Document
            Document pdfDoc = new Document(PageSize.A4);
            MemoryStream memoryStream = new MemoryStream();
            PdfWriter.GetInstance(pdfDoc, memoryStream);
            pdfDoc.Open();

            // Fix Font Ambiguity: Use iTextSharp.text.Font explicitly
            iTextSharp.text.Font titleFont = FontFactory.GetFont("Helvetica", 18, iTextSharp.text.Font.BOLD);
            iTextSharp.text.Font normalFont = FontFactory.GetFont("Helvetica", 12, iTextSharp.text.Font.NORMAL);
            iTextSharp.text.Font italicFont = FontFactory.GetFont("Helvetica", 12, iTextSharp.text.Font.ITALIC);

            // Title
            Paragraph title = new Paragraph("Payment Receipt", titleFont)
            {
                Alignment = Element.ALIGN_CENTER
            };
            pdfDoc.Add(title);
            pdfDoc.Add(new Paragraph("\n"));

            // User Details
            pdfDoc.Add(new Paragraph($"Full Name: {fullName}", normalFont));
            pdfDoc.Add(new Paragraph($"Email: {email}", normalFont));
            pdfDoc.Add(new Paragraph($"Phone: {phone}", normalFont));
            pdfDoc.Add(new Paragraph($"CarType: {cartype}", normalFont));
            pdfDoc.Add(new Paragraph($"CarName: {carname}", normalFont));
            pdfDoc.Add(new Paragraph($"PickupDate: {pickupdate}", normalFont));
            pdfDoc.Add(new Paragraph($"DropDate: {dropdate}", normalFont));
            pdfDoc.Add(new Paragraph($"TotalDays: {totaldays}", normalFont));
            pdfDoc.Add(new Paragraph($"PickupLocation: {pickuplocation}", normalFont));
            pdfDoc.Add(new Paragraph($"Amount: {amount}", normalFont));
            pdfDoc.Add(new Paragraph($"TotalPrice: {totalprice}", normalFont));
            pdfDoc.Add(new Paragraph("\n"));

            // Payment Details
            pdfDoc.Add(new Paragraph($"Transaction ID: {transactionId}", normalFont));
            pdfDoc.Add(new Paragraph($"Payment Date: {paymentDate}", normalFont));
            pdfDoc.Add(new Paragraph("\n"));

            // Thank You Message
            pdfDoc.Add(new Paragraph("Thank you for your payment! Your car is been successfully Booked.", italicFont));
            pdfDoc.Add(new Paragraph("Your car will be available at you given Location.", italicFont));

            pdfDoc.Close();

            // Convert PDF to Byte Array
            byte[] bytes = memoryStream.ToArray();
            memoryStream.Close();

            // Download the PDF
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename=Payment_Receipt.pdf");
            Response.BinaryWrite(bytes);
            Response.End();
        }

        // Send a Thank You Email
        private void SendThankYouEmail(string userEmail, string fullName)
        {
            try
            {
                // Replace with your own email credentials
                string senderEmail = "adcarwaale@gmail.com"; // Your email address
                string senderPassword = "vjmm zukl kqib iubk"; // Your email password or app-specific password

                // Configure the SMTP client with Port 587 for TLS
                var smtpClient = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,  // Using Port 587 for TLS encryption
                    Credentials = new NetworkCredential(senderEmail, senderPassword),
                    EnableSsl = true,  // Ensure SSL is enabled
                };

                // Create the email message
                var mailMessage = new MailMessage
                {
                    From = new MailAddress(senderEmail),
                    Subject = "Thank You for Your Payment",
                    Body = $"Dear {fullName},\n\nThank you for completing your payment. Your car is now booked. Your car will be their at your location in given date.\n\nBest regards,\nYour Driving School",
                    IsBodyHtml = false, // Plain text email
                };

                // Add the recipient's email (user’s email entered in the payment form)
                mailMessage.To.Add(userEmail);

                // Send the email
                smtpClient.Send(mailMessage);

                // Display confirmation
                lblEmailConfirmation.Text = userEmail;
            }
            catch (SmtpException smtpEx)
            {
                // Handle SMTP-specific errors
                Console.WriteLine("SMTP Error: " + smtpEx.Message);
            }
            catch (Exception ex)
            {
                // Handle general errors
                Console.WriteLine("General Error: " + ex.Message);
            }
        }

        // Call SendThankYouEmail when the page is loaded
        protected void Page_PreRender(object sender, EventArgs e)
        {
            // Ensure that session values exist and are valid
            if (Session["Email"] != null && Session["FullName"] != null)
            {
                string userEmail = Session["Email"].ToString(); // Get user’s email from session
                string fullName = Session["FullName"].ToString(); // Get user’s full name from session
                SendThankYouEmail(userEmail, fullName); // Call the method to send the thank-you email
            }
        }
    }
}