using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace Web_Trupurpose_New
{
    public partial class Post_Job : System.Web.UI.Page
    {
        string robot = null; string abs;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                abs = Request.Cookies["cookie_status"].Value.ToString();
            }
            catch (Exception ex)
            {
                // Response.Redirect(ex.Message);
                Response.Redirect("Login1.aspx");
            }


            employee_name.Text = "NIL";

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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(job_description.Text) || string.IsNullOrWhiteSpace(job_position.Text) || string.IsNullOrWhiteSpace(job_title.Text) || string.IsNullOrWhiteSpace(leading_description.Text) || string.IsNullOrWhiteSpace(full_description.Text) || string.IsNullOrWhiteSpace(state.Text) || string.IsNullOrWhiteSpace(location.Text) || string.IsNullOrWhiteSpace(required_qualification.Text) || string.IsNullOrWhiteSpace(age_range.Text))
            {
                result_output.Text = "An Important Field is Empty ...";
            }
            else if (job_category.SelectedIndex == 0)
            {
                result_output.Text = "Select Category of Job ...";
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
                    string query = "INSERT INTO Table_Job_Post(Employer_Name,Job_Category,Job_Description,Job_Industry,Job_Position,Job_Title,Leading_Description,Full_Description,State,Location,Image_Url,Post_Url,Status,Date,Day,Month,Year,Code,Required_Qualification,Required_Age,Other_Information,Interview_Category,Sms_Personal_Verified,Sms_Reference_Verified,Job_Posted,User_Name)VALUES('" + employee_name.Text + "','" + job_category.Text + "','" + job_description.Text + "','" + job_industry.Text + "','" + job_position.Text + "','" + job_title.Text + "','" + leading_description.Text + "','" + full_description.Text + "','" + state.Text + "','" + location.Text + "','" + url_img.ToString() + "','" + url.ToString() + "','Active','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + code.ToString() + "','" + required_qualification.Text + "','" + age_range.Text + "','" + other_information.Text + "','" + interview.ToString() + "','Pending ...','Pending ...','Pending ...','" + abs.ToString() + "')";
                    MySqlCommand cmd = new MySqlCommand(query, cn);
                    try
                    {
                        cmd.ExecuteNonQuery();
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


                if (FileUpload1.HasFile)
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
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                            // result_output.Text = "Portal Background Successfully Uploaded ...";
                            // ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Portal Background Successfully Uploaded ...');</script>");
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
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                        // result_output.Text = "Portal Background Successfully Uploaded ...";
                        ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Portal Background Successfully Uploaded ...');</script>");
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                    }
                }
            }


        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            try
            {
                Request.Cookies["cookie_status"].Expires = DateTime.Now.AddHours(-2);
                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                Response.Redirect("Login1.aspx");
            }
        }
    }
}