<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Applicant-Form.aspx.cs" Inherits="Web_Trupurpose.Applicant_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" style=" width: 1000px;">
   

<div class="form-style-2" style=" width: 600px; height: auto; float: left;">
<div class="form-style-2-heading"> Job Seeker Registration Form <asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label></div>

<label for="field4"><span>Title</span> <asp:DropDownList ID="title" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="title_SelectedIndexChanged">
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Ms</asp:ListItem>
        <asp:ListItem>Dr</asp:ListItem>
        <asp:ListItem>Chief</asp:ListItem>
    </asp:DropDownList></label>

<label for="field1"><span>First Name <span class="required">*</span></span> 
    <asp:TextBox ID="first_name" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="first_name_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Last Name <span class="required">*</span></span> 
    <asp:TextBox ID="last_name" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="last_name_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Date of Birth <span class="required">*</span></span> 
    <asp:TextBox ID="date_of_birth" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="date_of_birth_TextChanged"></asp:TextBox></label> 

        <label for="field4"><span>Marital Status</span> 
    <asp:DropDownList ID="marital_status" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="marital_status_SelectedIndexChanged">
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorce</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Religion</span> 
    <asp:DropDownList ID="religion" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="religion_SelectedIndexChanged">
        <asp:ListItem>Christianity</asp:ListItem>
        <asp:ListItem>Islamic</asp:ListItem>
    </asp:DropDownList></label>

        <label for="field1"><span>Residential Address <span class="required">*</span></span> 
    <asp:TextBox ID="residential_address" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="residential_address_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Postal Address <span class="required">*</span></span> 
    <asp:TextBox ID="postal_address" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="postal_address_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Email <span class="required">*</span></span> 
    <asp:TextBox ID="email" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="email_TextChanged"></asp:TextBox></label> 

       
        <label for="field1"><span>Academic Qualifications <span class="required">*</span></span> 
    <asp:TextBox ID="qualification_academic" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="qualification_academic_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Professional Qualification <span class="required">*</span></span> 
    <asp:TextBox ID="qualification_professional" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="qualification_professional_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Discipline <span class="required">*</span></span> 
    <asp:TextBox ID="discipline" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="discipline_TextChanged"></asp:TextBox></label> 

<label for="field4"><span>Means of Identification</span> 
    <asp:DropDownList ID="means_of_identification" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="means_of_identification_SelectedIndexChanged">
        <asp:ListItem>National ID Card</asp:ListItem>
        <asp:ListItem>Voter's Card</asp:ListItem>
        <asp:ListItem>Driving License</asp:ListItem>
        <asp:ListItem>International Passport</asp:ListItem>
    </asp:DropDownList></label>

 <label for="field1"><span>ID Number <span class="required">*</span></span> 
    <asp:TextBox ID="id_number" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>

        <label for="field4"><span>Job Category</span> <asp:DropDownList ID="category_general" 
        runat="server" name="field4" class="select-field">
         <asp:ListItem>Select Category of Job</asp:ListItem>
        <asp:ListItem>Corporate Job</asp:ListItem>
        <asp:ListItem>General Job</asp:ListItem>
        <asp:ListItem>Medical Job</asp:ListItem>
        <asp:ListItem>Teaching Job</asp:ListItem>
         <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList><br/><br/><br/><br/><br/><br/><br/>
       
      <font style=" font-size: 14px; color: deeppink; font-weight: bold;"> Terms and Conditions</font><br/>
     <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" 
        
        style=" color: window; background-color: deeppink; font-weight: bold; font-size: 13px; width: 900px;" 
        ReadOnly="True" > 
Registration is free

The age requirement for applicants is 18 years and above

Application/Registration does not constitute a job offer, nor does it imply that a position is available

Job application remains active unless the applicant asks to have it withdrawn.
 
Job seekers fully understand that false information may be grounds for not hiring or for immediate termination of employment at any point in the future if hired. He/She authorizes the verification of any or all information listed in the portal by TruPurpose Job Shop and/or prospective employer 

Job seekers are advised to choose Jobs relevant to their qualifications and/or experience to avoid being disqualified from Job Placement

In consideration of TruPurpose Job Shop and its affiliates providing job placement service, the applicant will be required to sign an agreement to pay prescribed processing/job placement service fee from his first salary only. The Employer must be willing to implement the agreement and details will be forwarded to you to effect necessary deduction from his/her first salary after the Applicant is employed.

