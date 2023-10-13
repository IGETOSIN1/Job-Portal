<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Web_Trupurpose.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox_employer_hide" runat="server" Visible="false"></asp:TextBox>

<!--<div style=" margin-top: -13px; border-left: 1px solid black;">-->
<p style=" float: left; border-right: 1px solid black; border-bottom: 1px solid black;">
<br/>
 <asp:Button ID="Button9" runat="server" Text="Register Employer" 
        
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic;" 
        onclick="Button9_Click"  /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

 <asp:Button ID="Button2" runat="server" Text="Register Applicant" 
          style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button2_Click"  /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

 <asp:Button ID="Button16" runat="server" Text="Post Job" 
          
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" onclick="Button16_Click" 
        /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

 <asp:Button ID="Button11" runat="server" Text="Log Out" 
        
        
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button1_Click"  /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>
  
</p>


<asp:Label ID="result_output" runat="server" style=" color: deeppink; margin-left: 200px;"></asp:Label>
<!--############################################################################### PANEL FOR RECORD ####################################### -->
<asp:Panel ID="Panel_register_applicant" runat="server" Visible="false" style=" width: 1000px;">

<div class="form-style-2" style=" width: 300px; height: auto; float: left; margin-left: 0px;">
<div class="form-style-2-heading"> Job Seeker Registration Form <asp:Label ID="Label1" runat="server" style=" color: deeppink;"></asp:Label></div>

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
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Last Name <span class="required">*</span></span> 
    <asp:TextBox ID="last_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Date of Birth <span class="required">*</span></span> 
    <asp:TextBox ID="date_of_birth" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field4"><span>Marital Status</span> 
    <asp:DropDownList ID="marital_status" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorce</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Religion</span> 
    <asp:DropDownList ID="religion" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Christianity</asp:ListItem>
        <asp:ListItem>Islamic</asp:ListItem>
    </asp:DropDownList></label>

        <label for="field1"><span>Residential Address <span class="required">*</span></span> 
    <asp:TextBox ID="residential_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Postal Address <span class="required">*</span></span> 
    <asp:TextBox ID="postal_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Email <span class="required">*</span></span> 
    <asp:TextBox ID="email" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Professional Qualification <span class="required">*</span></span> 
    <!--<asp:TextBox ID="qualification_professional" runat="server" class="input-field" 
        name="field1" value="" > </asp:TextBox>--><br/><br/><br/>
         <asp:TextBox ID="first_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="1st Qual. with Year" style=" width: 220px;"></asp:TextBox><br/><br/>
         
        <asp:TextBox ID="second_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="2nd Qual. with Year" style=" width: 220px;"></asp:TextBox><br/><br/>

        <asp:TextBox ID="third_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="3rd Qual. with Year" style=" width: 220px;"></asp:TextBox>
       </label> 

        <label for="field1"><span>If Subject Teacher(Enter Subject(s)) <span class="required">*</span></span> 
    <asp:TextBox ID="discipline" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

<label for="field4"><span>Means of Identification</span> 
    <asp:DropDownList ID="means_of_identification" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>National ID Card</asp:ListItem>
        <asp:ListItem>Voter's Card</asp:ListItem>
        <asp:ListItem>Driving License</asp:ListItem>
        <asp:ListItem>International Passport</asp:ListItem>
    </asp:DropDownList></label>

 <label for="field1"><span>ID Number <span class="required">*</span></span> 
    <asp:TextBox ID="id_number" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>

        
       
<!--
<label><span>&nbsp;</span>  <asp:Button ID="Button1" runat="server" Text="Submit for Posting" type="submit" value="Submit" />   </label>
-->
</div>


