using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace Web_Trupurpose_New
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string u_name = null;
            if (string.IsNullOrWhiteSpace(user_name.Text))
            {
                result_output.Text = " Enter Your User Name ...";
            }
            else if (String.IsNullOrWhiteSpace(password.Text))
            {
                result_output.Text = " Enter Your Password ...";
            }
            else
            {
                bool isapplicant = false; bool isemployer = false;
                //################################### FIRST PHASE #######################################################
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Applicant WHERE (User_Name='" + user_name.Text + "' AND Password='" + password.Text + "') or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')", cn);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    try
                    {
                        if (dr.Read())
                        {
                            isapplicant = true;
                            u_name = (string)dr.GetValue(0).ToString();
                        }
                        else
                        {
                            isapplicant = false;
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

                //################################### SECOND PHASE #######################################################
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Employer WHERE (User_Name='" + user_name.Text + "' AND Password='" + password.Text + "') or (Company_Email='" + user_name.Text + "' AND Password='" + password.Text + "')", cn);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    try
                    {
                        if (dr.Read())
                        {
                            isemployer = true;
                            u_name = (string)dr.GetValue(0).ToString();
                        }
                        else
                        {
                            isemployer = false;
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

                if (isapplicant == true)
                {
                    HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                    cookie_u_name.Value = u_name.ToString();
                    cookie_u_name.Expires = DateTime.Now.AddHours(2);
                    Response.SetCookie(cookie_u_name);
                    Response.Redirect("Member-Applicant.aspx");
                }
                else if (isemployer == true)
                {
                    HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                    cookie_u_name.Value = u_name.ToString();
                    cookie_u_name.Expires = DateTime.Now.AddHours(2);
                    Response.SetCookie(cookie_u_name);
                    Response.Redirect("Member-Employer.aspx");
                }
                else
                {
                    result_output.Text = "Invalid UserName/ Email or Password!";
                    //ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "err_msg", "alert('Invalid UserName/ Email or Password!)');", true);
                }
            }
        }
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //  }
    }
}