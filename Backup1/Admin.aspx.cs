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
    public partial class Admin : System.Web.UI.Page
    {
        General_Class gclass = new General_Class();
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

            if (string.IsNullOrWhiteSpace(TextBox_employer_hide.Text))
            {
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT Name_of_Organization FROM Table_Employer Order by Name_of_Organization", cn);
                    try
                    {
                        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        name_of_employer_post.DataSource = dt;
                        name_of_employer_post.DataValueField = "Name_of_Organization";
                        name_of_employer_post.DataBind();
                        TextBox_employer_hide.Text = "Displayed";
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally
                    {
                        cn.Close(); cn.Dispose();
                    }
                }
                catch (Exception ex)
                {
                   // result_output.Text = ex.Message;
                }
            }


        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            result_output.Text = null;
            Panel_register_applicant.Visible = false;
            Panel_register_employer.Visible = true;
            Panel_post_job.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            result_output.Text = null;
            Panel_register_applicant.Visible = true;
            Panel_register_employer.Visible = false;
            Panel_post_job.Visible = false;
        }

        protected void Button31_Click(object sender, EventArgs e)
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
            else if (string.IsNullOrWhiteSpace(user_name_emp.Text))
            {
                result_output.Text = "Enter Prefered User Name ...";
            }
            else if (string.IsNullOrWhiteSpace(password_emp.Text))
            {
                result_output.Text = "Enter Preferred Password ...";
            }
            else if (string.IsNullOrWhiteSpace(confirm_password_emp.Text))
            {
                result_output.Text = "Confirm Your Preferred Password ...";
            }
            else if (password_emp.Text != confirm_password_emp.Text)
            {
                result_output.Text = "Password Does Not Match ...";
            }
            else
            {

                bool is_username_free = false; bool is_name_free = false; bool is_email_free = false;
                //################################### FIRST PHASE TEST #######################################################
                try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Employer WHERE (User_Name='" + user_name_emp.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
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

                        string query = "INSERT INTO Table_Employer(Name_of_Organization,Company_Email,Company_Phone,Address,City,State,Country,Contact_Name,Contact_Address,Contact_Phone,Contact_Email,Contact_Position,Company_Industry,Services,Date,Day,Month,Year,User_Name,Password,Sms_Company_Verified,Sms_Personal_Verified,Login_Status,Code)VALUES('" + name_of_organization.Text + "','" + company_email.Text + "','" + company_phone.Text + "','" + address.Text + "','" + city.Text + "','" + state.Text + "','" + country.Text + "','" + contact_name.Text + "','" + contact_address.Text + "','" + contact_phone.Text + "','" + contact_email.Text + "','" + contact_position.Text + "','" + category_industry_emp.Text + "','" + Services.Text + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + user_name_emp.Text + "','" + password_emp.Text + "','Pending ...','Pending ...','Employee','" + name_of_organization.Text + "')";
                        MySqlCommand cmd = new MySqlCommand(query, cn);
                        try
                        {
                            cmd.ExecuteNonQuery();
                            gclass.panel_format(Panel_register_employer);
                            result_output.Text = "Registration was successful ...";

                            /*HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                            cookie_u_name.Value = user_name.Text;
                            cookie_u_name.Expires = DateTime.Now.AddHours(2);
                            Response.SetCookie(cookie_u_name);
                            Response.Redirect("Member-Employer.aspx");*/

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

        protected void Button21_Click(object sender, EventArgs e)
        {
            string interview = null;
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
            else if (first_appointment_being_sought.SelectedIndex == 0 && second_appointment_being_sought.SelectedIndex == 0 && third_appointment_being_sought.SelectedIndex == 0)
            {
                result_output.Text = "Select Appointment Being Sought ...";
            }
            /*else if (string.IsNullOrWhiteSpace(work_experience1.Text) && string.IsNullOrWhiteSpace(work_experience2.Text) && string.IsNullOrWhiteSpace(work_experience3.Text))
            {
                result_output.Text = "Enter Applicant Work Experience ...";
            }*/
            else if (string.IsNullOrWhiteSpace(first_acad_qualification.Text) && string.IsNullOrWhiteSpace(second_acad_qualification.Text) && string.IsNullOrWhiteSpace(third_acad_qualification.Text))
            {
                result_output.Text = "Enter Applicant Academic Qualification ...";
            }
            else if (string.IsNullOrWhiteSpace(category_general.Text))
            {
                result_output.Text = "Select/ Tick Category of Job Being Sought...";
            }
            else
            {
                bool is_username_free = false; bool is_name_free = false; bool is_email_free = false;
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
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Applicant WHERE (First_Name='" + first_name.Text + "' AND Last_Name='" + last_name.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
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
               /* try
                {
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT User_Name FROM Table_Applicant WHERE (Email='" + email.Text + "')", cn); // or (Email='" + user_name.Text + "' AND Password='" + password.Text + "')
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
                }*/
                //// ######################### BEGIN INSERT ############################
                if (is_username_free == false)
                {
                    result_output.Text = "User Name already taken ...";
                }
                else if (is_name_free == false)
                {
                    result_output.Text = "You had already Registered ...";
                }
               /* else if (is_email_free == false)
                {
                    result_output.Text = "Email already in Used ...";
                }*/
                else
                {
                    try
                    {
                        MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                        MySqlConnection cn1 = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                       
                        cn.Open();
                        cn1.Open();

                        string full_name = first_name.Text + " " + last_name.Text;
                        string code = category_general.Text + full_name.ToString();
                       /* string cjs = null;
                        if (category_general.Text.Contains("Other"))
                        {
                            cjs = category_general.Text + "(" + if_others.Text + ")";
                        }
                        else
                        {
                            cjs = category_general.Text;
                        }*/
                       
                       // string location_sought = location_first_choice.Text + ", " + location_second_choice.Text + ", " + location_third_choice.Text;
                      //  string query = "INSERT INTO Table_Applicant(First_Name,Last_Name,Full_Name,Date_of_Birth,Marital_Status,Religion,Residential_Address,Postal_Address,Email,Phone,Qualification_Academic,Qualification_Professional,Discipline,Work_Experience,Means_of_Identification,ID_Number,Reference_Name,Reference_Address,Reference_Phone,User_Name,Password,Date,Day,Month,Year,SMS_Personal_Verified,SMS_Reference_Verified,Login_Status,Category_Job_Sought,Location_Sought,Title,Code,Category_General)VALUES('" + first_name.Text + "','" + last_name.Text + "','" + full_name.ToString() + "','" + date_of_birth.Text + "','" + marital_status.Text + "','" + religion.Text + "','" + residential_address.Text + "','" + postal_address.Text + "','" + email.Text + "','" + phone.Text + "','" + qualification_academic.Text + "','" + qualification_professional.Text + "','" + discipline.Text + "','" + work_experience.Text + "','" + means_of_identification.Text + "','" + id_number.Text + "','" + reference_name.Text + "','" + reference_address.Text + "','" + reference_phone.Text + "','" + user_name.Text + "','" + password.Text + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','Pending ...','Pending ...','Applicant','" + category_job_sought.Text + "','" + location_sought.ToString() + "','" + title.Text + "','" + full_name.ToString() + "','"+ category_general.Text +"')";
                        string location_sought = location_first_choice.Text.Replace("'", "''") + ", " + location_second_choice.Text.Replace("'", "''") + ", " + location_third_choice.Text.Replace("'", "''");
                        string query = "INSERT INTO Table_Applicant(First_Name,Last_Name,Full_Name,Date_of_Birth,Marital_Status,Religion,Residential_Address,Postal_Address,Email,Phone,Qualification_Academic,Qualification_Professional,Discipline,Work_Experience,Means_of_Identification,ID_Number,Reference_Name,Reference_Address,Reference_Phone,User_Name,Password,Date,Day,Month,Year,SMS_Personal_Verified,SMS_Reference_Verified,Login_Status,Category_Job_Sought,Location_Sought,Title,Code,Category_General,first_acad_qualification_with_year,second_acad_qualification_with_year,third_acad_qualification_with_year,first_prof_qualification_with_year,second_prof_qualification_with_year,third_prof_qualification_with_year,first_appointment_being_sought,second_appointment_being_sought,third_appointment_being_sought,work_experience1,work_experience2,work_experience3,other_skills,first_acad_qualification_course,first_acad_qualification_year,second_acad_qualification_course,second_acad_qualification_year,third_acad_qualification_course,third_acad_qualification_year)VALUES('" + first_name.Text.Replace("'", "''") + "','" + last_name.Text.Replace("'", "''") + "','" + full_name.ToString() + "','" + date_of_birth.Text.Replace("'", "''") + "','" + marital_status.Text.Replace("'", "''") + "','" + religion.Text.Replace("'", "''") + "','" + residential_address.Text.Replace("'", "''") + "','" + postal_address.Text.Replace("'", "''") + "','" + email.Text.Replace("'", "''") + "','" + phone.Text.Replace("'", "''") + "','" + first_acad_qualification.Text.Replace("'", "''") + "','" + first_prof_qualification.Text.Replace("'", "''") + "','" + discipline.Text.Replace("'", "''") + "','" + work_experience.Text.Replace("'", "''") + "','" + means_of_identification.Text.Replace("'", "''").Replace("'", "") + "','" + id_number.Text.Replace("'", "''") + "','" + reference_name.Text.Replace("'", "''") + "','" + reference_address.Text.Replace("'", "''") + "','" + reference_phone.Text.Replace("'", "''") + "','" + user_name.Text.Replace("'", "''") + "','" + password.Text.Replace("'", "''") + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','Pending ...','Pending ...','Applicant','" + category_general.Text + "','" + location_sought.ToString() + "','" + title.Text.Replace("'", "''") + "','" + code.ToString() + "','" + category_general.Text.Replace("'", "''") + "','" + first_acad_qualification.Text.Replace("'", "''") + "','" + second_acad_qualification.Text.Replace("'", "''") + "','" + third_acad_qualification.Text.Replace("'", "''") + "','" + first_prof_qualification.Text.Replace("'", "''") + "','" + second_prof_qualification.Text.Replace("'", "''") + "','" + third_prof_qualification.Text.Replace("'", "''") + "','" + first_appointment_being_sought.Text.Replace("'", "''") + "','" + second_appointment_being_sought.Text.Replace("'", "''") + "','" + third_appointment_being_sought.Text.Replace("'", "''") + "','" + work_experience1.Text.Replace("'", "''") + "','" + work_experience2.Text.Replace("'", "''") + "','" + work_experience3.Text.Replace("'", "''") + "','" + other_skills.Text.Replace("'", "''") + "','" + first_acad_qualification_course.Text.Replace("'", "''") + "','" + first_acad_qualification_year.Text.Replace("'", "''") + "','" + second_acad_qualification_course.Text.Replace("'", "''") + "','" + second_acad_qualification_year.Text.Replace("'", "''") + "','" + third_acad_qualification_course.Text.Replace("'", "''") + "','" + third_acad_qualification_year.Text.Replace("'", "''") + "')";
                       
                        string query_off = "INSERT INTO Table_office_reg(Full_Name,Date,Day,Month,Year)VALUES('" + full_name.ToString() + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "')";
                        
                        MySqlCommand cmd = new MySqlCommand(query, cn);
                        MySqlCommand cmd4 = new MySqlCommand(query_off, cn1);
                        cmd4.ExecuteNonQuery();
                        try
                        {
                            cmd.ExecuteNonQuery();
                            
                            gclass.panel_format(Panel_register_applicant);
                           /* HttpCookie cookie_u_name = new HttpCookie("cookie_u_name");
                            cookie_u_name.Value = user_name.Text;
                            cookie_u_name.Expires = DateTime.Now.AddHours(2);
                            Response.SetCookie(cookie_u_name);
                            Response.Redirect("Member-Applicant.aspx");*/

                            

                            result_output.Text = "Registration was successful ...";
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
                            cn1.Close(); cn1.Dispose();
                            cmd.Dispose();
                            cmd4.Dispose();
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie_username = new HttpCookie("cookie_status");
            cookie_username.Value = "Admin";
            cookie_username.Expires = DateTime.Now.AddHours(-2);
            Response.SetCookie(cookie_username);
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(job_description.Text) || string.IsNullOrWhiteSpace(job_position.Text) || string.IsNullOrWhiteSpace(job_title.Text) || string.IsNullOrWhiteSpace(leading_description.Text) || string.IsNullOrWhiteSpace(full_description.Text) || string.IsNullOrWhiteSpace(state_post.Text) || string.IsNullOrWhiteSpace(location.Text) || string.IsNullOrWhiteSpace(required_qualification.Text) || string.IsNullOrWhiteSpace(age_range.Text))
            {
                result_output.Text = "An Important Field is Empty ...";
            }
            else if (job_category.SelectedIndex == 0)
            {
                result_output.Text = "Select Category of Job ...";
            }
            else if (string.IsNullOrWhiteSpace(name_of_employer_post.Text))
            {
                result_output.Text = "Select Name of Company/ Recruiter ...";
            }
            else if (!FileUpload4.HasFile)
            {
                result_output.Text = "Select Banner/ Image/ Logo to Display along ...";
            }
            else if (System.IO.Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpg"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".png"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".gif"
                      && Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpeg")
            {
                result_output.Text = "Uploaded File must be in Image Format ...";
                ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Uploaded File must be in Image Format ...');</script>");

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
                    employee_name.Text = name_of_organization.Text;
                    MySqlConnection cn = new MySqlConnection(ConfigurationManager.ConnectionStrings["cnstring"].ConnectionString);
                    cn.Open();
                    
                    Random rnd = new Random();
                    int a = rnd.Next(1, 7654321);
                    robot = a.ToString();

                    string url_img = "Images_Post/" + robot + ".jpg";
                    string url = "/" + name_of_employer_post.Text + robot + DateTime.Now.Second; ;
                    string code = name_of_employer_post.Text + robot + DateTime.Now + DateTime.Now.Second;
                    string query = "INSERT INTO Table_Job_Post(Employer_Name,Job_Category,Job_Description,Job_Industry,Job_Position,Job_Title,Leading_Description,Full_Description,State,Location,Image_Url,Post_Url,Status,Date,Day,Month,Year,Code,Required_Qualification,Required_Age,Other_Information,Interview_Category,Sms_Personal_Verified,Sms_Reference_Verified,Job_Posted,User_Name)VALUES('" + name_of_employer_post.Text + "','" + job_category.Text + "','" + job_description.Text + "','" + job_industry.Text + "','" + job_position.Text + "','" + job_title.Text + "','" + leading_description.Text + "','" + full_description.Text + "','" + state_post.Text + "','" + location.Text + "','" + url_img.ToString() + "','" + url.ToString() + "','Active','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','" + code.ToString() + "','" + required_qualification.Text + "','" + age_range.Text + "','" + other_information.Text + "','" + interview.ToString() + "','Pending ...','Pending ...','Pending ...','" + abs.ToString() + "')";
                    MySqlCommand cmd = new MySqlCommand(query, cn);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        FileUpload4.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
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


                /*  if (FileUpload4.HasFile)
                  {

                      if (System.IO.Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpg"
                         && Path.GetExtension(FileUpload4.FileName).ToLower() != ".png"
                         && Path.GetExtension(FileUpload4.FileName).ToLower() != ".gif"
                         && Path.GetExtension(FileUpload4.FileName).ToLower() != ".jpeg")
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
                              FileUpload4.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
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
                          FileUpload3.PostedFile.SaveAs(Server.MapPath("~/images_post/" + robot + ".jpg")); //"images/" + school_query.Text.Replace(" ", "_") + 
                          // result_output.Text = "Portal Background Successfully Uploaded ...";
                         // ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script> alert('Portal Background Successfully Uploaded ...');</script>");
                      }
                      catch (Exception ex)
                      {
                          result_output.Text = ex.Message;
                      }
                  }*/
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            result_output.Text = null;
            Panel_register_applicant.Visible = false;
            Panel_register_employer.Visible = false;
            Panel_post_job.Visible = true;
        }
    }
}