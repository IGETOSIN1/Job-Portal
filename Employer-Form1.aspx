<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employer-Form.aspx.cs" Inherits="Web_Trupurpose.Employee_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Panel ID="Panel1" runat="server">

<div class="form-style-2" style=" width: 800px; height: auto;">
<div class="form-style-2-heading">Company/ Employer Registration Form <asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label></div>

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
        name="field1" value="" ontextchanged="address_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>City <span class="required">*</span></span> 
    <asp:TextBox ID="city" runat="server" class="input-field" 
        name="field1" value="" ontextchanged="city_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>State <span class="required">*</span></span> 
    <asp:TextBox ID="state" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="state_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Country <span class="required">*</span></span> 
    <asp:TextBox ID="country" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="country_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Name(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_name" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="contact_name_TextChanged"></asp:TextBox> </label> 

        <label for="field1"><span>Address(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_address" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="contact_address_TextChanged"></asp:TextBox></label> 

        <label for="field1" style=" width: 600px;"><span>Phone(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;" 
        AutoPostBack="True" ontextchanged="contact_phone_TextChanged"></asp:TextBox> <font style=" color: deeppink;">You will Receive Verification Code on this Phone No. </font></label> 

        <label for="field1"><span>Email(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_email" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="contact_email_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Position(Contact Person) <span class="required">*</span></span> 
    <asp:TextBox ID="contact_position" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="contact_position_TextChanged"></asp:TextBox></label> 

        <label for="field1"><span>Category of Industry <span class="required">*</span></span> 
    <asp:TextBox ID="TextBox4" runat="server" class="input-field" 
        name="field1" value="" 
        ontextchanged="TextBox4_TextChanged"></asp:TextBox></label> 

<label for="field4"><span>Industry</span> 
    <asp:DropDownList ID="company_industry" 
        runat="server" name="field4" class="select-field" 
        onselectedindexchanged="company_industry_SelectedIndexChanged">
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
        name="field1" value="" 
        ontextchanged="user_name_TextChanged"></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" 
        ontextchanged="password_TextChanged"></asp:TextBox></label>         

<label for="field1"><span>Confirm Password <span class="required">*</span></span> 
    <asp:TextBox ID="confirm_password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password"></asp:TextBox></label> 
        
         <label for="field1" style=" width: 600px;"><span>Enter Verification Code Received <span class="required">*</span></span>
    <asp:TextBox ID="v_code" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;"></asp:TextBox> <font style=" color: deeppink;">Verification Code Sent to your Phone</font> </label> 
        

        <label for="field5"><span>Upload Company Logo/ Image (Optional) <span class="required">*</span></span>   <asp:FileUpload ID="FileUpload1" runat="server" class="input-field" 
        name="field1" /> </label><br/><br/>
           

            <font style=" font-size: 14px; color: deeppink; font-weight: bold;" > Terms and Conditions</font><br/>
     <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" 
        
        style=" color: window; background-color: deeppink; font-weight: bold; font-size: 13px;" 
        ReadOnly="True" Width="491px" > 
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


          <asp:TextBox ID="bl" runat="server" 
        Visible="False"></asp:TextBox>
        
       


<label><span>&nbsp;</span>  <asp:Button ID="Button1" runat="server" 
        Text="Confirm Registration" type="submit" value="Submit" 
        onclick="Button1_Click" />  
        
        <asp:Button ID="Button9" runat="server" 
        Text="Resend Verification Code" type="submit" value="Submit"  
        style=" margin: 10px;" onclick="Button9_Click"/>

         </label>

        <asp:TextBox ID="TextBox1" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;" 
        Visible="False"></asp:TextBox>

</div>

    </span>

    </span>

     </asp:Panel>

</asp:Content>
