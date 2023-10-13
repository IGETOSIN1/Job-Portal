using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.IO;

namespace Web_Trupurpose
{
    public partial class Member_Employer : System.Web.UI.Page
    {
        General_Class gclass = new General_Class();
        string robot = null; string abs;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                abs = Request.Cookies["cookie_u_name"].Value.ToString();

            }
            catch (Exception ex)
            {
                // Response.Redirect(ex.Message);
                Response.Redirect("Login.aspx");
            }

            gclass.Update1("UPDATE Tbale_Job_Post SET Image_Url='images_post/slider1.jpg' WHERE Image_url=''");
            //################################### FETCH NAME OF EMPLOYER FROM THE DATABASE #######################################################
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT  * FROM Table_Employer WHERE (User_Name='" + abs.ToString() + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        employee_name.Text = (string)dr.GetValue(1).ToString();
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    dr.Close(); dr.Dispose();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                result_output.Text = ex.Message;
            }


            Random rnd = new Random();
            robot = rnd.Next(1, 3000000).ToString();

           /* //################################### FETCH USERS DATA FROM THE DATABASE #######################################################
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT  * FROM Table_Employer WHERE (User_Name='" + abs.ToString() + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        name_of_organization.Text = (string)dr.GetValue(1).ToString();
                        company_email.Text = (string)dr.GetValue(2).ToString();
                        company_phone.Text = (string)dr.GetValue(3).ToString();
                        address.Text = (string)dr.GetValue(4).ToString();
                        city.Text = (string)dr.GetValue(5).ToString();
                        state.Text = (string)dr.GetValue(6).ToString();
                        country.Text = (string)dr.GetValue(7).ToString();
                        contact_name.Text = (string)dr.GetValue(8).ToString();
                        contact_address.Text = (string)dr.GetValue(9).ToString();
                        contact_phone.Text = (string)dr.GetValue(10).ToString();
                        contact_email.Text = (string)dr.GetValue(11).ToString();
                        contact_position.Text = (string)dr.GetValue(12).ToString();
                        company_industry.Text = (string)dr.GetValue(13).ToString();
                        Services.Text = (string)dr.GetValue(14).ToString();
                        user_name.Text = (string)dr.GetValue(19).ToString();
                        password.Text = (string)dr.GetValue(20).ToString();
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    dr.Close(); dr.Dispose();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                result_output.Text = ex.Message;
            }*/


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
            cookie_u_name.Value = "xx";
            cookie_u_name.Expires = DateTime.Now.AddHours(-2);
            Response.SetCookie(cookie_u_name);
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = false;
            Panel_upload_logo.Visible = true;
            Panel_post_job.Visible = false;
            result_output.Text = null;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = true;
            Panel_upload_logo.Visible = false;
            Panel_post_job.Visible = false;
            result_output.Text = null;

