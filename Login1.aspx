<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Web_Trupurpose_New.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Trupurpose Admin Login Portal</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="old1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="old1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="old1/css/util.css">
	<link rel="stylesheet" type="text/css" href="old1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
       <div class="limiter" style="margin-top:-55px;">
		<div class="container-login100" style="background-image: url('images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form">
					<div class="login100-form-avatar">
						<img src="old1/images/admin_old.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						 Admin Login Area
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
                        <asp:TextBox ID="username" runat="server" class="input100" placeholder="Username" required></asp:TextBox>
                       
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<asp:TextBox ID="password" TextMode="Password" runat="server" class="input100" placeholder="Password" required></asp:TextBox>
                       
					</div>

					<div class="container-login100-form-btn p-t-10">

                        <asp:Button ID="Button1" runat="server" Text="Login" class="login100-form-btn" OnClick="Button1_Click" />

					</div>
                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
					<!--<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a>
					</div>-->

					<!--<div class="text-center w-full">
						<a class="txt1" href="#">
							Create new account
							<i class="fa fa-long-arrow-right"></i>						
						</a>
					</div>-->
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="old1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="old1/vendor/bootstrap/js/popper.js"></script>
	<script src="old1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="old1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="old1/js/main.js"></script>
    </form>
</body>
</html>
