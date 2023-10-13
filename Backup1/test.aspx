<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Web_Trupurpose.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Clean Contact Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css1/normalize.css">

    
        <link rel="stylesheet" href="css1/style.css">

    
    
    
  </head>

  <body>
  <form id="Form1" runat="server">
    
<div class="container">
  <div class="row header">
    <h1>CONTACT US &nbsp;</h1>
    <h3>Fill out the form below to learn more!</h3>
  </div>

  <div class="row body">

  <asp:Label ID="result" runat="server" style=" color: deeppink;"></asp:Label>
    <form action="#">
      <ul>
        
        <li>
          <p class="left">
            <label for="first_name">first name</label>
            <asp:TextBox ID="first_name"
                runat="server"></asp:TextBox>
          </p>

          <p class="pull-right">
            <label for="last_name">last name</label>
            <asp:TextBox ID="last_name"
                runat="server"></asp:TextBox>     
          </p>
        </li>
        

        <li>
          <p class="left">
            <label for="first_name">Email</label>
            <asp:TextBox ID="email"
                runat="server"></asp:TextBox>    
          </p>

          <p class="pull-right">
            <label for="last_name">Phone</label>
            <asp:TextBox ID="phone"
                runat="server"></asp:TextBox>          
          </p>
        </li>
               
        <li><div class="divider"></div></li>
        <li>
          <label for="comments">comments</label>
           <asp:TextBox ID="message"
                runat="server" TextMode="MultiLine"></asp:TextBox>    
        </li>

        
        <li>
            <asp:Button ID="Button1" runat="server" Text=" Send Message " 
                class="btn btn-submit" onclick="Button1_Click" />

          <small>or press <strong>enter</strong></small>
        </li>
        
      </ul>
    </form>  
  </div>
</div>
    
    
    
    
    </form>
  </body>

</html>

