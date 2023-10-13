<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Web_Trupurpose_New.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Login</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Login</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
		

         <!-- contact area -->
        <div class="section-full content-inner-2 shop-account">
            <!-- Product -->
            <div class="container">
                <div class="row">
					<div class="col-md-12 text-center">
						<h3 class="font-weight-700 m-t0 m-b20">Login Your Account</h3>
                         <asp:Label ID="result_output" runat="server" style=" color: orangered" Text=""></asp:Label>
                       
					</div>
				</div>
                <div>
					<div class="max-w500 m-auto m-b30">
						<div class="p-a30 border-1 seth">
							<div class="tab-content nav">
								<div id="login" class="tab-pane active col-12 p-a0 ">
									<h4 class="font-weight-700">LOGIN</h4>
									<p class="font-weight-600">If you have an account with us, please log in.</p>
									<div class="form-group">
										<label class="font-weight-700">E-MAIL/ USERNAME *</label>
                                        <asp:TextBox ID="user_name" runat="server" class="form-control" placeholder="Email/ UserName" required></asp:TextBox>										
									</div>
									<div class="form-group">
										<label class="font-weight-700">PASSWORD *</label>
										<asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Password" required></asp:TextBox>	
									</div>
									<div class="text-left">
                                        <asp:Button ID="Button1" runat="server" class="site-button m-r5 button-lg" Text="Login" OnClick="Button1_Click" />
										<!--<button class="site-button m-r5 button-lg">login</button>
										<a data-toggle="tab" href="#forgot-password" class="m-l5"><i class="fa fa-unlock-alt"></i> Forgot Password</a> -->
									</div>
								</div>
								<!--<form id="forgot-password" class="tab-pane fade  col-12 p-a0">
									<h4 class="font-weight-700">FORGET PASSWORD ?</h4>
									<p class="font-weight-600">We will send you an email to reset your password. </p>
									<div class="form-group">
										<label class="font-weight-700">E-MAIL *</label>
										<input name="dzName" required="" class="form-control" placeholder="Your Email Id" type="email">
									</div>
									<div class="text-left"> 
										<a class="site-button outline gray button-lg" data-toggle="tab" href="#login">Back</a>
										<button class="site-button pull-right button-lg">Submit</button>
									</div>
								</form>-->
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- Product END -->
		</div>
		<!-- contact area  END -->





			</div>

</asp:Content>
