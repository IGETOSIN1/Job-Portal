using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
    public class General_Class
    {
        MySqlDataReader dr;
        public string panel_format(Panel panel1)
        {
            // panel3 = new Panel();
            foreach (Control control in panel1.Controls)
            {
                if (control is System.Web.UI.WebControls.TextBox)
                {
                    (control as System.Web.UI.WebControls.TextBox).Text = null;
                    //  control.tex = null;
                }

                if (control is System.Web.UI.WebControls.CheckBox)
                {
                    (control as System.Web.UI.WebControls.CheckBox).Checked = false;
                    // control.ForeColor = Color.Crimson;
                }
            }
            return "Sola";
        }

        public string panel_format_hide(Panel panel1)
        {
            try
            {
                // panel3 = new Panel();
                foreach (Control control in panel1.Controls)
                {

                    if (control is System.Web.UI.WebControls.CheckBox)
                    {
                        (control as System.Web.UI.WebControls.CheckBox).Visible = false;
                        // control.ForeColor = Color.Crimson;
                    }
                    if (control is System.Web.UI.WebControls.DropDownList)
                    {
                        (control as System.Web.UI.WebControls.CheckBox).Visible = false;
                        // control.ForeColor = Color.Crimson;
                    }

                }
            }
            catch (Exception ex)
            {
                var err = ex.Message;
            }
            return "Sola";
        }

        public string panel_format_show(Panel panel1)
        {
            try
            {
                // panel3 = new Panel();
                foreach (Control control in panel1.Controls)
                {

                    if (control is System.Web.UI.WebControls.CheckBox)
                    {
                        (control as System.Web.UI.WebControls.CheckBox).Visible = true;
                        // control.ForeColor = Color.Crimson;
                    }
                    if (control is System.Web.UI.WebControls.DropDownList)
                    {
                        (control as System.Web.UI.WebControls.CheckBox).Visible = true;
                        // control.ForeColor = Color.Crimson;
                    }
                }

            }
            catch (Exception ex)
            {
                var err = ex.Message;
            }
            return "Sola";
        }

        public MySqlDataReader display_in_box(string query)
        {

            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand(query, cn);
                dr = cmd.ExecuteReader();
                //MessageBox.Show("Record Successfully Saved!", "Confirmation Box!", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            catch (Exception ex)
            {
                //  MessageBox.Show(ex.Message);
            }
            return dr;
        }

        public string Update1(string query)
        {
            MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
            cn.Open();
            MySqlCommand cmd = new MySqlCommand(query, cn);
            try
            {
                cmd.ExecuteNonQuery();
                //  MessageBox.Show("Update was Successfull!", "Confirmation Box!", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                cmd.Dispose();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close(); cn.Dispose();
                cmd.Dispose();
            }
            return "Sola";
        }

    }
}