            //################################### FETCH USERS DATA FROM THE DATABASE #######################################################
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT  * FROM Table_Employer WHERE (User_Name='" + abs.ToString() + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        name_of_organization.Text = (string)dr.GetValue(1).ToString();
                        company_email.Text = (string)dr.GetValue(2).ToString();
                        company_phone.Text = (string)dr.GetValue(3).ToString();
                        address.Text = (string)dr.GetValue(4).ToString();
                        city.Text = (string)dr.GetValue(5).ToString();
                        state.Text = (string)dr.GetValue(6).ToString();
                        country.Text = (string)dr.GetValue(7).ToString();
                        contact_name.Text = (string)dr.GetValue(8).ToString();
                        contact_address.Text = (string)dr.GetValue(9).ToString();
                        contact_phone.Text = (string)dr.GetValue(10).ToString();
                        contact_email.Text = (string)dr.GetValue(11).ToString();
                        contact_position.Text = (string)dr.GetValue(12).ToString();
                        company_industry.Text = (string)dr.GetValue(13).ToString();
                        Services.Text = (string)dr.GetValue(14).ToString();
                        user_name.Text = (string)dr.GetValue(19).ToString();
                        password.Text = (string)dr.GetValue(20).ToString();
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    dr.Close(); dr.Dispose();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                result_output.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();

               // string query = "INSERT INTO Table_Employer(Name_of_Organization,Company_Email,Company_Phone,Address,City,State,Country,Contact_Name,Contact_Address,Contact_Phone,Contact_Email,Contact_Position,Company_Industry,Services,Date,Day,Month,Year,User_Name,Password,Sms_Company_Verified,Sms_Personal_Verified,Login_Status,Code)VALUES('" + name_of_organization.Text.Replace("'","''") + "','" + company_email.Text.Replace("'","''") + "','" + company_phone.Text.Replace("'","''") + "','" + address.Text.Replace("'","''") + "','" + city.Text.Replace("'","''") + "','" + state.Text.Replace("'","''") + "','" + country.Text.Replace("'","''") + "','" + contact_name.Text.Replace("'","''") + "','" + contact_address.Text.Replace("'","''") + "','" + contact_phone.Text.Replace("'","''") + "','" + contact_email.Text.Replace("'","''") + "','" + contact_position.Text.Replace("'","''") + "','" + company_industry.Text.Replace("'","''") + "','" + Services.Text.Replace("'","''") + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + user_name.Text.Replace("'","''") + "','" + password.Text.Replace("'","''") + "','Pending ...','Pending ...','Employee','" + name_of_organization.Text.Replace("'","''") + "') ON Duplicate Key Update Name_of_organization=values(name_of_organization),company_email=values(company_email),company_phone=values(company_phone),address=values(address),city=values(city),state=values(state),country=values(country),contact_name=values(contact_name),contact_address=values(contact_address),contact_phone=values(contact_phone),contact_email=values(contact_email),contact_position=values(contact_position),company_industry=values(company_industry),services=values(services),user_name=values(user_name),password=values(password),code=values(Code)";
                string query = "UPDATE Table_Employer SET Name_of_Organization='" + name_of_organization.Text.Replace("'","''") + "',Company_Email='" + company_email.Text.Replace("'","''") + "',Company_Phone='" + company_phone.Text.Replace("'","''") + "',Address='" + address.Text.Replace("'","''") + "',City='" + city.Text.Replace("'","''") + "',State='" + state.Text.Replace("'","''") + "',Country='" + country.Text.Replace("'","''") + "',Contact_Name='" + contact_name.Text.Replace("'","''") + "',Contact_Address='" + contact_address.Text.Replace("'","''") + "',Contact_Phone='" + contact_phone.Text.Replace("'","''") + "',Contact_Email='" + contact_email.Text.Replace("'","''") + "',Contact_Position='" + contact_position.Text.Replace("'","''") + "',Company_Industry='" + company_industry.Text.Replace("'","''") + "',Services='" + Services.Text.Replace("'","''") + "',User_Name='" + user_name.Text.Replace("'","''") + "',Password='" + password.Text.Replace("'","''")+"' WHERE User_Name='" + user_name.Text.Replace("'","''") + "'";
                
                MySqlCommand cmd = new MySqlCommand(query, cn);
              
                try
                {
                    cmd.ExecuteNonQuery();
                    result_output.Text = "Update was successful ...";     

                  /*  HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                    cookie_u_name.Value = user_name.Text;
                    cookie_u_name.Expires = DateTime.Now.AddHours(2);
                    Response.SetCookie(cookie_u_name);
                    Response.Redirect("Member-Employer.aspx");*/

                    ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Update was successful ...');</script>");

                    // Response.Redirect("Post-Job.aspx");
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                    //Response.Write(ex.Message);
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    cmd.Dispose();
                }
            }
            catch (Exception ex)
            {
                result_output.Text = ex.Message;
               // Response.Write(ex.Message);
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                result_output.Text = "Select Image to Upload  ...";
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Select Image to Upload ...');</script>");
            }
            else
            {

                if (System.IO.Path.GetExtension(FileUpload1.FileName).ToLower() != ".jpg"
                   && Path.GetExtension(FileUpload1.FileName).ToLower() != ".png"
                   && Path.GetExtension(FileUpload1.FileName).ToLower() != ".gif"
                   && Path.GetExtension(FileUpload1.FileName).ToLower() != ".jpeg")
                {
                    result_output.Text = "Uploaded File must be in Image Format ...";
                    ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in Image Format ...');</script>");

                }

                else
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();

                    try
                    {
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images_post/" + abs.ToString() + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                        result_output.Text = "Profile Image Successfully Uploaded ...";
                        ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Profile Image Successfully Uploaded ...');</script>");
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                    }
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(job_description.Text) || string.IsNullOrWhiteSpace(job_position.Text) || string.IsNullOrWhiteSpace(job_title.Text) || string.IsNullOrWhiteSpace(leading_description.Text) || string.IsNullOrWhiteSpace(full_description.Text) || string.IsNullOrWhiteSpace(post_job_state.Text) || string.IsNullOrWhiteSpace(location.Text) || string.IsNullOrWhiteSpace(required_qualification.Text) || string.IsNullOrWhiteSpace(age_range.Text))
            {
                result_output.Text = "An Important Field is Empty ...";
            }
            else if (job_category.SelectedIndex == 0)
            {
                result_output.Text = "Select Category of Job ...";
            }
            else if (!FileUpload4.HasFile)
            {
                result_output.Text = "Select Banner/ Image/ Logo to Display along ...";
            }
            else if (System.IO.Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpg"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".png"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".gif"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpeg")
            {
                result_output.Text = "Uploaded File must be in Image Format ...";
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in Image Format ...');</script>");

            }
            else if (job_industry.SelectedIndex == 0)
            {
                result_output.Text = "Select Industry ...";
            }
            else
            {
                string interview = null;
                if (CheckBox_interview.Checked == true)
                {
                    interview = "Yes";
                }
                else
                {
                    interview = "No";
                }

                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    string url_img = "Images_Post/" + robot + ".jpg";
                    string url = "/" + employee_name.Text + robot;
                    string code = employee_name.Text + robot;
                    string query = "INSERT INTO Table_Job_Post(Employer_Name,Job_Category,Job_Description,Job_Industry,Job_Position,Job_Title,Leading_Description,Full_Description,State,Location,Image_Url,Post_Url,Status,Date,Day,Month,Year,Code,Required_Qualification,Required_Age,Other_Information,Interview_Category,Sms_Personal_Verified,Sms_Reference_Verified,Job_Posted,User_Name)VALUES('" + employee_name.Text + "','" + job_category.Text + "','" + job_description.Text + "','" + job_industry.Text + "','" + job_position.Text + "','" + job_title.Text + "','" + leading_description.Text + "','" + full_description.Text + "','" + post_job_state.Text + "','" + location.Text + "','" + url_img.ToString() + "','" + url.ToString() + "','Pending ...','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + code.ToString() + "','" + required_qualification.Text + "','" + age_range.Text + "','" + other_information.Text + "','" + interview.ToString() + "','Pending ...','Pending ...','Pending ...','" + abs.ToString() + "')";
                    MySqlCommand cmd = new MySqlCommand(query, cn);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        FileUpload4.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                           
                      //  gclass.panel_format(Panel_post_job);
                        result_output.Text = "Job Successfully Posted ...";
                        ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Job Successfully Posted ...');</script>");

                        // Response.Redirect("Post-Job.aspx");
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                        //Response.Write(ex.Message);
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


              /*  if (FileUpload2.HasFile)
                {

                    if (System.IO.Path.GetExtension(FileUpload2.FileName).ToLower() != ".jpg"
                       && Path.GetExtension(FileUpload2.FileName).ToLower() != ".png"
                       && Path.GetExtension(FileUpload2.FileName).ToLower() != ".gif"
                       && Path.GetExtension(FileUpload2.FileName).ToLower() != ".jpeg")
                    {
                        result_output.Text = "Uploaded File must be in Image Format ...";
                        ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in Image Format ...');</script>");

                    }

                    else
                    {
                        MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                        cn.Open();

                        try
                        {
                            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                             result_output.Text = "Job Successfully Posted ...";
                             ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Job Successfully Posted ...');</script>");
                        }
                        catch (Exception ex)
                        {
                            result_output.Text = ex.Message;
                        }
                    }
                }
                else
                {
                    try
                    {
                        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                        // result_output.Text = "Portal Background Successfully Uploaded ...";
                       // ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Image Successfully Uploaded ...');</script>");
                    }
                    catch (Exception ex)
                    {
                       // result_output.Text = ex.Message;
                    }
                }*/
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = false;
            Panel_upload_logo.Visible = false;
            Panel_post_job.Visible = true;
            result_output.Text = null;
        }
    }
}