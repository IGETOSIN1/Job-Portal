<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memegt1.aspx.cs" Inherits="Web_Memesco.memegt1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <label class=" lab">Name</label>
    <br/>
     <asp:TextBox ID="sender_title" 
        runat="server" Width="300px" class=" txt"
        Height="21px"></asp:TextBox><br/>

<label class=" lab">E-mail</label> <br/>
             <asp:TextBox ID="receiver" 
        runat="server" Width="243px" 
        Height="21px" class=" txt"></asp:TextBox><br/>
<label class=" lab">Message</label> <br/>
    <asp:TextBox ID="message" runat="server" Width="291px" 
        style=" font-family: calibri; font-size: 14px; border-radius: 2px; margin-left: 50px;" 
        Height="65px" TextMode="MultiLine"></asp:TextBox><br/>
    <asp:Button ID="Button1" runat="server" Text="Submit" class=" btn" 
        Width="100px" Height="31px" onclick="Button1_Click"  />
        </p>
    </form>
</body>
</html>
