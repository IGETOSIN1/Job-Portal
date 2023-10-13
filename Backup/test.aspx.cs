using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Web_Trupurpose
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(first_name.Text))
            {
                result.Text = "*Enter your First Name ...";
                //  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(last_name.Text))
            {
                result.Text = "*Enter your Last Name ...";
                //  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(email.Text))
            {
                result.Text = "*Enter your Email Address ...";
                // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Email Address! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(message.Text))
            {
                result.Text = "*Enter your Message ...";
                // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Message! ')</script>");
            }
            else
            {
                try
                {
                    result.Visible = false;

                    MailMessage mail = new MailMessage();

                    //set the addresses 
                    mail.From = new MailAddress("info@trupurpose.com.ng"); //IMPORTANT: This must be same as your smtp authentication address.
                    mail.To.Add("support@trupurpose.com.ng,tsotade@gmail.com");

                    //set the content 
                    mail.Subject = "Online Enquiry/ Notification from trupurpose.com.ng by " + first_name.Text + " " + last_name.Text + " on " + DateTime.Now; 
                    mail.Body = "THE FOLLOWING ENQUIRY WAS SUBMITTED FROM trupurpose.com.ng \n\n\n Full Name ===>" + first_name.Text + " " + last_name.Text + "\n\n  Email ===>" + email.Text + "\n\n  Phone ===>" + phone.Text + "\n\n  Message ===>" + message.Text + "\n"; // "This is from system.net.mail using C sharp with smtp authentication.";
                    //send the message 
                    SmtpClient smtp = new SmtpClient("mail.trupurpose.com.ng");

                    //IMPORANT:  Your smtp login email MUST be same as your FROM address. 
                    NetworkCredential Credentials = new NetworkCredential("info@trupurpose.com.ng", "trupurpose@1234");
                    smtp.Credentials = Credentials;
                    smtp.Send(mail);

                    // message.Text = null;

                    first_name.Text = null;
                    last_name.Text = null;
                    email.Text = null;
                    phone.Text = null;
                    message.Text = null;

                    result.Text = " *Message Successfully Sent. We will get back to you shortly ... ";
                    result.Visible = true;

                    // Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' *Message Successfully Received! I will get back to you shortly...')</script>");

                }
                catch (Exception ex)
                {
                    result.Visible = true;
                    result.Text = ex.Message;
                }
            }
        }
    }
}