<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="Web_Trupurpose.Redirect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

     <script type="text/javascript">
         function redirect() {
             window.location = "Member-Applicant.aspx";
         }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

     <div style="margin-top: 135px; margin-left: 223px;">
      <font style=" color: midnightblue; margin-left: 23px; font-weight: bold;"> Registration Success ...</font><br/>
    <img src="images/ajax4.GIF" alt="" style=" margin: 0px; width: 400px;" />
     <p style=" font-family: Times New Roman; font-weight: bolder; font-size: 17px; color: navy; margin-left: 185px; margin-top: -4px;"> Login You In. <font style=" color: deeppink;">Please Wait ...</font> </p>
     </div>
   <!-- <h3 style="margin-left:318px">Redirecting ...</h3>--><br/><br/>


    </div>
    </form>

     <script type="text/javascript">
         setTimeout("redirect()", 7000);
    </script>

</body>
</html>

