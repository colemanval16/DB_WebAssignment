using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Toodle
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            protected void SendMail()
        {
 
            // Gmail Address from where you send the mail
            string fromAddress = "colemanval16@gmail.com";
            // any address where the email will be sending
            string toAddress = txtEmail.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "Kohsamu1";
            // Passing the values and make a email formate to display
            string subject = txtStudentNo.Text.ToString();
            string body = "From: " + txtFName.Text + " " + txtLName + "\n";
            body += "Email: " + txtEmail.Text + "\n";
            body += "Student Number: " + txtStudentNo.Text + "\n";
            body += "Message: \n" + txtMsg.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                DisplayMessage.Text = "Your message has been sent, a lecturer will be in contact shortly.";
                DisplayMessage.Visible = true;
                txtFName.Text = "";
                txtLName.Text = "";
                txtEmail.Text = "";
                txtStudentNo.Text = "";
                txtMsg.Text = "";
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);
            }
        }
        
    }
}