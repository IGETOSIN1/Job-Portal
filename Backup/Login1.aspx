<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Web_Trupurpose.Login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> TruPurpose Consulting Services, Ibadan in Nigeria- Login Area </title>
</head>
<body  style=" background-color: royalblue; background-color: royalblue;  background-image:url('images/img5.jpg'); background-repeat: no-repeat;
    background-size: 100% 100%;
    background-position: center top;
    background-attachment: fixed;  background-size: cover; height: 670px; ">
    <form id="form1" runat="server">
    <div>
    


    <marquee style=" margin-top: 150px; margin-left: 120px; margin-right: 230px; font-family:@Microsoft YaHei Calibri; font-size: 17px; margin-bottom: 5px; color:window;" behavior="alternate" scrollamount="3"> *Welcome to TruPurpose Consulting Services. Admin Login Portal. Login to continue  ...</marquee>
    <div style=" margin-left: 300px; border: 2px solid window; width: 570px; height: 214px; font-family: Segoe UI; background-color: Window; border-radius: 3px;">
    <br/>
   
   <p> <label style=" margin-left: 8px; margin-right: 7px;">User Name:</label> 
        <asp:TextBox ID="username" runat="server" 
            Width="257px" Height="22px" style=" text-align: center;"></asp:TextBox></p>

          <p>    <label style=" margin-left: 8px; margin-right: 17px;">Password:</label> 
        <asp:TextBox ID="password" runat="server" 
            Width="208px" Height="22px" TextMode="Password" style=" text-align: center;"></asp:TextBox></p>

                     <asp:Button ID="Button1" runat="server" Height="30px"
             style=" margin-left: 260px; background-color: firebrick; color: Window; font-family: Segoe UI Semibold; font-size: 14px;" 
             Text="Enter" Width="92px" onclick="Button1_Click" />
         

    </div>
        

    </div>
    </form>
</body>
</html>