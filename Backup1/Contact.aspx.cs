using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Web_Trupurpose_New
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //////////////////////////////////////////////////////////////////////////////////////
            if (string.IsNullOrWhiteSpace(firstname.Text))
            {
               // result.Text = "*Enter your First Name ...";
                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(lastname.Text))
            {
               // result.Text = "*Enter your Last Name ...";
                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(email.Text))
            {
               // result.Text = "*Enter your Email Address ...";
                 Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Email Address! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(Message.Text))
            {
               // result.Text = "*Enter your Message ...";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Message! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(category.Text))
            {
                // result.Text = "*Enter your Message ...";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Select Category! ')</script>");
            }
            else
            {
                try
                {
                  //  result.Visible = false;

                    MailMessage mail = new MailMessage();

                    //set the addresses 
                    mail.From = new MailAddress("info@trupurpose.com.ng"); //IMPORTANT: This must be same as your smtp authentication address.
                    mail.To.Add("support@trupurpose.com.ng,tsotade@gmail.com");

                    //set the content 
                    mail.Subject = "Online Email Enquiry/ Notification from trupurpose.com.ng by " + firstname.Text + " " + lastname.Text + " on " + DateTime.Now;
                    mail.Body = "THE FOLLOWING ENQUIRY WAS SUBMITTED FROM CONTACT PAGE of trupurpose.com.ng \n\n\n"
                        +" Full Name ===>" + firstname.Text + " " + lastname.Text 
                        + "\n\n  Email ===>" + email.Text
                        + "\n\n  Phone ===>" + phone.Text 
                        + "\n\n  Message ===>" + Message.Text
                         + "\n\n  Category ===>" + category.Text
                        + "\n"; // "This is from system.net.mail using C sharp with smtp authentication.";
                    //send the message 
                    SmtpClient smtp = new SmtpClient("mail.trupurpose.com.ng");

                    //IMPORANT:  Your smtp login email MUST be same as your FROM address. 
                    NetworkCredential Credentials = new NetworkCredential("info@trupurpose.com.ng", "trupurpose@1234");
                    smtp.Credentials = Credentials;
                    smtp.Send(mail);

                    // message.Text = null;

                    firstname.Text = null;
                    lastname.Text = null;
                    email.Text = null;
                    phone.Text = null;
                    Message.Text = null;
                    category.Text = null;

                   // result.Text = " *Message Successfully Sent. We will get back to you shortly ... ";
                   // result.Visible = true;

                     Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' *Message Successfully Received! I will get back to you shortly...')</script>");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                   // result.Visible = true;
                   // result.Text = ex.Message;
                }
            }
            /////////////////////////////////////////////////////////////////////////////////////
        }
    }
}