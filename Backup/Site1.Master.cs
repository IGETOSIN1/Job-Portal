using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace Web_Trupurpose
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT DISTINCT(category_general) FROM Table_applicant ORDER BY category_general limit 6";
                MySqlCommand cmd = new MySqlCommand(query, cn);
                try
                {
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList_category.DataSource = dt;
                    DataList_category.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
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


            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT* FROM Table_job_post  WHERE Status='Active' ORDER BY p_id ASC limit 15";
                MySqlCommand cmd = new MySqlCommand(query, cn);
                try
                {
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList_direct.DataSource = dt;
                    DataList_direct.DataBind();
                }
                catch (Exception ex)
                {
                    // result_output.Text = ex.Message;
                    Response.Write(ex.Message);
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