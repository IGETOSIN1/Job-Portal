using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Net;
using System.Net.Mail;

namespace Web_Trupurpose_New
{
    public partial class requeststaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* try
            {
                Response.ContentType = "application/pdf";
                string filePath = "staffrequest.pdf";
                Response.ClearHeaders();
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
                Response.TransmitFile(HttpContext.Current.Server.MapPath("~/") + "\\PDF\\" + filePath);
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }/*/
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            ///////////////////////////////////////////////
            try
            {
                title.Visible = false;
                name1.Text = "";
                organization1.Text = "";
                residential_address1.Text = "";
                postal_address1.Text = "";
                position1.Text = "";
                working_hour1.Text = "";
                salary_range1.Text = "";
                age_range1.Text = "";
                background_check1.Text = "";
                background_fee_of1.Text = "";
                psychometric_test1.Text = "";
                psychometric_fee_of1.Text = "";
                search_fee_of1.Text = "";
                title1.Text = "";
                email1.Text = "";
                phone1.Text = "";

                //1, Adeniyi Jone Street
                name1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + name.Text + " <br/><br/>";
                organization1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + organization.Text + " <br/><br/>";
                residential_address1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + residential_address.Text + " <br/><br/>";
                postal_address1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + postal_address.Text + " <br/><br/>";
                position1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + position.Text + " <br/><br/>";
                working_hour1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + working_hour.Text + " <br/><br/>";
                salary_range1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#" + salary_range.Text + " <br/><br/>";
                age_range1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + age_range.Text + " <br/><br/>";
                background_check1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + background_check.Text + " <br/><br/>";
                background_fee_of1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#" + background_fee_of.Text + " <br/><br/>";
                psychometric_test1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + psychometric_test.Text +" <br/><br/>";
                psychometric_fee_of1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#" + psychometric_fee_of.Text + " <br/><br/>";
                search_fee_of1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#" + search_fee_of.Text +" <br/><br/>";
                title1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + title.Text +" <br/><br/>";
                email1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + email.Text +" <br/><br/>";
                phone1.Text = " : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + phone.Text + " <br/><br/>";



                Response.ContentType = "application/pdf";
                 Response.AddHeader("content-disposition", "inline;filename=Employees.pdf");
                 Response.Cache.SetCacheability(HttpCacheability.NoCache);
                 StringWriter sw = new StringWriter();
                 HtmlTextWriter hw = new HtmlTextWriter(sw);
                 Panel1.RenderControl(hw);
                 StringReader sr = new StringReader(sw.ToString());
                 Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
 #pragma warning disable CS0612 // Type or member is obsolete  
                 HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
 #pragma warning restore CS0612 // Type or member is obsolete  
                 PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                 pdfDoc.Open();
                 htmlparser.Parse(sr);
                 pdfDoc.Close();
                 Response.Write(pdfDoc);
                 Response.End();

                title.Visible = true;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            //////////////////////////////////////////////
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //////////////////////////////////////////////////////////////////////////////////////
            if (title.SelectedIndex==-1)
            {
                // result.Text = "*Enter your First Name ...";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Select your title! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(name.Text))
            {
                // result.Text = "*Enter your Last Name ...";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Enter your Name! ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(email.Text))
            {
                // result.Text = "*Enter your Email Address ...";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' * Select Gender! ')</script>");
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
                    mail.Subject = "Online REQUEST FOR STAFF Form Submission from trupurpose.com.ng by " + name.Text + " on " + DateTime.Now;
                    mail.Body = "\n A FORM WAS SUBMITTED FROM THE REQUEST FOR STAFF PAGE of trupurpose.com.ng. With the following Details \n"
                        + "\n\n Title ===>" + title.Text
                        + "\n\n Name ===>" + name.Text
                        + "\n\n Organization ===>" + organization.Text
                        + "\n\n  Residential Address ===>" + residential_address.Text
                         + "\n\n  Postal Address ===>" + postal_address.Text
                        + "\n\n  Position ===>" + position.Text
                        + "\n\n  Working Hours ===>" + working_hour.Text
                        + "\n\n  Email ===>" + email.Text
                        + "\n\n  Phone ===>" + phone.Text
                        + "\n\n  Salary Range ===>" + salary_range.Text
                        + "\n\n  Age Range ===>" + age_range.Text
                         + "\n\n  Is Background Check Required? ===>" + background_check.Text
                         + "\n\n  If Yes, You will pay a Background Fees of ===>" + background_fee_of.Text
                         + "\n\n  Is Psychometric Test Required ===>" + psychometric_test.Text
                          + "\n\n  If Yes, You will pay a Background Fees of ===>" + psychometric_fee_of.Text
                         + "\n\n  I agree to pay Search Fees of ===>" + search_fee_of.Text
                         + "\n\n  I have read and understand the terms and conditions of this recruitment service, and I agree to them."
                        + "\n"; // "This is from system.net.mail using C sharp with smtp authentication.";
                    //send the message 
                    SmtpClient smtp = new SmtpClient("mail.trupurpose.com.ng");

                    //IMPORANT:  Your smtp login email MUST be same as your FROM address. 
                    NetworkCredential Credentials = new NetworkCredential("info@trupurpose.com.ng", "trupurpose@1234");
                    smtp.Credentials = Credentials;
                    smtp.Send(mail);

                    // message.Text = null;

                    name.Text = null;
                    title.Text = null;
                    email.Text = null;
                    phone.Text = null;
                    organization.Text = null;
                    residential_address.Text = null;
                    postal_address.Text = null;
                    position.Text = null;
                    working_hour.Text = null;
                    salary_range.Text = null;
                    age_range.Text = null;
                    background_check.Text = null;
                    background_fee_of.Text = null;
                    psychometric_test.Text = null;
                    psychometric_fee_of.Text = null;
                    search_fee_of.Text = null;
                    // result.Text = " *Message Successfully Sent. We will get back to you shortly ... ";
                    // result.Visible = true;

                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "<script> alert(' *Form Successfully Submitted! We will get back to you..')</script>");

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