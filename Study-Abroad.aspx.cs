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
    public partial class Study_Abroad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(first_name.Text))
            {
                result.Text = "*Enter your First Name ...";
                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(last_name.Text))
            {
                result.Text = "*Enter your Last Name ...";
                  Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(phone.Text))
            {
                result.Text = "*Enter your Phone No ...";
                 Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Email Address! ')</script>");
            }
            else
            {
                try
                {
                    result.Visible = false;

                    MailMessage mail = new MailMessage();

                    //set the addresses 
                    mail.From = new MailAddress("info@trupurpose.com.ng"); //IMPORTANT: This must be same as your smtp authentication address.
                    mail.To.Add("support@trupurpose.com.ng,tsotade@gmail.com"); //("igtsystem20@gmail.com");//

                    //set the content 
                    mail.Subject = "Overseas Student Placement Enquiry from trupurpose.com.ng by " + first_name.Text + " " + last_name.Text + " on " + DateTime.Now;
                    mail.Body = "AN ENQUIRY WAS SUBMITTED ON THE OVERSEAS STUDENT PLACEMENT WITH THE FOLLOWING DETAILS; \n\n\n Name ===> " + first_name.Text + " " + last_name.Text + "\n\n Email ===> " + email.Text + "\n\n Phone No ===> " + phone.Text + "\n\n Age ===> " + age.Text + "\n\n Date of Birth ===> " + date_of_birth.Text + "\n\n Gender ===> " + gender.Text + "\n\n Proposed Course ===> " + course.Text + "\n\n Proposed Country ===> " + country.Text + "\n\n Program Type ===> " + type.Text + "\n"; // "This is from system.net.mail using C sharp with smtp authentication.";
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
                    age.Text = null;
                    date_of_birth.Text = null;

                    result.Text = " *Message Successfully Sent. We will get back to you shortly ... ";
                    result.Visible = true;

                     Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' *Message Successfully Received! We will get back to you shortly...')</script>");

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