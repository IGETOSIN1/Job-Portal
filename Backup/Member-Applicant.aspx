<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Member-Applicant.aspx.cs" Inherits="Web_Trupurpose.Member_Applicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" Visible="false"></asp:TextBox>
    <asp:TextBox ID="TextBox7" runat="server" Visible="false"></asp:TextBox>

<!--<div style=" margin-top: -13px; border-left: 1px solid black;">-->
<p style=" float: left; border-right: 1px solid black; border-bottom: 1px solid black;">
<br/>
 <asp:Button ID="Button9" runat="server" Text="VIEW RECORD" 
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic;" 
        onclick="Button9_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>
 <asp:Button ID="Button2" runat="server" Text="UPLOAD CV" 
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button2_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>
 <asp:Button ID="Button3" runat="server" Text="UPLOAD IMAGE" 
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button3_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

  <asp:Button ID="Button11" runat="server" Text="APPLY FOR JOB" 
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button11_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

  <asp:Button ID="Button4" runat="server" Text="LOG OUT" 
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button4_Click" /><br/>

</p>


<asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label>
<!--############################################################################### PANEL FOR RECORD ####################################### -->
<asp:Panel ID="Panel_record" runat="server" Visible="false" style=" width: 1000px;">

<div class="form-style-2-heading" style=" margin-top: 20px; margin-bottom: -5px; margin-left: 200px; font-size: 16px; text-align: center;"> Applicant Bio-Data </div>


    <div class="form-style-2" style=" width: 300px; height: auto; float: left;">

    <label for="field4"><span>Title</span> <asp:DropDownList ID="title" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Ms</asp:ListItem>
        <asp:ListItem>Dr</asp:ListItem>
        <asp:ListItem>Chief</asp:ListItem>
    </asp:DropDownList></label>

<label for="field1"><span>First Name <span class="required">*</span></span> 
    <asp:TextBox ID="first_name" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Last Name <span class="required">*</span></span> 
    <asp:TextBox ID="last_name" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Date of Birth <span class="required">*</span></span> 
    <asp:TextBox ID="date_of_birth" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field4"><span>Marital Status</span> <asp:DropDownList ID="marital_status" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorce</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Religion</span> <asp:DropDownList ID="religion" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem>Christianity</asp:ListItem>
        <asp:ListItem>Islamic</asp:ListItem>
    </asp:DropDownList></label>

        <label for="field1"><span>Residential Address <span class="required">*</span></span> 
    <asp:TextBox ID="residential_address" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Postal Address <span class="required">*</span></span> 
    <asp:TextBox ID="postal_address" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Email <span class="required">*</span></span> 
    <asp:TextBox ID="email" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Phone <span class="required">*</span></span> 
    <asp:TextBox ID="phone" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Professional Qualification <span class="required">*</span></span> 
    <!--<asp:TextBox ID="qualification_professional" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox>--><br/><br/><br/>
         <asp:TextBox ID="first_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="1st Qual. with Year" style=" width: 220px;"></asp:TextBox><br/><br/>
         
        <asp:TextBox ID="second_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="2nd Qual. with Year" style=" width: 220px;"></asp:TextBox><br/><br/>

        <asp:TextBox ID="third_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="3rd Qual. with Year" style=" width: 220px;"></asp:TextBox>
        </label> 

        <label for="field1"><span>If Subject Teacher(Enter Subject(s)) <span class="required">*</span></span> 
    <asp:TextBox ID="discipline" runat="server" class="input-field" 
        name="field1" value="" Width="110px"></asp:TextBox></label> 

        <asp:TextBox ID="qualification_academic" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="false"></asp:TextBox>

<label for="field4"><span>Means of Identification</span> <asp:DropDownList ID="means_of_identification" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem>National ID Card</asp:ListItem>
        <asp:ListItem>Voter's Card</asp:ListItem>
        <asp:ListItem>Driving License</asp:ListItem>
        <asp:ListItem>International Passport</asp:ListItem>
    </asp:DropDownList></label>

  

       
<!--
<label><span>&nbsp;</span>  <asp:Button ID="Button1" runat="server" Text="Submit for Posting" type="submit" value="Submit" />   </label>
-->
</div>


