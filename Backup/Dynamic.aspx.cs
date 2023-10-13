using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Web_Trupurpose
{
    public partial class Dynamic : System.Web.UI.Page
    {
        string abs;
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


            try
            {
                string url1 = "/" + Page.RouteData.Values["Url"];
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT* FROM table_job_post WHERE Post_Url='" + url1.ToString() + "'", cn);
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        this.Page.Title = (string)dr.GetValue(7).ToString() + " -trupurpose.com.ng";
                        this.Page.MetaDescription = (string)dr.GetValue(7).ToString();
                        this.Page.MetaKeywords = (string)dr.GetValue(7).ToString();

                        Label_leading_title.Text = (string)dr.GetValue(7).ToString();
                        name_of_organization.Text = (string)dr.GetValue(1).ToString();
                        job_category.Text = (string)dr.GetValue(2).ToString();
                        location.Text = (string)dr.GetValue(10).ToString();
                        position.Text = (string)dr.GetValue(5).ToString();
                        full_description.Text = (string)dr.GetValue(8).ToString();
                        required_qualification.Text = (string)dr.GetValue(19).ToString();
                        required_age.Text = (string)dr.GetValue(20).ToString();
                        other_information.Text = (string)dr.GetValue(21).ToString();
                        //  image_leading.ImageUrl = (string)dr.GetValue(5).ToString();
                        //  image_leading.AlternateText = (string)dr.GetValue(6).ToString();
                        dr.Close();
                    }
                    else
                    {
                        Response.Redirect("Default.aspx");
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    cmd.Dispose();
                    dr.Close(); dr.Dispose();
                }
            }
            catch (Exception ex)
            {
                result_output.Text = ex.Message;
            } 



            // ################################## RETRIEVE APPLICANT RECORD #############################################
            try
            {
                a_full_name.Text = null; a_phone.Text = null; a_qualification_academic.Text = null; a_qualification_professional.Text = null; a_date_of_birth.Text = null;
                string url1 = "/" + Page.RouteData.Values["Url"];
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT* FROM table_applicant WHERE user_name='" + abs.ToString() + "'", cn);
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        a_full_name.Text = (string)dr.GetValue(3).ToString();
                        a_phone.Text = (string)dr.GetValue(10).ToString();
                        a_qualification_academic.Text = (string)dr.GetValue(11).ToString();
                        a_qualification_professional.Text = (string)dr.GetValue(12).ToString();
                        a_discipline.Text = (string)dr.GetValue(13).ToString();
                        a_date_of_birth.Text = (string)dr.GetValue(4).ToString();
                        dr.Close();
                    }
                    else
                    {
                        Response.Redirect("Default.aspx");
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    cmd.Dispose();
                    dr.Close(); dr.Dispose();
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
                string url1 = Page.RouteData.Values["Url"].ToString();
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string code = url1 + a_full_name.Text;
                MySqlCommand cmd = new MySqlCommand("INSERT INTO Table_job_applications(Post_id,Applicant_user_name,Name_of_Company,Full_Name,Phone,Qualification_Academic,Qualification_Professional,Discipline,Date_of_Birth,Date,Day,Month,Year,Code)VALUES('" + url1.ToString() + "','" + abs.ToString() + "','" + name_of_organization.Text + "','" + a_full_name.Text + "','" + a_phone.Text + "','" + a_qualification_academic.Text + "','" + a_qualification_professional.Text + "','" + a_discipline.Text + "','" + a_date_of_birth.Text + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + code.ToString() + "') ON DUPLICATE KEY UPDATE full_name=values(full_name),phone=values(phone),qualification_academic=values(qualification_academic),qualification_professional=values(qualification_professional),discipline=values(discipline),date_of_birth=values(date_of_birth),code=values(code)", cn);
                try
                {
                    cmd.ExecuteNonQuery();
                    result_output.Text = "Application Successfully Submitted... You will be Contact Soon. Click on Refresh Button to Continue ...";
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
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
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Member-Applicant.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Member-Applicant.aspx");
        }
    }
}