Our service is free for schools and hospitals but other Employers/Recruiters may be required to pay Search fee. The amount will be agreed before Applicant Search from our website/database

TruPurpose Job Shop will only conduct background checks based on written request by the employer and after payment of prescribed fee

In conducting background check, TruPurpose Job Shop and its affiliate will only verify information supplied by the applicants as far as practicable and issue relevant reports to the employers. Our background checks are for guidance only and should not be construed to mean that we are standing as guarantor to the applicant. It is the responsibility of the employer to obtain suitable guarantor and/referee as TruPurpose Job Shop and its employees will not be liable nor responsible for any damages, losses, and/or liabilities suffered and/or incurred by the applicant in future.

Job seekers and employers agree to keep Trupurpose Job Shop, its officers, employees and agents fully indemnified against any actual or contingent costs, expenses, charges, damages or liabilities incurred in relation to any actions or claims brought by any person or entity against Trupurpose Job Shop as a result of an actual or alleged breach by you of any law, regulation, by-law, ordinance or code of conduct or such other actions or claims brought as a consequence of your posting appearing on this site.
         </asp:TextBox>

         
            <p style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-left: 300px; margin-top: 9px;"><asp:CheckBox ID="CheckBox1" runat="server" /> Accept </p>

       <asp:TextBox ID="bl" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>


            
</div>


<div class="form-style-2" style="  width: 580px; height: auto; float: right;">
<br/><br/><br/>

  <label for="field1" style=" width: 600px;"><span>Phone <span class="required">*</span></span> 
    <asp:TextBox ID="phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;" 
        AutoPostBack="True" ontextchanged="phone_TextChanged"></asp:TextBox><font style=" color: deeppink;">You Will Receive Verification Code on this Phone No.</font></label> 
        


 <label for="field1"><span>Appintment Being Sought <span class="required">*</span></span> 
    <asp:DropDownList ID="category_job_sought" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="category_job_sought_SelectedIndexChanged">
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
    </asp:DropDownList></label>

     <label for="field1"><span>If Others(Specify)/ Subject Teacher(Specify Subjects) <span class="required">*</span></span> 
    <asp:TextBox ID="if_others" runat="server" class="input-field" name="field1" value="" ></asp:TextBox></label> <br/><br/><br/>
        
        <label for="field4"><span>Location(1st Choice)</span> 
    <asp:DropDownList ID="location_first_choice" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="location_first_choice_SelectedIndexChanged">
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
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="location_second_choice_SelectedIndexChanged">
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
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="location_third_choice_SelectedIndexChanged">
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
        name="field1" value="" 
        ontextchanged="reference_name_TextChanged"></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Address <span class="required">*</span></span> 
    <asp:TextBox ID="reference_address" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="reference_address_TextChanged"></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Phone <span class="required">*</span></span> 
    <asp:TextBox ID="reference_phone" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="reference_phone_TextChanged"></asp:TextBox></label>  

<label for="field1"><span>User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="user_name_TextChanged"></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" 
        ontextchanged="password_TextChanged"></asp:TextBox></label>         

<label for="field1"><span>Confirm Password <span class="required">*</span></span> 
    <asp:TextBox ID="confirm_password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" 
        ontextchanged="confirm_password_TextChanged"></asp:TextBox></label>            

<label for="field5"><span>Work Experience <span class="required">*</span></span>  
    <asp:TextBox ID="work_experience" runat="server" name="field5" 
        class="textarea-field" 
        ontextchanged="work_experience_TextChanged"></asp:TextBox>   </label>

         <label for="field1" style=" width: 600px;"><span>Enter Verification Code Received <span class="required">*</span></span>
    <asp:TextBox ID="v_code" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;"></asp:TextBox> <font style=" color: deeppink;">Verification Code Sent to your Phone</font> </label>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>

    <div></div>

    
    
    <label><span>&nbsp;</span>  <asp:Button ID="Button2" runat="server" 
        Text=" Confirm Registration " type="submit" value="Submit" 
        style=" margin-left: 300px; color: Window; background-color: deeppink; height: 36px;" 
        onclick="Button2_Click" />    
        
        <asp:Button ID="Button9" runat="server" 
        Text=" Resend Verification Code " type="submit" value=" Resend Verification Code " 
        
            style=" margin-left: 10px; color: Window; background-color: midnightblue; height: 36px;" 
            onclick="Button9_Click" />
         </label><br/><br/>

        <asp:TextBox ID="TextBox1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>


         </label>


         </asp:Panel>
</asp:Content>
