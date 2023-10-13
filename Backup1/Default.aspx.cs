using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace Web_Trupurpose_New
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    string query = "SELECT* FROM Table_job_post WHERE Status='Active' ORDER BY p_id Desc Limit " + number_index.Text + "," + number_range.Text;
                    MySqlCommand cmd = new MySqlCommand(query, cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        DataList1.DataSource = dt;
                        DataList1.DataBind();
                        display.Text = "Displayed";
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
            }

            // TRYING TO COUNT ACTIVES ADVERTS
            if (count.Text == "0")
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    string query = "SELECT count(p_id) FROM Table_job_post  WHERE Status='Active'";
                    MySqlCommand cmd = new MySqlCommand(query, cn);
                    MySqlDataReader dr = cmd.ExecuteReader();
                    try
                    {
                        if (dr.Read())
                        {
                            count.Text = (string)dr.GetValue(0).ToString();
                        }
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
                        dr.Close(); dr.Dispose();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }

        }

        public void btnNext_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(count.Text) > Convert.ToInt32(number_index.Text))
                {
                    number_index.Text = (Convert.ToInt32(number_index.Text) + 15).ToString();
                    number_range.Text = (Convert.ToInt32(number_range.Text) + 15).ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Default.aspx");
            }

            // START OF EXPRESS WITH IMAGES
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT* FROM Table_job_post WHERE Status='Active' ORDER BY p_id Desc Limit " + number_index.Text + "," + number_range.Text;
                MySqlCommand cmd = new MySqlCommand(query, cn);
                try
                {
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
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

        }

        public void btnPrev_ServerClick(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(number_index) > 0)
                {
                    number_index.Text = (Convert.ToInt32(number_index.Text) - 15).ToString();
                    number_range.Text = (Convert.ToInt32(number_range.Text) - 15).ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Default.aspx");
            }
            // START OF EXPRESS WITH IMAGES
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT* FROM Table_job_post WHERE Status='Active' ORDER BY p_id Desc Limit " + number_index.Text + "," + number_range.Text;
                MySqlCommand cmd = new MySqlCommand(query, cn);
                try
                {
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
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
        }
        public void browse_all_job_ServerClick(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                //  string query = "SELECT* FROM Table_job_post WHERE Status='Active' ORDER BY p_id Desc Limit " + number_index.Text + "," + number_range.Text;
                string query = "SELECT* FROM Table_job_post WHERE Status='Active' ORDER BY p_id Desc Limit 250";
                MySqlCommand cmd = new MySqlCommand(query, cn);
                try
                {
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
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
        }

    }
}