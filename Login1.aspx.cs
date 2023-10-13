using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Web_Trupurpose_New
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(username.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert(' Enter Your User Name ... ')</script>");
            }
            else if (string.IsNullOrWhiteSpace(password.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert(' Enter Your Password ... ')</script>");
            }
            else
            {
                if (username.Text == "Trupurpose" && password.Text == "igtsystem20")
                {
                    HttpCookie cookie_username = new HttpCookie("cookie_status");
                    cookie_username.Value = "Admin";
                    cookie_username.Expires = DateTime.Now.AddHours(2);
                    Response.SetCookie(cookie_username);
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    try
                    {
                        MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                        cn.Open();
                        string query = "SELECT* FROM Table_User WHERE User_Name='" + username.Text + "' AND Password='" + password.Text + "'";
                        MySqlCommand cmd = new MySqlCommand(query, cn);
                        MySqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            HttpCookie cookie_username = new HttpCookie("cookie_status");
                            cookie_username.Value = "Admin";
                            cookie_username.Expires = DateTime.Now.AddHours(2);
                            Response.SetCookie(cookie_username);
                            Response.Redirect("Post-Job.aspx");
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script>alert(' Incorrect User Name or Password ... ')</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }

                }
            }
        }
    }
}