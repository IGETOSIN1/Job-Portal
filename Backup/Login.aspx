<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Trupurpose.Member1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <h4 style=" text-align: center; margin-top: 45px; margin-bottom: 0px; margin-left: 175px;"> Log In to apply for Job or Post Job Vacancy ... <asp:Label ID="result_output" runat="server" style=" color: deeppink; margin-left: 79px;"></asp:Label></h4>
   <p style=" margin-left: 200px; background-color: brown; color: Window; border-radius: 3px; width: 800px; margin-top: 0px; margin-bottom: 45px;"><br/>
   <br/>
   <label for="field1"><span style=" font-size: 17px; font-family: Times New Roman; font-style: italic; margin-left: 130px;"> Email/ User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name" runat="server" class="input-field" name="field1" 
           value="" style=" height: 28px; width: 290px; color: Black;"></asp:TextBox></label> <br/><br/>

        &nbsp;&nbsp;&nbsp;<label for="field1"><span style=" font-size: 17px; font-family: Times New Roman; font-style: italic; margin-left: 180px;">Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" 
        name="field1" value="" style=" height: 28px; width: 290px;  color: Black;" 
           TextMode="Password"></asp:TextBox></label> <br/>

       <asp:Button ID="Button1" runat="server" Text=" LOGIN " 
           style=" margin-left: 390px; width: 120px; margin-top: 12px; margin-bottom: 15px; height: 35px; color: Window; background-color: black; font-family: Times New Roman; border-radius: 3px;" 
           onclick="Button1_Click" /><br/>

           <span style=" margin-left: 10%;">Not yet register&nbsp; <a href="Applicant-Form.aspx" style=" color: black; font-family: Comic Sans MS; font-size: 16px;"> Register as Job Seeker/ Applicant </a> &nbsp;&nbsp;or&nbsp;&nbsp; <a href="Employee-Form.aspx" style=" color: black; font-family: Comic Sans MS; font-size: 16px;"> Register as Employer/ Company</a>.</span><br/><br/>


</p>


</asp:Content>