<div class="form-style-2" style=" width: 550px; height: auto; float: right; margin-left:-45px;">

<label for="field1"><span>Appointment Being Sought <span class="required">*</span></span> 
<asp:DropDownList ID="first_appointment_being_sought" 
        runat="server" name="field4" class="select-field" Width="114px">
        <asp:ListItem>First Choice</asp:ListItem>
        <asp:ListItem>Accountancy</asp:ListItem>
        <asp:ListItem>Administration</asp:ListItem>
        <asp:ListItem>Agric Personnel</asp:ListItem>
        <asp:ListItem>Auxiliary Nurse</asp:ListItem>
        <asp:ListItem>Bursar/ Cashier</asp:ListItem>
        <asp:ListItem>Classroom Assistant</asp:ListItem>
        <asp:ListItem>Class Teacher</asp:ListItem>
        <asp:ListItem>Clear/ Nanny</asp:ListItem>
        <asp:ListItem>Community Health Assistant</asp:ListItem>
        <asp:ListItem>Community Health Extension Worker (CHEW)</asp:ListItem>
        <asp:ListItem>Doctor</asp:ListItem>
        <asp:ListItem>Driver</asp:ListItem>
        <asp:ListItem>Factory Worker/ Technician</asp:ListItem>
        <asp:ListItem>Fashion Designer</asp:ListItem>
        <asp:ListItem>Financial Services</asp:ListItem>
        <asp:ListItem>Gardener</asp:ListItem>
        <asp:ListItem>Graphic Artist</asp:ListItem>
        <asp:ListItem>Head Teacher</asp:ListItem>
        <asp:ListItem>Health Record Officer</asp:ListItem>
        <asp:ListItem>Hospital Maid</asp:ListItem>
        <asp:ListItem>Hotel/ Hospitality</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>Laboratory Technician</asp:ListItem>
        <asp:ListItem>Lesson Teacher</asp:ListItem>
        <asp:ListItem>Live-in Cook</asp:ListItem>
        <asp:ListItem>Live-in Housemaid</asp:ListItem>
        <asp:ListItem>Marketing</asp:ListItem>
        <asp:ListItem>Mid-Wife</asp:ListItem>
        <asp:ListItem>Nurse</asp:ListItem>
        <asp:ListItem>Out-going Housemaid</asp:ListItem>
        <asp:ListItem>Out-going Cook</asp:ListItem>
        <asp:ListItem>Part-Time Teacher</asp:ListItem>
        <asp:ListItem>Photographer</asp:ListItem>
        <asp:ListItem>Principal</asp:ListItem>
        <asp:ListItem>Real Estate</asp:ListItem>
        <asp:ListItem>Receptionist/ Office Assistant</asp:ListItem>
        <asp:ListItem>Sales Girl/ Boy</asp:ListItem>
        <asp:ListItem>Security Guard</asp:ListItem>
        <asp:ListItem>Secretary</asp:ListItem>
        <asp:ListItem>Store Keeper</asp:ListItem>
        <asp:ListItem>Stylist</asp:ListItem>
        <asp:ListItem>Subject Teacher</asp:ListItem>
        <asp:ListItem>Vice Principal</asp:ListItem>
        <asp:ListItem>Washer/ Presser</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList> 
    
    &nbsp;&nbsp; 
    <asp:DropDownList ID="second_appointment_being_sought" 
        runat="server" name="field4" class="select-field"  
        Width="114px">
        <asp:ListItem>Second Choice</asp:ListItem>
        <asp:ListItem>Accountancy</asp:ListItem>
        <asp:ListItem>Administration</asp:ListItem>
        <asp:ListItem>Agric Personnel</asp:ListItem>
        <asp:ListItem>Auxiliary Nurse</asp:ListItem>
        <asp:ListItem>Bursar/ Cashier</asp:ListItem>
        <asp:ListItem>Classroom Assistant</asp:ListItem>
        <asp:ListItem>Class Teacher</asp:ListItem>
        <asp:ListItem>Clear/ Nanny</asp:ListItem>
        <asp:ListItem>Community Health Assistant</asp:ListItem>
        <asp:ListItem>Community Health Extension Worker (CHEW)</asp:ListItem>
        <asp:ListItem>Doctor</asp:ListItem>
        <asp:ListItem>Driver</asp:ListItem>
        <asp:ListItem>Factory Worker/ Technician</asp:ListItem>
        <asp:ListItem>Fashion Designer</asp:ListItem>
        <asp:ListItem>Financial Services</asp:ListItem>
        <asp:ListItem>Gardener</asp:ListItem>
        <asp:ListItem>Graphic Artist</asp:ListItem>
        <asp:ListItem>Head Teacher</asp:ListItem>
        <asp:ListItem>Health Record Officer</asp:ListItem>
        <asp:ListItem>Hospital Maid</asp:ListItem>
        <asp:ListItem>Hotel/ Hospitality</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>Laboratory Technician</asp:ListItem>
        <asp:ListItem>Lesson Teacher</asp:ListItem>
        <asp:ListItem>Live-in Cook</asp:ListItem>
        <asp:ListItem>Live-in Housemaid</asp:ListItem>
        <asp:ListItem>Marketing</asp:ListItem>
        <asp:ListItem>Mid-Wife</asp:ListItem>
        <asp:ListItem>Nurse</asp:ListItem>
        <asp:ListItem>Out-going Housemaid</asp:ListItem>
        <asp:ListItem>Out-going Cook</asp:ListItem>
        <asp:ListItem>Part-Time Teacher</asp:ListItem>
        <asp:ListItem>Photographer</asp:ListItem>
        <asp:ListItem>Principal</asp:ListItem>
        <asp:ListItem>Real Estate</asp:ListItem>
        <asp:ListItem>Receptionist/ Office Assistant</asp:ListItem>
        <asp:ListItem>Sales Girl/ Boy</asp:ListItem>
        <asp:ListItem>Security Guard</asp:ListItem>
        <asp:ListItem>Secretary</asp:ListItem>
        <asp:ListItem>Store Keeper</asp:ListItem>
        <asp:ListItem>Stylist</asp:ListItem>
        <asp:ListItem>Subject Teacher</asp:ListItem>
        <asp:ListItem>Vice Principal</asp:ListItem>
        <asp:ListItem>Washer/ Presser</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
         </asp:DropDownList>
         
        &nbsp;&nbsp;  
    <asp:DropDownList ID="third_appointment_being_sought" 
        runat="server" name="field4" class="select-field"  
        Width="114px">
        <asp:ListItem>Third Choice</asp:ListItem>
        <asp:ListItem>Accountancy</asp:ListItem>
        <asp:ListItem>Administration</asp:ListItem>
        <asp:ListItem>Agric Personnel</asp:ListItem>
        <asp:ListItem>Auxiliary Nurse</asp:ListItem>
        <asp:ListItem>Bursar/ Cashier</asp:ListItem>
        <asp:ListItem>Classroom Assistant</asp:ListItem>
        <asp:ListItem>Class Teacher</asp:ListItem>
        <asp:ListItem>Clear/ Nanny</asp:ListItem>
        <asp:ListItem>Community Health Assistant</asp:ListItem>
        <asp:ListItem>Community Health Extension Worker (CHEW)</asp:ListItem>
        <asp:ListItem>Doctor</asp:ListItem>
        <asp:ListItem>Driver</asp:ListItem>
        <asp:ListItem>Factory Worker/ Technician</asp:ListItem>
        <asp:ListItem>Fashion Designer</asp:ListItem>
        <asp:ListItem>Financial Services</asp:ListItem>
        <asp:ListItem>Gardener</asp:ListItem>
        <asp:ListItem>Graphic Artist</asp:ListItem>
        <asp:ListItem>Head Teacher</asp:ListItem>
        <asp:ListItem>Health Record Officer</asp:ListItem>
        <asp:ListItem>Hospital Maid</asp:ListItem>
        <asp:ListItem>Hotel/ Hospitality</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>Laboratory Technician</asp:ListItem>
        <asp:ListItem>Lesson Teacher</asp:ListItem>
        <asp:ListItem>Live-in Cook</asp:ListItem>
        <asp:ListItem>Live-in Housemaid</asp:ListItem>
        <asp:ListItem>Marketing</asp:ListItem>
        <asp:ListItem>Mid-Wife</asp:ListItem>
        <asp:ListItem>Nurse</asp:ListItem>
        <asp:ListItem>Out-going Housemaid</asp:ListItem>
        <asp:ListItem>Out-going Cook</asp:ListItem>
        <asp:ListItem>Part-Time Teacher</asp:ListItem>
        <asp:ListItem>Photographer</asp:ListItem>
        <asp:ListItem>Principal</asp:ListItem>
        <asp:ListItem>Real Estate</asp:ListItem>
        <asp:ListItem>Receptionist/ Office Assistant</asp:ListItem>
        <asp:ListItem>Sales Girl/ Boy</asp:ListItem>
        <asp:ListItem>Security Guard</asp:ListItem>
        <asp:ListItem>Secretary</asp:ListItem>
        <asp:ListItem>Store Keeper</asp:ListItem>
        <asp:ListItem>Stylist</asp:ListItem>
        <asp:ListItem>Subject Teacher</asp:ListItem>
        <asp:ListItem>Vice Principal</asp:ListItem>
        <asp:ListItem>Washer/ Presser</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
         </asp:DropDownList>
   </label>


    <label for="field1"><span>Academic Qualification 1 <span class="required">*</span></span>
    <asp:DropDownList ID="first_acad_qualification" runat="server" name="field4" 
        class="select-field" Width="120px">
        <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
      </asp:DropDownList> &nbsp;&nbsp; 
    <asp:DropDownList ID="first_acad_qualification_course" runat="server" name="field4" 
        class="select-field" Width="140px">
         <asp:ListItem>Course of Study</asp:ListItem>
        <asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Food Science and Technology</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management (Forestry)</asp:ListItem>
