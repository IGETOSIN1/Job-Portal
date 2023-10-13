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
    public partial class Member_Applicant : System.Web.UI.Page
    {
        string abs;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                abs = Request.Cookies["cookie_u_name"].Value.ToString();
                user_name.Text = abs;

            }
            catch (Exception ex)
            {
                // Response.Redirect(ex.Message);
                Response.Redirect("Login.aspx");
            }

            // DISPLAY MARITAL_STATUS
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Marital_Status from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da=new MySqlDataAdapter(cmd);
                        DataTable dt=new DataTable();
                        da.Fill(dt);
                        marital_status.DataSource=dt;
                        marital_status.DataValueField="Marital_Status";
                        marital_status.DataBind();
                        TextBox1.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                      //  result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                   // result_output.Text = ex.Message;
                }
            }

            // DISPLAY RELIGION
            if (string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Religion from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                         religion.DataSource = dt;
                        religion.DataValueField = "Religion";
                        religion.DataBind();
                        TextBox2.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                       // result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                   // result_output.Text = ex.Message;
                }
            }

            // display means of identification
            if (string.IsNullOrWhiteSpace(TextBox3.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Means_of_identification from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        means_of_identification.DataSource = dt;
                        means_of_identification.DataValueField = "Marital_Status";
                        means_of_identification.DataBind();
                        TextBox3.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                        //result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                   // result_output.Text = ex.Message;
                }
            }
            // display category of job sought

           /* if (string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT category_job_sought from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        category_job_sought.DataSource = dt;
                        category_job_sought.DataValueField = "category_job_sought";
                        category_job_sought.DataBind();
                        TextBox4.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                       // result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                   // result_output.Text = ex.Message;
                }
            }*/

          // display general category

           /* if (string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Category_general from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        category_general.DataSource = dt;
                        category_general.DataValueField = "Category_General";
                        category_job_sought.DataBind();
                        TextBox5.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                       // result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                  //  result_output.Text = ex.Message;
                }
            }*/

            // display title

            if (string.IsNullOrWhiteSpace(TextBox6.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Title from table_applicant", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        title.DataSource = dt;
                        title.DataValueField = "Title";
                        title.DataBind();
                        TextBox6.Text = "Display";
                    }
                    catch (Exception ex)
                    {
                      //  result_output.Text = ex.Message;
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                        cmd.Dispose();
                    }
                }
                catch (Exception ex)
                {
                  //  result_output.Text = ex.Message;
                }
            }


          /*  //################################### FETCH USERS DATA FROM THE DATABASE #######################################################
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT  * FROM Table_Applicant WHERE (User_Name='" + abs.ToString() + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        first_name.Text = (string)dr.GetValue(1).ToString();
                        last_name.Text = (string)dr.GetValue(2).ToString();
                        date_of_birth.Text = (string)dr.GetValue(4).ToString();
                        marital_status.Text = (string)dr.GetValue(5).ToString();
                        religion.Text = (string)dr.GetValue(6).ToString();
                        residential_address.Text = (string)dr.GetValue(7).ToString();
                        postal_address.Text = (string)dr.GetValue(8).ToString();
                        email.Text = (string)dr.GetValue(9).ToString();
                        phone.Text = (string)dr.GetValue(10).ToString();
                        qualification_academic.Text = (string)dr.GetValue(11).ToString();
                        qualification_professional.Text = (string)dr.GetValue(12).ToString();
                        discipline.Text = (string)dr.GetValue(13).ToString();
                        work_experience.Text = (string)dr.GetValue(14).ToString();
                        means_of_identification.Text = (string)dr.GetValue(15).ToString();
                        id_number.Text = (string)dr.GetValue(16).ToString();
                        reference_name.Text = (string)dr.GetValue(17).ToString();
                        reference_address.Text = (string)dr.GetValue(18).ToString();
                        reference_phone.Text = (string)dr.GetValue(19).ToString();
                        user_name.Text = (string)dr.GetValue(20).ToString();
                        password.Text = (string)dr.GetValue(21).ToString();
                        category_job_sought.Text = (string)dr.GetValue(29).ToString();
                        location.Text = (string)dr.GetValue(30).ToString();
                        title.Text = (string)dr.GetValue(31).ToString();
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
            */



        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
            cookie_u_name.Value = "xx";
            cookie_u_name.Expires = DateTime.Now.AddHours(-2);
            Response.SetCookie(cookie_u_name);
            Response.Redirect("Default.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = true;
            Panel_upload_cv.Visible = false;
            Panel_upload_image.Visible = false;
            Panel_job_list.Visible = false;
            result_output.Text = null;

            //################################### FETCH USERS DATA FROM THE DATABASE #######################################################
            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT  * FROM Table_Applicant WHERE (User_Name='" + abs.ToString() + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                MySqlDataReader dr = cmd.ExecuteReader();
                try
                {
                    if (dr.Read())
                    {
                        first_name.Text = (string)dr.GetValue(1).ToString();
                        last_name.Text = (string)dr.GetValue(2).ToString();
                        date_of_birth.Text = (string)dr.GetValue(4).ToString();
                        marital_status.Text = (string)dr.GetValue(5).ToString();
                        religion.Text = (string)dr.GetValue(6).ToString();
                        residential_address.Text = (string)dr.GetValue(7).ToString();
                        postal_address.Text = (string)dr.GetValue(8).ToString();
                        email.Text = (string)dr.GetValue(9).ToString();
                        phone.Text = (string)dr.GetValue(10).ToString();
                        qualification_academic.Text = (string)dr.GetValue(11).ToString();
                        qualification_professional.Text = (string)dr.GetValue(12).ToString();
                        discipline.Text = (string)dr.GetValue(13).ToString();
                        work_experience.Text = (string)dr.GetValue(14).ToString();
                        means_of_identification.Text = (string)dr.GetValue(15).ToString();
                        id_number.Text = (string)dr.GetValue(16).ToString();
                        reference_name.Text = (string)dr.GetValue(17).ToString();
                        reference_address.Text = (string)dr.GetValue(18).ToString();
                        reference_phone.Text = (string)dr.GetValue(19).ToString();
                        user_name.Text = (string)dr.GetValue(20).ToString();
                        password.Text = (string)dr.GetValue(21).ToString();
                       // category_job_sought.Text = (string)dr.GetValue(29).ToString();
                        location.Text = (string)dr.GetValue(30).ToString().Replace(",", "\n"); //location.Text = location.Text.Replace(",", "\n");
                        title.Text = (string)dr.GetValue(31).ToString();

                        first_acad_qualification.Text = (string)dr.GetValue(36).ToString();
                        second_acad_qualification.Text = (string)dr.GetValue(37).ToString();
                        third_acad_qualification.Text = (string)dr.GetValue(38).ToString();
                        first_prof_qualification.Text = (string)dr.GetValue(39).ToString();
                        second_prof_qualification.Text = (string)dr.GetValue(40).ToString();
                        third_prof_qualification.Text = (string)dr.GetValue(41).ToString();
                        first_appointment_being_sought.Text = (string)dr.GetValue(42).ToString();
                        second_appointment_being_sought.Text = (string)dr.GetValue(43).ToString();
                        third_appointment_being_sought.Text = (string)dr.GetValue(44).ToString();

                        first_acad_qualification_course.Text = (string)dr.GetValue(49).ToString();
                        first_acad_qualification_year.Text = (string)dr.GetValue(50).ToString();
                        second_acad_qualification_course.Text = (string)dr.GetValue(51).ToString();
                        second_acad_qualification_year.Text = (string)dr.GetValue(52).ToString();
                        third_acad_qualification_course.Text = (string)dr.GetValue(53).ToString();
                        third_acad_qualification_year.Text = (string)dr.GetValue(54).ToString();

                        current_experience.Text = (string)dr.GetValue(45).ToString() + "\n\n" + (string)dr.GetValue(46).ToString() + "\n\n" + (string)dr.GetValue(47).ToString();
                        current_skills.Text = (string)dr.GetValue(48).ToString().Replace(",", "\n");

                    }
                }
                catch (Exception ex)
                {
                    result_output.Text = "Log out and Re-Login again to View/ Update Your Biodata ... "; //ex.Message;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = false;
            Panel_upload_cv.Visible = true;
            Panel_upload_image.Visible = false;
            Panel_job_list.Visible = false;
            result_output.Text = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel_record.Visible = false;
            Panel_upload_cv.Visible = false;
            Panel_upload_image.Visible = true;
            Panel_job_list.Visible = false;
            result_output.Text = null;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (job_corporate.Checked == true)
            {
                category_general.Text = category_general.Text + ", Corporate Job";
            }
            if (job_medical.Checked == true)
            {
                category_general.Text = category_general.Text + ", Medical Job";
            }
            if (job_general.Checked == true)
            {
                category_general.Text = category_general.Text + ", General Job";
            }
            if (job_Teaching.Checked == true)
            {
                category_general.Text = category_general.Text + ", Teaching Job";
            }
            if (job_others.Checked == true)
            {
                category_general.Text = category_general.Text + ", Other Jobs,";
            }
            //////////////////////////////////////////////////////////////////////////////////
            if (skill_microsoft_word.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Microsoft  Word,";
            }
            if (skill_microsoft_excel.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Microsoft  Excell/ Spread Sheet,";
            }
            if (skill_microsoft_access.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Microsoft  Access/ Database,";
            }
            if (skill_adobe_photoshop.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Photoshop,";
            }
            if (skill_corel_draw.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Corel Draw,";
            }
            if (skill_print_artist.Checked == true)
            {
                other_skills.Text = other_skills.Text + ", Print Artist,";
            }
            if (!string.IsNullOrWhiteSpace(skill_others.Text))
            {
                other_skills.Text = other_skills.Text + ", " + skill_others.Text;
            }
            /////////////////////////////////////////////////////////////////////////////////

            if (!string.IsNullOrWhiteSpace(comp1.Text))
            {
                work_experience1.Text = work_experience.Text + " , " + comp1.Text + "  ||  " + duration1.Text + "  ||  " + positionheld1.Text + "  ||  " + salary_range1.Text;
            }
            if (!string.IsNullOrWhiteSpace(comp2.Text))
            {
                work_experience2.Text = work_experience.Text + " , " + comp2.Text + "  ||  " + duration2.Text + "  ||  " + positionheld2.Text + "  ||  " + salary_range2.Text;
            }
            if (!string.IsNullOrWhiteSpace(comp3.Text))
            {
                work_experience3.Text = work_experience.Text + " , " + comp3.Text + "  ||  " + duration3.Text + "  ||  " + positionheld3.Text + "  ||  " + salary_range3.Text;
            }
            ///////////////////////////////////////////////////////////////////////////////////////////////
            if (string.IsNullOrWhiteSpace(first_name.Text))
            {
                result_output.Text = "Enter First/ Given Name(s) ...";
            }
            else if (string.IsNullOrWhiteSpace(last_name.Text))
            {
                result_output.Text = "Enter Last/ Surname ...";
            }
           /* else if (string.IsNullOrWhiteSpace(email.Text))
            {
                result_output.Text = "Enter Your Email ...";
            }*/
           /* else if (string.IsNullOrWhiteSpace(user_name.Text))
            {
                result_output.Text = "Enter Prefered User Name ...";
            }
           
            else if (string.IsNullOrWhiteSpace(password.Text))
            {
                result_output.Text = "Enter Preferred Password ...";
            }*/

           /*else if (string.IsNullOrWhiteSpace(work_experience1.Text) && string.IsNullOrWhiteSpace(work_experience2.Text) && string.IsNullOrWhiteSpace(work_experience3.Text))
            {
                result_output.Text = "Enter Applicant Work Experience ...";
            }*/
            else if (first_acad_qualification.SelectedIndex == 0 && second_acad_qualification.SelectedIndex == 0 && third_acad_qualification.SelectedIndex == 0)
            {
                result_output.Text = "Enter Your Academic Qualification ...";
            }
            else if (first_appointment_being_sought.SelectedIndex == 0 && second_appointment_being_sought.SelectedIndex == 0 && third_appointment_being_sought.SelectedIndex == 0)
            {
                result_output.Text = "Select Appointment Being Sought ...";
            }
            else
            {
                bool is_username_free = false;
                //################################### FIRST PHASE TEST #######################################################
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Applicant WHERE (User_Name='" + user_name.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
                    MySqlDataReader dr = cmd.ExecuteReader();
                    try
                    {
                        if (dr.Read())
                        {
                           // is_username_free = false;
                            is_username_free = true;
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

                if (is_username_free == false)
                {
                    result_output.Text = "User Name already taken ...";
                }
                else
                {

                    try
                    {
                        MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                        cn.Open();

                        string full_name = first_name.Text.Replace("'","''") + " " + last_name.Text.Replace("'","''");
                        string location_sought = location.Text.Replace("'","''");//location_first_choice.Text.Replace("'","''") + ", " + location_second_choice.Text.Replace("'","''") + ", " + location_third_choice.Text.Replace("'","''");
                        // string query = "INSERT INTO Table_Applicant(First_Name,Last_Name,Full_Name,Date_of_Birth,Marital_Status,Religion,Residential_Address,Postal_Address,Email,Phone,Qualification_Academic,Qualification_Professional,Discipline,Work_Experience,Means_of_Identification,ID_Number,Reference_Name,Reference_Address,Reference_Phone,User_Name,Password,Category_Job_Sought,Location_Sought,Title,Code)VALUES('" + first_name.Text.Replace("'","''") + "','" + last_name.Text.Replace("'","''") + "','" + full_name.ToString() + "','" + date_of_birth.Text.Replace("'","''") + "','" + marital_status.Text.Replace("'","''") + "','" + religion.Text.Replace("'","''") + "','" + residential_address.Text.Replace("'","''") + "','" + postal_address.Text.Replace("'","''") + "','" + email.Text.Replace("'","''") + "','" + phone.Text.Replace("'","''") + "','" + qualification_academic.Text.Replace("'","''") + "','" + qualification_professional.Text.Replace("'","''") + "','" + discipline.Text.Replace("'","''") + "','" + work_experience.Text.Replace("'","''") + "','" + means_of_identification.Text.Replace("'","''") + "','" + id_number.Text.Replace("'","''") + "','" + reference_name.Text.Replace("'","''") + "','" + reference_address.Text.Replace("'","''") + "','" + reference_phone.Text.Replace("'","''") + "','" + user_name.Text.Replace("'","''") + "','" + password.Text.Replace("'","''") + "','" + category_job_sought.Text.Replace("'","''") + "','" + location_sought.ToString() + "','" + title.Text.Replace("'","''") + "','" + full_name.ToString() + "') ON DUPLICATE KEY UPDATE First_Name=values(first_name),last_name=values(last_name),date_of_birth=values(date_of_birth),religion=values(religion),residential_address=values(residential_address),postal_address=values(postal_address),email=values(email),phone=values(phone),qualification_academic=values(qualification_academic),qualification_professional=values(qualification_professional),discipline=values(discipline),work_experience=values(work_experience),means_of_identification=values(means_of_identification),id_number=values(id_number),reference_phone=values(reference_phone),reference_address=values(reference_address),reference_phone=values(reference_phone),user_name=values(user_name),password=values(password),category_job_sought=values(category_job_sought),Location_sought=values(location_sought),title=values(title)";
                        string query = "UPDATE Table_Applicant SET First_Name='" + first_name.Text.Replace("'", "''") + "',Last_Name='" + last_name.Text.Replace("'", "''") + "',Full_Name='" + full_name.ToString() + "',Date_of_Birth='" + date_of_birth.Text.Replace("'", "''") + "',Marital_Status='" + marital_status.Text.Replace("'", "''") + "',Religion='" + religion.Text.Replace("'", "''") + "',Residential_Address='" + residential_address.Text.Replace("'", "''") + "',Postal_Address='" + postal_address.Text.Replace("'", "''") + "',Email='" + email.Text.Replace("'", "''") + "',Phone='" + phone.Text.Replace("'", "''") + "',Qualification_Academic='" + qualification_academic.Text.Replace("'", "''") + "',Qualification_Professional='" + qualification_professional.Text.Replace("'", "''") + "',Discipline='" + discipline.Text.Replace("'", "''") + "',Work_Experience='" + work_experience.Text.Replace("'", "''") + "',Means_of_Identification='" + means_of_identification.Text.Replace("'", "''") + "',ID_Number='" + id_number.Text.Replace("'", "''") + "',Reference_Name='" + reference_name.Text.Replace("'", "''") + "',Reference_Address='" + reference_address.Text.Replace("'", "''") + "',Reference_Phone='" + reference_phone.Text.Replace("'", "''") + "',Location_Sought='" + location.Text.Replace("'", "''") + "',Title='" + title.Text.Replace("'", "''") + "',Category_General='" + category_general.Text.Replace("'", "''") + "',first_acad_qualification_with_year='" + first_acad_qualification.Text.Replace("'", "''") + "',second_acad_qualification_with_year='" + second_acad_qualification.Text.Replace("'", "''") + "',third_acad_qualification_with_year='" + third_acad_qualification.Text.Replace("'", "''") + "',first_prof_qualification_with_year='" + first_prof_qualification.Text.Replace("'", "''") + "',second_prof_qualification_with_year='" + second_prof_qualification.Text.Replace("'", "''") + "',third_prof_qualification_with_year='" + third_prof_qualification.Text.Replace("'", "''") + "',first_appointment_being_sought='" + first_appointment_being_sought.Text.Replace("'", "''") + "',second_appointment_being_sought='" + second_appointment_being_sought.Text.Replace("'", "''") + "',third_appointment_being_sought='" + third_appointment_being_sought.Text.Replace("'", "''") + "',work_experience1=concat(work_experience1,'," + work_experience1.Text.Replace("'", "''") + "'),work_experience2=concat(work_experience2,'," + work_experience2.Text.Replace("'", "''") + "'),work_experience3=concat(work_experience3,'," + work_experience3.Text.Replace("'", "''") + "'),other_skills=concat(other_skills,'," + other_skills.Text.Replace("'", "''") + "'),first_acad_qualification_course='" + first_acad_qualification_course.Text.Replace("'", "''") + "',second_acad_qualification_course='" + second_acad_qualification_course.Text.Replace("'", "''") + "',third_acad_qualification_course='" + third_acad_qualification_course.Text.Replace("'", "''") + "',first_acad_qualification_year='" + first_acad_qualification_year.Text.Replace("'", "''") + "',second_acad_qualification_year='" + second_acad_qualification_year.Text.Replace("'", "''") + "',third_acad_qualification_year='" + third_acad_qualification_year.Text.Replace("'", "''") + "' WHERE User_Name='" + user_name.Text.Replace("'", "''") + "'";

                        MySqlCommand cmd = new MySqlCommand(query, cn);
                        try
                        {
                            cmd.ExecuteNonQuery();

                            /* HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                             cookie_u_name.Value = user_name.Text;
                             cookie_u_name.Expires = DateTime.Now.AddHours(2);
                             Response.SetCookie(cookie_u_name);
                             Response.Redirect("Member-Applicant.aspx");*/

                            result_output.Text = "Update was successful ...";
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
                    }
                }
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
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + abs.ToString() + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (!FileUpload2.HasFile)
            {
                result_output.Text = "Uploaded File must be in PDF Format ...";
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in PDF Format ...');</script>");
            }
            else
            {

                if (System.IO.Path.GetExtension(FileUpload2.FileName).ToLower() != ".PDF" && Path.GetExtension(FileUpload2.FileName).ToLower() != ".pdf")
                {
                    result_output.Text = "Uploaded File must be in PDF Format ...";
                    ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in PDF Format ...');</script>");

                }

                else
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();

                    try
                    {
                        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/CV/" + abs.ToString() + ".pdf")); //"images/" + school_query.Text.Replace(" ", "_") + 
                        result_output.Text = "Resume Successfully Uploaded ...";
                        ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Resume Successfully Uploaded ...');</script>");
                    }
                    catch (Exception ex)
                    {
                        result_output.Text = ex.Message;
                    }
                }
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {

            Panel_record.Visible = false;
            Panel_upload_cv.Visible = false;
            Panel_upload_image.Visible = false;
            Panel_job_list.Visible = true;
            result_output.Text = null;

            try
            {
                MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                cn.Open();
                string query = "SELECT* FROM Table_job_post WHERE STATUS='Active' ORDER BY p_id Desc limit 30";
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