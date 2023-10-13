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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT DISTINCT(category_general) FROM Table_applicant ORDER BY category_general desc limit 6";
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


           



            if (string.IsNullOrWhiteSpace(display.Text))
            {
                // START OF DIRECT WITHOUT IMAGES
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    string query = "SELECT* FROM Table_job_post  WHERE Status='Active' ORDER BY p_id desc limit " + number_index.Text + "," + number_range.Text;
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

        protected void DataList_direct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                try
                {
                    if (Convert.ToInt32(count.Text) > Convert.ToInt32(number_index.Text))
                    {
                        number_index.Text = (Convert.ToInt32(number_index.Text) + 8).ToString();
                        number_range.Text = (Convert.ToInt32(number_range.Text) + 8).ToString();
                    }
                }
                catch (Exception ex)
                {
                    Response.Redirect("Default.aspx");
                }
            
            // START OF DIRECT WITHOUT IMAGES
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT* FROM Table_job_post  WHERE Status='Active' ORDER BY p_id desc limit " + number_index.Text + "," + number_range.Text;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
           
                try
                {
                    if (Convert.ToInt32(number_index) > 0)
                    {
                        number_index.Text = (Convert.ToInt32(number_index.Text) - 8).ToString();
                        number_range.Text = (Convert.ToInt32(number_range.Text) - 8).ToString();
                    }
                }
                catch (Exception ex)
                {
                    Response.Redirect("Default.aspx");
                }


               

                        // START OF DIRECT WITHOUT IMAGES
                        try
                        {
                            MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                            cn.Open();
                            string query = "SELECT* FROM Table_job_post  WHERE Status='Active' ORDER BY p_id desc limit " + number_index.Text + "," + number_range.Text;
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
                
    }
}