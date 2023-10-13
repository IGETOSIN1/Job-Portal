<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Member-Employer.aspx.cs" Inherits="Web_Trupurpose.Member_Employer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!--<div style=" margin-top: -13px; border-left: 1px solid black;">--><p style=" float: left; border-right: 1px solid black; border-bottom: 1px solid black;">
<br/>
 <asp:Button ID="Button9" runat="server" Text="VIEW RECORD" 
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic;" 
        onclick="Button9_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>
 <asp:Button ID="Button2" runat="server" Text="UPLOAD LOGO" 
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button2_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

  <asp:Button ID="Button3" runat="server" Text="POST NEW JOB" 
        
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button3_Click" /><br/>
 <label style=" margin-top: -39px;">____________________________</label><br/>

  <asp:Button ID="Button4" runat="server" Text="LOG OUT" 
        
        style=" background-color: deeppink; color: Window; height: 40px; width: 150px; margin: 15px; font-style: italic; margin-top: -40px;" 
        onclick="Button4_Click" /><br/>

</p>


<asp:Label ID="result_output" runat="server" style=" color: deeppink; margin-left: 200px;"></asp:Label>
<!--############################################################################### PANEL FOR RECORD ####################################### -->
<asp:Panel ID="Panel_record" runat="server" Visible="false" style=" width: 1000px;">

<div class="form-style-2" style=" width: 500px; height: auto; margin-left: 300px;">
<div class="form-style-2-heading">Company/ Employer Registration Form </div>

<label for="field1"><span>Name of Company <span class="required">*</span></span> 
    <asp:TextBox ID="name_of_organization" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Company Email <span class="required">*</span></span> 
    <asp:TextBox ID="company_email" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Company Phone <span class="required">*</span></span> 
    <asp:TextBox ID="company_phone" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Address <span class="required">*</span></span> 
    <asp:TextBox ID="address" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>City <span class="required">*</span></span> 
    <asp:TextBox ID="city" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="state" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Country <span class="required">*</span></span> 
    <asp:TextBox ID="country" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Name(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_name" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Address(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_address" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Phone(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_phone" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Email(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_email" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Position(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_position" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

        <label for="field1"><span>Category of Industry <span class="required">*</span></span> 
    <asp:TextBox ID="TextBox4" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label> 

<label for="field4"><span>Industry</span> <asp:DropDownList ID="company_industry" 
        runat="server" name="field4" class="select-field">
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
    <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         


<label><span>&nbsp;</span>  
    <asp:Button ID="Button1" runat="server" 
        Text="Save Update" type="submit" value="Submit" onclick="Button1_Click" />   </label>

</div>

</asp:Panel>


<!--############################################################################### PANEL FOR UPLOADING IMAGE ####################################### -->
<asp:Panel ID="Panel_upload_logo" runat="server" Visible="false" style=" width: 1000px; margin-left: 300px;">

<br/><br/>
 <asp:Label ID="Label1" runat="server" style=" color: deeppink; margin-left: 300px;"></asp:Label>

<div class="form-style-2" style=" width: 500px; height: auto; margin-left: 200px;">
 <label for="field5"><span>Select Image <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload1" runat="server" class="input-field" 
        name="field1" /> </label>

  <asp:Button ID="Button6" runat="server" 
        Text=" Confirm Upload " type="submit" value="Submit" 
        
        style=" margin-left: 100px; height: 40px; color: Window; background-color: deeppink;" 
        onclick="Button6_Click" />   

        </div>

</asp:Panel>

<!--############################################################################### PANEL FOR UPLOADING IMAGE ####################################### -->
<asp:Panel ID="Panel_post_job" runat="server" Visible="true" style=" width: 1000px; margin-left: 300px;">


    <asp:TextBox ID="employee_name" runat="server" Visible="False">name of company</asp:TextBox>




<div class="form-style-2" style=" width: 500px; height: auto;">
<div class="form-style-2-heading">Post New Job/ Vacancy  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="Label2" runat="server" style=" color: deeppink;"></asp:Label></div>

<label for="field4"><span>Job Category</span> <asp:DropDownList ID="job_category" 
        runat="server" name="field4" class="select-field">
        <asp:ListItem> Select Category of Job </asp:ListItem>
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
        name="field1" value=""></asp:TextBox></label>   <br/>      

<label for="field5"><span>Full Description (Role)<span class="required">*</span></span>  
    <asp:TextBox ID="full_description" runat="server" name="field5" 
        class="textarea-field"></asp:TextBox>   </label>   

<label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="post_job_state" runat="server" class="input-field" name="field1" 
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

<label for="field5"><span>Additional Information (Optional)<span class="required">*</span></span>  
    <asp:TextBox ID="other_information" runat="server" name="field5" 
        class="textarea-field"></asp:TextBox>   </label><br/>

        <label for="field5"><span>Upload Company Logo/ Image (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload4" runat="server" class="input-field" 
        name="field1" /> </label><br/>

<label><span>&nbsp;</span>  <asp:Button ID="Button5" runat="server" 
        Text="Post Job Online" type="submit" value="Submit" 
        onclick="Button5_Click" />   </label>

        <asp:TextBox ID="TextBox2" runat="server" class="input-field" 
        name="field1" value="" Visible="false"></asp:TextBox>

</div>

</asp:Panel>



</asp:Content>