<asp:ListItem>Home Science,Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fashion Design</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creatiuve Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music</asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others(Art)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Biological Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY/ MANAGEMENT</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Accountancy</asp:ListItem>
<asp:ListItem>Acturial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Co-operative Economics and Management</asp:ListItem>
<asp:ListItem>Hospitality and Management</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Human Resources Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Office Technology and Management</asp:ListItem>
<asp:ListItem>Purchasing and Supply</asp:ListItem>
<asp:ListItem>Others(Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others(Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Adult Education and Extra-Mural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Education & Accountancy</asp:ListItem>
<asp:ListItem>Education & Computer Science</asp:ListItem>
<asp:ListItem>Education & Economics</asp:ListItem>
<asp:ListItem>Education & Mathematics</asp:ListItem>
<asp:ListItem>Education & Physics</asp:ListItem>
<asp:ListItem>Education & Religious Studies</asp:ListItem>
<asp:ListItem>Education & Social Science</asp:ListItem>
<asp:ListItem>Education And Biology</asp:ListItem>
<asp:ListItem>Education And Chemistry</asp:ListItem>
<asp:ListItem>Education And English Language</asp:ListItem>
<asp:ListItem>Education And French</asp:ListItem>
<asp:ListItem>Education And Geography/Physics</asp:ListItem>
<asp:ListItem>Education And Political Science</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>Educational / Psychology Guidance And Counselling</asp:ListItem>
<asp:ListItem>Health and Physical Education</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Science Education</asp:ListItem>
<asp:ListItem>Social Sciences Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Igbo Linguistics</asp:ListItem>
<asp:ListItem>Others(Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bioresources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Chemical Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronic Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical and Materials Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others(Engineering)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIRONMENTAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Building</asp:ListItem>
<asp:ListItem>Geoinformatics and Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others(Environmental Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Auxiliary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Dental Technology</asp:ListItem>
<asp:ListItem>Mid-Wifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Health Information Technology</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others(Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others(Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesia</asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry</asp:ListItem>
<asp:ListItem>Medical Microbiology</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolaryngology</asp:ListItem>
<asp:ListItem>Pediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics</asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Others(Medical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Department of Pharmacology and Toxicology</asp:ListItem>
<asp:ListItem>Others(Pharmaceutical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science</asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry</asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others(Physical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science</asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work</asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others(Social Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy</asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology</asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Veterinary Teaching Hospital</asp:ListItem>
<asp:ListItem>Others(Veterinary Medicine)</asp:ListItem>
        </asp:DropDownList>
         &nbsp;&nbsp;<asp:TextBox ID="first_acad_qualification_year" runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
        </label>
        

        
        <label for="field1"><span>Academic Qualification 2 <span class="required">*</span></span> 
        <asp:DropDownList ID="second_acad_qualification" runat="server" 
        name="field4" class="select-field" style=" width:120px;">
         <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
     &nbsp;&nbsp; <asp:DropDownList ID="second_acad_qualification_course" 
        runat="server" name="field4" 
        class="select-field" Width="140px">
        <asp:ListItem>Course of Study</asp:ListItem>
        <asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Food Science and Technology</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management (Forestry)</asp:ListItem>
<asp:ListItem>Home Science,Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fashion Design</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creatiuve Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music</asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others(Art)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Biological Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY/ MANAGEMENT</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Accountancy</asp:ListItem>
<asp:ListItem>Acturial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Co-operative Economics and Management</asp:ListItem>
<asp:ListItem>Hospitality and Management</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Human Resources Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Office Technology and Management</asp:ListItem>
<asp:ListItem>Purchasing and Supply</asp:ListItem>
<asp:ListItem>Others(Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others(Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Adult Education and Extra-Mural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Education & Accountancy</asp:ListItem>
<asp:ListItem>Education & Computer Science</asp:ListItem>
<asp:ListItem>Education & Economics</asp:ListItem>
<asp:ListItem>Education & Mathematics</asp:ListItem>
<asp:ListItem>Education & Physics</asp:ListItem>
<asp:ListItem>Education & Religious Studies</asp:ListItem>
<asp:ListItem>Education & Social Science</asp:ListItem>
<asp:ListItem>Education And Biology</asp:ListItem>
<asp:ListItem>Education And Chemistry</asp:ListItem>
<asp:ListItem>Education And English Language</asp:ListItem>
<asp:ListItem>Education And French</asp:ListItem>
<asp:ListItem>Education And Geography/Physics</asp:ListItem>
<asp:ListItem>Education And Political Science</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>Educational / Psychology Guidance And Counselling</asp:ListItem>
<asp:ListItem>Health and Physical Education</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Science Education</asp:ListItem>
<asp:ListItem>Social Sciences Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Igbo Linguistics</asp:ListItem>
<asp:ListItem>Others(Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bioresources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Chemical Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronic Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical and Materials Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others(Engineering)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIRONMENTAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Building</asp:ListItem>
<asp:ListItem>Geoinformatics and Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others(Environmental Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Auxiliary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Dental Technology</asp:ListItem>
<asp:ListItem>Mid-Wifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Health Information Technology</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others(Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others(Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesia</asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry</asp:ListItem>
<asp:ListItem>Medical Microbiology</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolaryngology</asp:ListItem>
<asp:ListItem>Pediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics</asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Others(Medical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Department of Pharmacology and Toxicology</asp:ListItem>
<asp:ListItem>Others(Pharmaceutical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science</asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry</asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others(Physical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science</asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work</asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others(Social Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy</asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology</asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Veterinary Teaching Hospital</asp:ListItem>
<asp:ListItem>Others(Veterinary Medicine)</asp:ListItem>
        </asp:DropDownList>
         &nbsp;&nbsp;<asp:TextBox ID="second_acad_qualification_year" 
        runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
    </label>

    
    <label for="field1"><span>Academic Qualification 3 <span class="required">*</span></span> 
        <asp:DropDownList ID="third_acad_qualification" runat="server" 
        name="field4" class="select-field" style=" width:120px;">
         <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>
     &nbsp;&nbsp; <asp:DropDownList ID="third_acad_qualification_course" 
        runat="server" name="field4" 
        class="select-field" Width="140px">
        <asp:ListItem>Course of Study</asp:ListItem>
        <asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Food Science and Technology</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management (Forestry)</asp:ListItem>
<asp:ListItem>Home Science,Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fashion Design</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creatiuve Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music</asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others(Art)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Biological Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY/ MANAGEMENT</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Accountancy</asp:ListItem>
<asp:ListItem>Acturial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Co-operative Economics and Management</asp:ListItem>
<asp:ListItem>Hospitality and Management</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Human Resources Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Office Technology and Management</asp:ListItem>
<asp:ListItem>Purchasing and Supply</asp:ListItem>
<asp:ListItem>Others(Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others(Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Adult Education and Extra-Mural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Education & Accountancy</asp:ListItem>
<asp:ListItem>Education & Computer Science</asp:ListItem>
<asp:ListItem>Education & Economics</asp:ListItem>
<asp:ListItem>Education & Mathematics</asp:ListItem>
<asp:ListItem>Education & Physics</asp:ListItem>
<asp:ListItem>Education & Religious Studies</asp:ListItem>
<asp:ListItem>Education & Social Science</asp:ListItem>
<asp:ListItem>Education And Biology</asp:ListItem>
<asp:ListItem>Education And Chemistry</asp:ListItem>
<asp:ListItem>Education And English Language</asp:ListItem>
<asp:ListItem>Education And French</asp:ListItem>
<asp:ListItem>Education And Geography/Physics</asp:ListItem>
<asp:ListItem>Education And Political Science</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>Educational / Psychology Guidance And Counselling</asp:ListItem>
<asp:ListItem>Health and Physical Education</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Science Education</asp:ListItem>
<asp:ListItem>Social Sciences Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Igbo Linguistics</asp:ListItem>
<asp:ListItem>Others(Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bioresources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Chemical Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronic Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical and Materials Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others(Engineering)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIRONMENTAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Building</asp:ListItem>
<asp:ListItem>Geoinformatics and Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others(Environmental Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Auxiliary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Dental Technology</asp:ListItem>
<asp:ListItem>Mid-Wifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Health Information Technology</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others(Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others(Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesia</asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry</asp:ListItem>
<asp:ListItem>Medical Microbiology</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolaryngology</asp:ListItem>
<asp:ListItem>Pediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics</asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Others(Medical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Department of Pharmacology and Toxicology</asp:ListItem>
<asp:ListItem>Others(Pharmaceutical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science</asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry</asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others(Physical Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science</asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work</asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others(Social Sciences)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy</asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology</asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Veterinary Teaching Hospital</asp:ListItem>
<asp:ListItem>Others(Veterinary Medicine)</asp:ListItem>
        </asp:DropDownList>
         &nbsp;&nbsp;<asp:TextBox ID="third_acad_qualification_year" runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
        </label> 


        <label for="field5"><span>Location(s) <span class="required">*</span></span>  
    <asp:TextBox ID="location" runat="server" name="field5" 
        class="textarea-field" TextMode="MultiLine"></asp:TextBox>   </label>
        
        <label for="field1"><span>Reference Name <span class="required">*</span></span> 
    <asp:TextBox ID="reference_name" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Address <span class="required">*</span></span> 
    <asp:TextBox ID="reference_address" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Phone <span class="required">*</span></span> 
    <asp:TextBox ID="reference_phone" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>  

<!--<label for="field1"><span>User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label> -->                    

<label for="field5"><span>Work Experience <span class="required">*</span></span>  
   <!-- <asp:TextBox ID="work_experience" runat="server" name="field5" 
        class="textarea-field"></asp:TextBox> --> <br/><br/><br/>
         <asp:TextBox ID="comp1" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Name of Company"></asp:TextBox>
        <asp:TextBox ID="duration1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Year Interval/Duration"></asp:TextBox>
        <asp:TextBox ID="positionheld1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox>
        <asp:TextBox ID="salary_range1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary Range"></asp:TextBox>
         <br/><br/>

        <asp:TextBox ID="comp2" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Name of Company"></asp:TextBox>
        <asp:TextBox ID="duration2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Year Interval/Duration"></asp:TextBox>
        <asp:TextBox ID="positionheld2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox> 
          <asp:TextBox ID="salary_range2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary Range"></asp:TextBox>
        <br/><br/>

        <asp:TextBox ID="comp3" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Name of Company"></asp:TextBox>
        <asp:TextBox ID="duration3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Year Interval/Duration"></asp:TextBox>
        <asp:TextBox ID="positionheld3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox>
          <asp:TextBox ID="salary_range3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary Range"></asp:TextBox>
         <br/><br/>

       

 
    

         <asp:TextBox ID="TextBox8" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
        <asp:TextBox ID="work_experience1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience3" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         </label>

        <label for="field1"><span>ID Number <span class="required">*</span></span> 
    <asp:TextBox ID="id_number" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>
      
      <span>Job Category</span> 
           <asp:TextBox ID="category_general" runat="server" Visible="false"></asp:TextBox>
         
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="job_corporate" runat="server" /> Corporate </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="job_general" runat="server" /> General </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="job_medical" runat="server" /> Medical </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="job_Teaching" runat="server" /> Teaching </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="job_others" runat="server" /> Others </font>
   
    
    <br/><br/>
    
    
    <span >Other Skills(Computer Packages well familiar with) -> Tick as appropriate</span><br/>
            <asp:TextBox ID="other_skills" runat="server" Visible="false"></asp:TextBox>
    
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_word" runat="server" /> Microsoft Word </font>
   <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_excel" runat="server" /> Microsoft Excell </font>
   <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_access" runat="server" /> Microsoft Access </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="skill_corel_draw" runat="server" /> Corel Draw </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="skill_adobe_photoshop" runat="server" /> Adobe Photoshop </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="skill_print_artist" runat="server" /> Print Artist </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;">  <asp:TextBox ID="skill_others" runat="server" placeholder="Others (Please Specify)"></asp:TextBox> </font>
   
   <!--33333333333333 33333333333333333333-->
   <br/><br/>  <label for="field1"><span>Current Experience <span class="required">*</span></span> 
    <asp:TextBox ID="current_experience" runat="server" class="input-field" 
        name="field1" value="" Height="70px" ReadOnly="True" TextMode="MultiLine" 
        Width="334px" BackColor="MidnightBlue" ForeColor="Window"></asp:TextBox></label>

         <label for="field1"><span>Additional Skills <span class="required">*</span></span> 
    <asp:TextBox ID="current_skills" runat="server" class="input-field" 
        name="field1" value="" Height="70px" ReadOnly="True" TextMode="MultiLine" 
        Width="304px" BackColor="MidnightBlue" ForeColor="Window"></asp:TextBox></label>
       
    </div>

    
    
    <label><span>&nbsp;</span>  <asp:Button ID="Button5" runat="server" 
        Text=" SAVE UPDATE " type="submit" value="Submit" 
        
        style=" margin-left: 700px; height: 40px; color: Window; background-color: deeppink;" 
        onclick="Button5_Click" />   </label>

    



<div style=" width:10px;"> </div>



    </label>



</asp:Panel>


<!--############################################################################### PANEL FOR UPLOADING IMAGE ####################################### -->
<asp:Panel ID="Panel_upload_image" runat="server" Visible="false" style=" width: 1000px;">
<br/><br/>
 <asp:Label ID="Label1" runat="server" style=" color: deeppink; margin-left: 300px;"></asp:Label>

<div class="form-style-2" style=" width: 500px; height: auto; margin-left: 200px;">
 <label for="field5"><span>Select Image <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload1" runat="server" class="input-field" 
        name="field1" /> </label>

         <label><span>&nbsp;</span>  <asp:Button ID="Button6" runat="server" 
        Text=" Confirm Upload " type="submit" value="Submit" 
        
        style=" margin-left: 100px; height: 40px; color: Window; background-color: deeppink;" 
        onclick="Button6_Click" />   </label>

        </div>

</asp:Panel>


<!--############################################################################### PANEL FOR UPLOADING RESUME ####################################### -->
<asp:Panel ID="Panel_upload_cv" runat="server" Visible="false" style=" margin-left: 300px;">
<br/><br/>
 <asp:Label ID="Label2" runat="server" style=" color: deeppink; margin-left: 300px;"></asp:Label>

<div class="form-style-2" style=" width: 500px; height: auto; margin-left: 200px;">
 <label for="field5"><span>Select CV to Upload <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload2" runat="server" class="input-field" 
        name="field1" /> </label>

         <label><span>&nbsp;</span>  <asp:Button ID="Button7" runat="server" 
        Text=" Confirm Upload " type="submit" value="Submit" 
        
        style=" margin-left: 100px; height: 40px; color: Window; background-color: deeppink;" 
        onclick="Button7_Click" />   </label>

        </div>

</asp:Panel>



<!--############################################################################### PANEL FOR JOB LISTING ####################################### -->

    <asp:Panel ID="Panel_job_list" runat="server" Visible="true" style=" margin-left: 250px; width: 800px;">
    <br/><br/>

    <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate>
                   
					<!--<li><a href='<%# Eval("Job_Category") %>'></li>-->
                     <div class="col_1">
   	        <div class="col-sm-4 row_2">
				<a href='<%# Eval("Post_Url") %>'><img src='<%# Eval("Image_Url") %>' style=" height: 180px; width: 300px; border: 2px solid blue;" class="img-responsive" alt=""/></a>
			</div>
			<div class="col-sm-8 row_1">
				<h4><a href='<%# Eval("Post_Url") %>'><%# Eval("Job_Title") %></a></h4>
				<h6>Posted Date <span class="dot">·</span> <%# Eval("Date") %> </h6>

				<p><%# Eval("Leading_Description") %></p>
				<div class="social">	
					<a class="btn_1" href="#">
						<!--<i class="fa fa-facebook fb"></i> class= -->
                       <span "share1 fb"> 
                       <span class="fb-share-button" data-href="https://trupurpose.com.ng" data-layout="button" data-size="large" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Ftrupurpose.com.ng%2F&amp;src=sdkpreparse"></a></span>
						</span>								
					</a>

					<a class="btn_1" href="#" style=" margin-left: -10px;">
						<span class="share1">
                        <a href="https://twitter.com/share" class="twitter-share-button" data-show-count="false" data-size="large">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                 	</span>							
					</a>

					<a class="btn_1" href="#">
						<span class="share1 google"><script src="https://apis.google.com/js/plusone.js"></script>
<g:plus action="share" annotation="bubble"></g:plus></span>
					</a>

                     <a class="btn_1" href="#" style=" margin-left:-27px; ">
                    <span class="share1" > <a href='<%# Eval("Post_Url") %>' style=" background-color: #f44336; padding: 5px 5px; color: white; text-align: center; text-decoration: none; display: inline-block; font-family: Comic Sans MS; font-size: 12px; border-radius: 0px; " data-size="large" > APPLY NOW </a></span>
                    </a>
         <div class="clearfix"> </div>
         
		
		   </div>
                   
                    	

                    </ItemTemplate>
         </asp:DataList>


   <!-- <asp:DataList ID="DataList9" runat="server">
          <ItemTemplate>
                   
					
                     <div class="col_1">
   	        <div class="col-sm-4 row_2">
				<a href='<%# Eval("Post_Url") %>'><img src='<%# Eval("Image_Url") %>' style=" height: 180px; width: 300px; border: 2px solid blue;" class="img-responsive" alt=""/></a>
			</div>
			<div class="col-sm-8 row_1">
				<h4><a href='<%# Eval("Post_Url") %>'><%# Eval("Job_Title") %></a></h4>
				<h6>Posted Date <span class="dot">·</span> <%# Eval("Date") %> </h6>

				<p><%# Eval("Leading_Description") %></p>
				<div class="social">	
					<a class="btn_1" href="#">
						<i class="fa fa-facebook fb"></i>
						<span class="share1 fb">Share</span>								
					</a>
					<a class="btn_1" href="#">
						<i class="fa fa-twitter tw"></i>
						<span class="share1">Tweet</span>								
					</a>

					<a class="btn_1" href="#">
						<i class="fa fa-google-plus google"></i>
						<span class="share1 google">Share</span>
					</a>
                  
			   </div>
                
			</div>

             <a href='<%# Eval("Post_Url") %>' style=" background-color: #f44336;
    color: white;
    padding: 10px 14px;
    text-align: center;
    text-decoration: none;
    display: inline-block; font-family: Comic Sans MS; font-size: 12px; border-radius: 4px; margin-left: 143px; margin-top: 5px;"> APPLY NOW </a>

         <div class="clearfix"> </div>
         
		
		   </div>
                   
                    	

                    </ItemTemplate>
         </asp:DataList>-->

    </asp:Panel>






</asp:Content>