<div class="form-style-2" style=" width: 550px; height: auto; float: right; margin-left: -45px;">
<br/><br/>

  <label for="field1" style=" width: 600px;"><span>Phone <span class="required">*</span></span> 
    <asp:TextBox ID="phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" ></asp:TextBox></label> 
        


 <label for="field1"><span>Appointment Beign Sought <span class="required">*</span></span> 
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
    <!--<asp:DropDownList ID="category_job_sought" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem>Select Appintment Beign Sought</asp:ListItem>
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
        <asp:ListItem>Principal</asp:ListItem>
        <asp:ListItem>Real Estate</asp:ListItem>
        <asp:ListItem>Receptionist/ Office Assistant</asp:ListItem>
        <asp:ListItem>Sales Girl/ Boy</asp:ListItem>
        <asp:ListItem>Security Guard</asp:ListItem>
        <asp:ListItem>Secretary</asp:ListItem>
        <asp:ListItem>Stylist</asp:ListItem>
        <asp:ListItem>Subject Teacher</asp:ListItem>
        <asp:ListItem>Vice Principal</asp:ListItem>
        <asp:ListItem>Washer/ Presser</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList>--></label>


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
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Arts)</asp:ListItem>
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
        <asp:DropDownList ID="second_acad_qualification" runat="server" name="field4" class="select-field" style=" width:120px;">
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
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Arts)</asp:ListItem>
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
        <asp:DropDownList ID="third_acad_qualification" runat="server" name="field4" class="select-field" style=" width:120px;">
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
<asp:ListItem>Others(Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biological Sciences</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Cell Biology & Genetics</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others(Arts)</asp:ListItem>
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

        
        <label for="field4"><span>Location(1st Choice)</span> 
    <asp:DropDownList ID="location_first_choice" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label> 

    <label for="field4"><span>Location(2nd Choice)</span> 
    <asp:DropDownList ID="location_second_choice" 
        runat="server" name="field4" class="select-field" >
         <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Location(3rd Choice)</span> 
    <asp:DropDownList ID="location_third_choice" 
        runat="server" name="field4" class="select-field" >
         <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label>
        
        <label for="field1"><span>Reference Name <span class="required">*</span></span> 
    <asp:TextBox ID="reference_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Address <span class="required">*</span></span> 
    <asp:TextBox ID="reference_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Phone <span class="required">*</span></span> 
    <asp:TextBox ID="reference_phone" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label>  

<label for="field1"><span>User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" ></asp:TextBox></label>         

<label for="field1"><span>Confirm Password <span class="required">*</span></span> 
    <asp:TextBox ID="confirm_password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" ></asp:TextBox></label>            

<label for="field5"><span>Work Experience <span class="required"></span></span>  
   <!-- <asp:TextBox ID="work_experience" runat="server" name="field5" 
        class="textarea-field" ></asp:TextBox> --> <br/><br/><br/>
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

       

 
    

         <asp:TextBox ID="TextBox2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
        <asp:TextBox ID="work_experience1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience3" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>

         </label>

         <span >Job Category</span><br/>
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
   
    

         <!-- <label for="field5"><span>Upload CV (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload1" runat="server" class="input-field" 
        name="field1" /> </label>

         <label for="field5"><span>Upload Image (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload2" runat="server" class="input-field" 
        name="field1" /> </label>-->

    </div>

    <div></div>
    
    <label><span>&nbsp;</span> 
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
     <asp:Button ID="Button21" runat="server" 
        Text=" Confirm Registration " type="submit" value="Submit" 
        
        style=" margin-left: 300px; color: Window; background-color: deeppink; height: 36px;" 
        onclick="Button21_Click" />    
        
       <br/>

        <asp:TextBox ID="TextBox1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>


    </label>
    </asp:Panel>


<!--############################################################################### PANEL FOR UPLOADING IMAGE ####################################### -->
<asp:Panel ID="Panel_register_employer" runat="server" Visible="false" style=" float: right; margin-top: -23px;">

<br/><br/>

<div class="form-style-2" style=" height: auto;">
<div class="form-style-2-heading"> Company/ Recruiter Registration Form <asp:Label ID="Label2" runat="server" style=" color: deeppink;"></asp:Label></div>

<label for="field1"><span>Name of Company <span class="required">*</span></span> 
    <asp:TextBox ID="name_of_organization" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Company Email <span class="required">*</span></span> 
    <asp:TextBox ID="company_email" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Company Phone <span class="required">*</span></span> 
    <asp:TextBox ID="company_phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone"></asp:TextBox></label> 

        <label for="field1"><span>Address <span class="required">*</span></span> 
    <asp:TextBox ID="address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>City <span class="required">*</span></span> 
    <asp:TextBox ID="city" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="state" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Country <span class="required">*</span></span> 
    <asp:TextBox ID="country" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Name(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox> </label> 

        <label for="field1"><span>Address(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1" style=" width: 600px;"><span>Phone(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;"></asp:TextBox> </label> 

        <label for="field1"><span>Email(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_email" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Position(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_position" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Category of Industry <span class="required">*</span></span> 
    <asp:TextBox ID="category_industry_emp" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

<label for="field4"><span>Industry</span> 
    <asp:DropDownList ID="company_industry" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Banking &amp; Finance</asp:ListItem>
        <asp:ListItem>Academic</asp:ListItem>
        <asp:ListItem>Engineering</asp:ListItem>
        <asp:ListItem>Contractor</asp:ListItem>
        <asp:ListItem>Government</asp:ListItem>
        <asp:ListItem>Information Technology</asp:ListItem>
        <asp:ListItem>Consultancy Services</asp:ListItem>
        <asp:ListItem>Medicine</asp:ListItem>
        <asp:ListItem>Law</asp:ListItem>
        <asp:ListItem>Music</asp:ListItem>
        <asp:ListItem>Theatre & Art</asp:ListItem>
        <asp:ListItem>NGOs</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList></label>

<label for="field5"><span>Services <span class="required">*</span></span>  
    <asp:TextBox ID="Services" runat="server" name="field5" 
        class="textarea-field"></asp:TextBox>   </label>

        <label for="field1"><span>User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name_emp" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password_emp" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" ></asp:TextBox></label>         

<label for="field1"><span>Confirm Password <span class="required">*</span></span> 
    <asp:TextBox ID="confirm_password_emp" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password"></asp:TextBox></label> 
        
        
        <label for="field5"><span>Upload Company Logo/ Image (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload3" runat="server" class="input-field" 
        name="field1" /> </label>
        
       


<label><span>&nbsp;</span>  <asp:Button ID="Button31" runat="server" 
        Text="Confirm Registration" type="submit" value="Submit" 
        onclick="Button31_Click"  />  
        

         </label>

        <asp:TextBox ID="TextBox6" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;" 
        Visible="False" ></asp:TextBox>

</div>

    </span>

    </span>

</asp:Panel>





<!-- ############################################# POSTING NEW JOB ###################################################### -->
    <asp:Panel ID="Panel_post_job" runat="server" Visible="false" style=" float: right; margin-top: -23px;">

    <asp:TextBox ID="employee_name" runat="server" Visible="False"></asp:TextBox>




<div class="form-style-2" style=" width: 500px; height: auto;">
<div class="form-style-2-heading">Provide your information  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label3" runat="server" style=" color: deeppink;"></asp:Label></div>

    <label for="field4"><span>Name of Employer</span> <asp:DropDownList ID="name_of_employer_post" 
        runat="server" name="field4" class="select-field">
        
    </asp:DropDownList><br/><br/>

<label for="field4"><span>Job Category</span> <asp:DropDownList ID="job_category" 
        runat="server" name="field4" class="select-field">
         <asp:ListItem>Select Category of Job</asp:ListItem>
        <asp:ListItem>Corporate Job</asp:ListItem>
        <asp:ListItem>General Job</asp:ListItem>
        <asp:ListItem>Medical Job</asp:ListItem>
        <asp:ListItem>Teaching Job</asp:ListItem>
         <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList><br/><br/>
    
    <span>Industry</span> <asp:DropDownList ID="job_industry" 
        runat="server" name="field4" class="select-field">
         <asp:ListItem>Select Industry</asp:ListItem>
        <asp:ListItem>Banking &amp; Finance</asp:ListItem>
        <asp:ListItem>Academic</asp:ListItem>
        <asp:ListItem>Engineering</asp:ListItem>
        <asp:ListItem>Contractor</asp:ListItem>
        <asp:ListItem>Government</asp:ListItem>
        <asp:ListItem>Music</asp:ListItem>
        <asp:ListItem>Theatre & Art</asp:ListItem>
        <asp:ListItem>NGOs</asp:ListItem>
         <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList></label>
    
<label for="field1"><span>Job/ Role Description <span class="required">*</span></span> 
    <asp:TextBox ID="job_description" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>         
   
<label for="field1"><span>Position/ Role <span class="required">*</span></span> 
    <asp:TextBox ID="job_position" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Job Title <span class="required">*</span></span> 
    <asp:TextBox ID="job_title" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Short Description(Role) <span class="required">*</span></span> 
    <asp:TextBox ID="leading_description" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>  <br/>       

<label for="field1"><span>Full Description(Role) <span class="required">*</span></span> 
    <asp:TextBox ID="full_description" runat="server" 
        name="field1" value="" class="textarea-field"></asp:TextBox></label>         

<label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="state_post" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Location/ City <span class="required">*</span></span> 
    <asp:TextBox ID="location" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Required Qualification <span class="required">*</span></span> 
    <asp:TextBox ID="required_qualification" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>         

<label for="field1"><span>Require age(Age Range) <span class="required">*</span></span> 
    <asp:TextBox ID="age_range" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Tick if you want Interviews from Us <span class="required">*</span></span> 
    <asp:CheckBox ID="CheckBox_interview" runat="server" /></label> <br/>    

<label for="field5"><span>Additional Information (Optional) <span class="required">*</span></span>  
    <asp:TextBox ID="other_information" runat="server" name="field5" 
        class="textarea-field"></asp:TextBox>   </label><br/>

        <label for="field5"><span>Upload Company Logo/ Image (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload4" runat="server" class="input-field" 
        name="field1" /> </label><br/>

<label><span>&nbsp;</span>  
    <asp:Button ID="Button41" runat="server" 
        Text="Post Job Online" type="submit" value="Submit" 
        onclick="Button1_Click1" />   </label>

        <asp:TextBox ID="TextBox3" runat="server" class="input-field" 
        name="field1" value="" Visible="false"></asp:TextBox>

</div>

    </asp:Panel>


</asp:Content>
