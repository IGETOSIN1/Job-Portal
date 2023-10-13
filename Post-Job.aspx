<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Post-Job.aspx.cs" Inherits="Web_Trupurpose_New.Post_Job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:Button ID="Logout" runat="server" Text="Log Out" CssClass="btn btn-danger" style=" float: left; " OnClick="Logout_Click" /><br/><br/>

    <asp:TextBox ID="employee_name" runat="server" Visible="False">name of company</asp:TextBox>
    

<div class="form-style-2" style=" width: 500px; height: auto;">
<div class="form-style-2-heading">Provide your information  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label></div>

<label for="field4"><span>Job Category</span>
    <asp:DropDownList ID="job_category" 
        runat="server" name="field4" class="select-field">
         <asp:ListItem>Select Category of Job</asp:ListItem>
        <asp:ListItem>Corporate Job</asp:ListItem>
        <asp:ListItem>General Job</asp:ListItem>
        <asp:ListItem>Medical Job</asp:ListItem>
        <asp:ListItem>Teaching Job</asp:ListItem>
         <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList><br/><br/>
    
    <span>Industry</span>
    <asp:DropDownList ID="job_industry" 
        runat="server" name="field4" class="select-field">
         <asp:ListItem>Select Industry</asp:ListItem>
        <asp:ListItem>Finance</asp:ListItem>
        <asp:ListItem>Academic</asp:ListItem>
        <asp:ListItem>Engineering</asp:ListItem>
         <asp:ListItem>Health Care</asp:ListItem>
         <asp:ListItem>Retail</asp:ListItem>
         <asp:ListItem>Agriculture</asp:ListItem>
         <asp:ListItem>Telecommunication</asp:ListItem>
         <asp:ListItem>Engineering</asp:ListItem>
         <asp:ListItem>Hospitality</asp:ListItem>
         <asp:ListItem>Tourism</asp:ListItem>
        <asp:ListItem>Contractor</asp:ListItem>
         <asp:ListItem>Information and Communication Technology</asp:ListItem>
         <asp:ListItem>Real Estate</asp:ListItem>
         <asp:ListItem>Construction</asp:ListItem>
         <asp:ListItem>Aviation</asp:ListItem>
        <asp:ListItem>Government</asp:ListItem>
        <asp:ListItem>Music</asp:ListItem>
        <asp:ListItem>Theatre & Art</asp:ListItem>
         <asp:ListItem>Services</asp:ListItem>
         <asp:ListItem>Consumer Goods</asp:ListItem>
         <asp:ListItem>Oil and Gas</asp:ListItem>
         <asp:ListItem>Utilities</asp:ListItem>
         <asp:ListItem>Natural Resources</asp:ListItem>
        <asp:ListItem>NGOs</asp:ListItem>
         <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList></label>
    
<label for="field1"><span>Job/ Role Description <span class="required">*</span></span> 
    <asp:TextBox ID="job_description" runat="server" class="textarea-field" 
        name="field1" value="" TextMode="MultiLine"></asp:TextBox></label>         
   
<label for="field1"><span>Position/ Role <span class="required">*</span></span> 
    <asp:TextBox ID="job_position" runat="server" class="textarea-field" name="field1" 
        value="" TextMode="MultiLine"></asp:TextBox></label>         

<label for="field1"><span>Job Title <span class="required">*</span></span> 
    <asp:TextBox ID="job_title" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Short Description <span class="required">*</span></span> 
    <asp:TextBox ID="leading_description" runat="server" class="textarea-field" 
        name="field1" value="" TextMode="MultiLine"></asp:TextBox></label>         

<label for="field1"><span>Full Description <span class="required">*</span></span> 
    <asp:TextBox ID="full_description" runat="server" 
        name="field1" value="" class="textarea-field" TextMode="MultiLine"></asp:TextBox></label>         

<label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="state" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Location/ City <span class="required">*</span></span> 
    <asp:TextBox ID="location" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label>         

<label for="field1"><span>Required Qualification <span class="required">*</span></span> 
    <asp:TextBox ID="required_qualification" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>         

<label for="field1"><span>Age Range <span class="required">*</span></span> 
    <asp:TextBox ID="age_range" runat="server" class="input-field" name="field1" 
        value=""></asp:TextBox></label> 
    
    <label for="field1"><span>Additional Information (Optional) <span class="required">*</span></span> 
    <asp:TextBox ID="other_information" runat="server" name="field1" 
        class="textarea-field" TextMode="MultiLine"></asp:TextBox>   </label><br/>
    
     <label for="field1"><span>Upload Logo/ Image (Optional) <span class="required">*</span></span>  
           <asp:FileUpload ID="FileUpload1" runat="server" class="input-field" 
        name="field1" /> </label><br/>

<label for="field1"><span>Tick if you want Interviews from Us <span class="required">*</span></span> 
    <asp:CheckBox ID="CheckBox_interview" runat="server" /></label> <br/>    

       

<label><span>&nbsp;</span>  
    <asp:Button ID="Button1" runat="server" 
        Text="Post Job Online" type="submit" value="Submit" 
        onclick="Button1_Click" />   </label>

        <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value="" Visible="false"></asp:TextBox>

</div>

</asp:Content>
