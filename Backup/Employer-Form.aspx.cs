using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using RestSharp;

namespace Web_Trupurpose
{
    public partial class Employee_Form : System.Web.UI.Page
    {
        General_Class gclass = new General_Class();
        string sms_no = null;
       /* public string send_sms(string numb, string cod, TextBox txt)
        {
            if (!string.IsNullOrWhiteSpace(numb.ToString()) && !string.IsNullOrWhiteSpace(cod.ToString()) && !txt.Text.Contains("Sen") && Convert.ToDecimal(bl.Text) > 0)
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection("Server=MYSQL5008.Smarterasp.net;Database=db_9b1853_sact;Uid=9b1853_sact;Pwd=admin1234;Connection Timeout=75500;");
                    cn.Open();
                    MySqlCommand mmd = new MySqlCommand("UPDATE Table_sms_balance_m set balance=balance-'" + Convert.ToDecimal(1.99) + "' WHERE School_ID='xxx-711288' AND Act='xxx-yyy-253027-52'", cn);

                    string url; string snd = "Trupurpose";
                    string stt = "Trupurpose Verification Code is:      " + cod.ToString();
                    try
                    {
                        //////////////////////////////////
                        string nbr = "234" + numb.Substring(numb.Length - 10);

                        var client = new RestClient("https://api.infobip.com/sms/1/text/single");

                        var request = new RestRequest(Method.POST);
                        request.AddHeader("accept", "application/json");
                        request.AddHeader("content-type", "application/json");
                        request.AddHeader("authorization", "Basic bWVtZVNDTzE6VGVzdDEyMyE=");
                        request.AddParameter("application/json", "{\"from\":\"" + snd.TrimEnd() + "\", \"to\":[  \"" + nbr.TrimEnd() + "\"],\"text\":\"" + stt.TrimEnd() + "\"}", ParameterType.RequestBody);

                        IRestResponse response = client.Execute(request);
                        //////////////////////////////////
                        txt.Text = "Send";
                        mmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose(); mmd.Dispose();
                      
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                   // Response.Write(ex.Message);
                }
            }
            return "Sola";
        }*/
        public string remind_director(string compan)
        {
            if (Convert.ToDecimal(bl.Text) > 0)
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection("Server=MYSQL5008.Smarterasp.net;Database=db_9b1853_sact;Uid=9b1853_sact;Pwd=admin1234;Connection Timeout=75500;");
                    cn.Open();
                    MySqlCommand mmd = new MySqlCommand("UPDATE Table_sms_balance_m set balance=balance-'" + Convert.ToDecimal(1.99) + "' WHERE School_ID='xxx-711288' AND Act='xxx-yyy-253027-52'", cn);

                    string url; string snd = "Trupurpose";
                    string numbe = "2348033234172";
                    string stt = compan.ToString() + "             had just registered as employee or recruiter from trupurpose.com.ng ...";
                  
                    try
                    {

                        var client = new RestClient("https://api.infobip.com/sms/1/text/single");

                        var request = new RestRequest(Method.POST); var request1 = new RestRequest(Method.POST);
                        request.AddHeader("accept", "application/json");
                        request.AddHeader("content-type", "application/json");
                        request.AddHeader("authorization", "Basic bWVtZVNDTzE6VGVzdDEyMyE=");
                        request.AddParameter("application/json", "{\"from\":\"" + snd.TrimEnd() + "\", \"to\":[  \"" + numbe.TrimEnd() + "\"],\"text\":\"" + stt.TrimEnd() + "\"}", ParameterType.RequestBody);

                        IRestResponse response = client.Execute(request);
                    
                        //////////////////////////////////
                        mmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose(); mmd.Dispose();
                       /* myResp.Close();
                        respStreamReader.Close(); respStreamReader.Dispose();*/
                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = ex.Message;
                    // Response.Write(ex.Message);
                }
            }
                return "Sola";
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rd = new Random();
            string ab = rd.Next(1, 99000).ToString();
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("INSERT INTO Table_SMS_Code(SMS_code,Status,Date)VALUES('" + ab.ToString() + "','Dormant','" + DateTime.Now + "') ON DUPLICATE KEY UPDATE SMS_Code=values(SMS_Code),Status=Values(Status),Date=Values(Date)", cn);
                try
                {
                    cmd.ExecuteNonQuery();
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




            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT* FROM Table_SMS_Code WHERE Status='Dormant' limit 1", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        sms_no = (string)dr.GetValue(1).ToString();
                        //u_name = (string)dr.GetValue(0).ToString();
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


            try
            {
                MySqlConnection cn = new MySqlConnection("Server=MYSQL5008.Smarterasp.net;Database=db_9b1853_sact;Uid=9b1853_sact;Pwd=admin1234;Connection Timeout=75500;");
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT* FROM table_sms_balance WHERE Act='xxx-yyy-253027-52' AND School_ID='xxx-711288'", cn);
                MySqlDataReader dr5 = cmd.ExecuteReader();
                try
                {

                    if (dr5.Read())
                    {
                        bl.Text = (string)dr5.GetValue(3).ToString();//"Current SMS Balance: \t \t \t \t \t " + (string)dr5.GetValue(3).ToString() + " unit(s)";
                    }
                }
                catch (Exception ex)
                {
                    //MessageBox.Show(ex.Message);
                }
                finally
                {
                    cn.Close(); cn.Dispose();
                    cmd.Dispose();
                    dr5.Close(); dr5.Dispose();
                }
            }
            catch (Exception ex)
            {
               // result_output.Text = ex.Message;
                // Response.Write(ex.Message);
            }
            if (string.IsNullOrWhiteSpace(bl.Text))
            {
                bl.Text = "0";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if (string.IsNullOrWhiteSpace(name_of_organization.Text))
            {
                result_output.Text = "Enter Name of Company/ Organization ...";
            }
            else if (string.IsNullOrWhiteSpace(contact_name.Text))
            {
                result_output.Text = "Enter Name of Contact Person ...";
            }
           /* else if (string.IsNullOrWhiteSpace(company_email.Text))
            {
                result_output.Text = "Enter Your Email ...";
            }*/
            else if (string.IsNullOrWhiteSpace(user_name.Text))
            {
                result_output.Text = "Enter Prefered User Name ...";
            }
            else if (string.IsNullOrWhiteSpace(password.Text))
            {
                result_output.Text = "Enter Preferred Password ...";
            }
            else if (string.IsNullOrWhiteSpace(confirm_password.Text))
            {
                result_output.Text = "Confirm Your Preferred Password ...";
            }
             else if (password.Text != confirm_password.Text)
             {
                 result_output.Text = "Password Does Not Match ...";
             }
             else if (CheckBox1.Checked==false)
             {
                 result_output.Text = "You must accept our Terms and Conditions to Submit ...";
             }
            /* else if (v_code.Text.Trim() != sms_no.ToString().Trim())
             {
                 result_output.Text = "Verification Code is Incorrect ...";
             }*/
             else
             {

                 bool is_username_free = false; bool is_name_free = false; bool is_email_free = false;
                 //################################### FIRST PHASE TEST #######################################################
                 try
                 {
                     MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                     cn.Open();
                     MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Employer WHERE (User_Name='" + user_name.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                     MySqlDataReader dr = cmd.ExecuteReader();
                     try
                     {
                         if (dr.Read())
                         {
                             is_username_free = false;
                             //u_name = (string)dr.GetValue(0).ToString();
                         }
                         else
                         {
                             is_username_free = true;
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

                 //################################### SECOND PHASE TEST #######################################################
                 try
                 {
                     MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                     cn.Open();
                     MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Employer WHERE (Name_of_Organization='" + name_of_organization.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                     MySqlDataReader dr = cmd.ExecuteReader();
                     try
                     {
                         if (dr.Read())
                         {
                             is_name_free = false;
                             //u_name = (string)dr.GetValue(0).ToString();
                         }
                         else
                         {
                             is_name_free = true;
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

                 //################################### THIRD PHASE TEST #######################################################
                 try
                 {
                     MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                     cn.Open();
                     MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Employer WHERE (Company_Email='" + company_email.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                     MySqlDataReader dr = cmd.ExecuteReader();
                     try
                     {
                         if (dr.Read())
                         {
                             is_email_free = false;
                             //u_name = (string)dr.GetValue(0).ToString();
                         }
                         else
                         {
                             is_email_free = true;
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
                 //// ######################### BEGIN INSERT ############################
                 if (is_username_free == false)
                 {
                     result_output.Text = "User Name already taken ...";
                 }
                 else if (is_name_free == false)
                 {
                     result_output.Text = "Company/ Organization already Registered ...";
                 }
                 else if (is_email_free == false)
                 {
                     result_output.Text = "Email already in Used ...";
                 }
                 else
                 {


                     try
                     {
                         MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                         cn.Open();

                         string query = "INSERT INTO Table_Employer(Name_of_Organization,Company_Email,Company_Phone,Address,City,State,Country,Contact_Name,Contact_Address,Contact_Phone,Contact_Email,Contact_Position,Company_Industry,Services,Date,Day,Month,Year,User_Name,Password,Sms_Company_Verified,Sms_Personal_Verified,Login_Status,Code)VALUES('" + name_of_organization.Text.Replace("'","''") + "','" + company_email.Text.Replace("'","''") + "','" + company_phone.Text.Replace("'","''") + "','" + address.Text.Replace("'","''") + "','" + city.Text.Replace("'","''") + "','" + state.Text.Replace("'","''") + "','" + country.Text.Replace("'","''") + "','" + contact_name.Text.Replace("'","''") + "','" + contact_address.Text.Replace("'","''") + "','" + contact_phone.Text.Replace("'","''") + "','" + contact_email.Text.Replace("'","''") + "','" + contact_position.Text.Replace("'","''") + "','" + company_industry.Text.Replace("'","''") + "','" + Services.Text.Replace("'","''") + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + user_name.Text.Replace("'","''") + "','" + password.Text.Replace("'","''") + "','Pending ...','Pending ...','Employee','" + name_of_organization.Text.Replace("'","''") + "')";
                         MySqlCommand cmd = new MySqlCommand(query, cn);
                         try
                         {
                             cmd.ExecuteNonQuery();
                             remind_director(name_of_organization.Text);
                             General_Class gclass = new General_Class();
                             gclass.Update1("DELETE FROM Table_SMS_Code WHERE SMS_Code='" + sms_no.ToString() + "'");
                        
                             gclass.panel_format(Panel1);
                             result_output.Text = "Registration was successful ...";

                             System.Web.HttpCookie cookie_u_name = new System.Web.HttpCookie("cookie_u_name");
                             cookie_u_name.Value = user_name.Text;
                             cookie_u_name.Expires = DateTime.Now.AddHours(2);
                             Response.SetCookie(cookie_u_name);
                             Response.Redirect("Redirect1.aspx");

                             ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Registration was successful ...');</script>");

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
                 }
             }




        }

        protected void address_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void city_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void state_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void country_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void contact_name_TextChanged(object sender, EventArgs e)
        {
          //  send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void contact_address_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void contact_email_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void contact_position_TextChanged(object sender, EventArgs e)
        {
          //  send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
          //  send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void company_industry_SelectedIndexChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void user_name_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
           // TextBox1.Text = null;
           // send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }

        protected void contact_phone_TextChanged(object sender, EventArgs e)
        {
          //  send_sms(contact_phone.Text, sms_no.ToString(), TextBox1);
        }
    }
}