using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail; 
using System.Net;

namespace Toodle
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMail(object sender, EventArgs e)
        {
            if (!IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    MailMessage msg = new MailMessage();
                    msg.To.Add("toodle.contact@gmail.com");
                    msg.CC.Add("art1234575@gmail.com");
                    msg.From = new MailAddress(txtEmail.Text);
                    msg.Subject = "Contact form query from: " + txtFName.Text + " " + txtLName.Text + ", Student No: " + txtStudentNo.Text;
                    msg.Body = txtMsg.Text + "\nFrom email: " + msg.From;

                    using (var client = new SmtpClient("smtp.gmail.com", 587)
                    {
                        Credentials = new NetworkCredential("toodle.contact@gmail.com", "toodle.contact@"),
                        EnableSsl = true
                    })
                    {
                        client.Send(msg);
                    }
                    lblDisplayMessage.Text = "Your message was sent!";
                    Reset();
                }
                catch (Exception ex)
                {
                    //lblDisplayMessage.Text = ex.Message;
                    lblDisplayMessage.Text = "Failed. Try again.";
                }
            }
        }

        protected void Reset()
        {
            txtFName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtStudentNo.Text = "";
            txtMsg.Text = "";
        }
    }
}