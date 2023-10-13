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
    public partial class applicantregister : System.Web.UI.Page
    {
        General_Class gclass = new General_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            ///////////////////////////////////////////////////////////////////////////////////
            if (!Page.IsPostBack)
            {
                try
                {
                    for (int i = 1960; i <= 2020; i++)
                    {
                        year_birth.Items.Add(i.ToString());
                    }
                    year_birth.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Year", "0"));
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
           // ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;
            ///////////////////////////////////////////////////////////////////////////////////
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
                work_experience1.Text = comp1.Text + "  ||  " + duration1.Text + "  ||  " + positionheld1.Text + "  ||  " + salary_range1.Text;
            }
            if (!string.IsNullOrWhiteSpace(comp2.Text))
            {
                work_experience2.Text = comp2.Text + "  ||  " + duration2.Text + "  ||  " + positionheld2.Text + "  ||  " + salary_range2.Text;
            }
            if (!string.IsNullOrWhiteSpace(comp3.Text))
            {
                work_experience3.Text = comp3.Text + "  ||  " + duration3.Text + "  ||  " + positionheld3.Text + "  ||  " + salary_range3.Text + "\n" + work_experience.Text;
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
            else if (string.IsNullOrWhiteSpace(phone.Text))
            {
                result_output.Text = "Enter Your Phone Number ...";
            }
            else if (marital_status.Text=="Select")
            {
                result_output.Text = "Select Marital Status...";
            }
            else if (religion.Text=="Select")
            {
                result_output.Text = "Select Your Religion...";
            }
            else if (day_birth.Text == "Day")
            {
                result_output.Text = "Selec Your Day of Birth ...";
            }
            else if (month_birth.Text == "Month")
            {
                result_output.Text = "Selec Your Month of Birth ...";
            }
            else if (year_birth.Text=="Year")
            {
                result_output.Text = "Selec Your Year of Birth ...";
            }
            else if (string.IsNullOrWhiteSpace(category_general.Text))
            {
                result_output.Text = "Select/ tick at least One Category of Job Beign Sought...";
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
            else if (first_appointment_being_sought.SelectedIndex == 0 && second_appointment_being_sought.SelectedIndex == 0 && third_appointment_being_sought.SelectedIndex == 0)
            {
                result_output.Text = "Select Appointment Being Sought ...";
            }
            else if (CheckBox1.Checked == false)
            {
                result_output.Text = "You must accept our Terms and Conditions to Submit ...";
            }
            /* else if (string.IsNullOrWhiteSpace(work_experience.Text))
             {
                 result_output.Text = "Enter Work experience ...";
             }*/
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
                        cn.Open();

                        string full_name = first_name.Text + " " + last_name.Text;
                        string code = category_general.Text + full_name.ToString();
                        string cjs = null;
                        if (category_general.Text.Contains("Other"))
                        {
                            cjs = category_general.Text + "(" + if_others.Text + ")";
                        }
                        else
                        {
                            cjs = category_general.Text;
                        }
                        string dob = day_birth.Text + "/" + month_birth.Text + "/" + year_birth.Text;
                        string location_sought = location_first_choice.Text.Replace("'", "''") + ", " + location_second_choice.Text.Replace("'", "''") + ", " + location_third_choice.Text.Replace("'", "''");
                        string query = "INSERT INTO Table_Applicant(First_Name,Last_Name,Full_Name,Date_of_Birth,Marital_Status,Religion,Residential_Address,Postal_Address,Email,Phone,Qualification_Academic,Qualification_Professional,Discipline,Work_Experience,Means_of_Identification,ID_Number,Reference_Name,Reference_Address,Reference_Phone,User_Name,Password,Date,Day,Month,Year,SMS_Personal_Verified,SMS_Reference_Verified,Login_Status,Category_Job_Sought,Location_Sought,Title,Code,Category_General,first_acad_qualification_with_year,second_acad_qualification_with_year,third_acad_qualification_with_year,first_prof_qualification_with_year,second_prof_qualification_with_year,third_prof_qualification_with_year,first_appointment_being_sought,second_appointment_being_sought,third_appointment_being_sought,work_experience1,work_experience2,work_experience3,other_skills,first_acad_qualification_course,first_acad_qualification_year,second_acad_qualification_course,second_acad_qualification_year,third_acad_qualification_course,third_acad_qualification_year,job_full_type,year_birth,salary_expectation,if_others_subject_teacher)VALUES('" + first_name.Text.Replace("'", "''") + "','" + last_name.Text.Replace("'", "''") + "','" + full_name.ToString() + "','" + dob.Replace("'", "''") + "','" + marital_status.Text.Replace("'", "''") + "','" + religion.Text.Replace("'", "''") + "','" + residential_address.Text.Replace("'", "''") + "','" + postal_address.Text.Replace("'", "''") + "','" + email.Text.Replace("'", "''") + "','" + phone.Text.Replace("'", "''") + "','" + first_acad_qualification.Text.Replace("'", "''") + "','" + first_prof_qualification.Text.Replace("'", "''") + "','" + discipline.Text.Replace("'", "''") + "','" + work_experience.Text.Replace("'", "''") + "','" + means_of_identification.Text.Replace("'", "''").Replace("'", "") + "','" + id_number.Text.Replace("'", "''") + "','" + reference_name.Text.Replace("'", "''") + "','" + reference_address.Text.Replace("'", "''") + "','" + reference_phone.Text.Replace("'", "''") + "','" + user_name.Text.Replace("'", "''") + "','" + password.Text.Replace("'", "''") + "','" + DateTime.Now + "','" + DateTime.Now.Day + "','" + DateTime.Now.Month + "','" + DateTime.Now.Year + "','Pending ...','Pending ...','Applicant','" + cjs.ToString() + "','" + location_sought.ToString() + "','" + title.Text.Replace("'", "''") + "','" + code.ToString() + "','" + category_general.Text.Replace("'", "''") + "','" + first_acad_qualification.Text.Replace("'", "''") + "','" + second_acad_qualification.Text.Replace("'", "''") + "','" + third_acad_qualification.Text.Replace("'", "''") + "','" + first_prof_qualification.Text.Replace("'", "''") + "','" + second_prof_qualification.Text.Replace("'", "''") + "','" + third_prof_qualification.Text.Replace("'", "''") + "','" + first_appointment_being_sought.Text.Replace("'", "''") + "','" + second_appointment_being_sought.Text.Replace("'", "''") + "','" + third_appointment_being_sought.Text.Replace("'", "''") + "','" + work_experience1.Text.Replace("'", "''") + "','" + work_experience2.Text.Replace("'", "''") + "','" + work_experience3.Text.Replace("'", "''") + "','" + other_skills.Text.Replace("'", "''") + "','" + first_acad_qualification_course.Text.Replace("'", "''") + "','" + first_acad_qualification_year.Text.Replace("'", "''") + "','" + second_acad_qualification_course.Text.Replace("'", "''") + "','" + second_acad_qualification_year.Text.Replace("'", "''") + "','" + third_acad_qualification_course.Text.Replace("'", "''") + "','" + third_acad_qualification_year.Text.Replace("'", "''") + "','" + job_full_part.Text + "','" + year_birth.Text + "','" + salary_expectation.Text + "','" + if_others_subject_teacher.Text + "')";
                        MySqlCommand cmd = new MySqlCommand(query, cn);
                        try
                        {
                            cmd.ExecuteNonQuery();
                            /* General_Class gclass = new General_Class();
                             gclass.Update1("DELETE FROM Table_SMS_Code WHERE SMS_Code='" + sms_no.ToString() + "'");*/
                            gclass.panel_format(Panel1);


                            System.Web.HttpCookie cookie_u_name = new System.Web.HttpCookie("cookie_u_name");
                            cookie_u_name.Value = user_name.Text;
                            cookie_u_name.Expires = DateTime.Now.AddHours(2);
                            Response.SetCookie(cookie_u_name);
                            Response.Redirect("Redirect.aspx");

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
                            cmd.Dispose();
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }
    }
}