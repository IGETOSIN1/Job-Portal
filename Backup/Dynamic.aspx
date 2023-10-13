<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dynamic.aspx.cs" Inherits="Web_Trupurpose.Dynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
    <title>Ibadan Based Job Recruitment agency and Job Shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<style type="text/css">
.form-style-2{
	max-width: 500px;
	padding: 20px 12px 10px 20px;
	font: 13px Arial, Helvetica, sans-serif;
}
.form-style-2-heading{
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 15px;
	padding-bottom: 3px;
}
.form-style-2 label{
	display: block;
	margin: 0px 0px 15px 0px;
}
.form-style-2 label > span{
	width: 100px;
	font-weight: bold;
	float: left;
	padding-top: 8px;
	padding-right: 5px;
}
.form-style-2 span.required{
	color:red;
}
.form-style-2 .tel-number-field{
	width: 40px;
	text-align: center;
}
.form-style-2 input.input-field{
	width: 48%;
	
}

.form-style-2 input.input-field, 
.form-style-2 .tel-number-field, 
.form-style-2 .textarea-field, 
 .form-style-2 .select-field{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border: 1px solid #C2C2C2;
	box-shadow: 1px 1px 4px #EBEBEB;
	-moz-box-shadow: 1px 1px 4px #EBEBEB;
	-webkit-box-shadow: 1px 1px 4px #EBEBEB;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 7px;
	outline: none;
}
.form-style-2 .input-field:focus, 
.form-style-2 .tel-number-field:focus, 
.form-style-2 .textarea-field:focus,  
.form-style-2 .select-field:focus{
	border: 1px solid #0C0;
}
.form-style-2 .textarea-field{
	height:100px;
	width: 55%;
}
.form-style-2 input[type=submit],
.form-style-2 input[type=button]{
	border: none;
	padding: 8px 15px 8px 15px;
	background: #FF8500;
	color: #fff;
	box-shadow: 1px 1px 4px #DADADA;
	-moz-box-shadow: 1px 1px 4px #DADADA;
	-webkit-box-shadow: 1px 1px 4px #DADADA;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
}
.form-style-2 input[type=submit]:hover,
.form-style-2 input[type=button]:hover{
	background: #EA7B00;
	color: #fff;
}

</style>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
   
</head>
<body>
 <nav class="navbar navbar-default" role="navigation">
    <form id="Form1" runat="server">
    
   
	<div class="container">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="#"><img src="images/logo.png" alt=""/></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	         <ul class="nav navbar-nav">
             <li><a href="Default.aspx">Home</a></li>
            <li><a href="Service.aspx">Services</a></li>
		     
		       
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Register<b class="caret"></b></a>
		            <ul class="dropdown-menu">
			            <li><a href="Applicant-Form.aspx">Job Seeker/ Applicant</a></li>
			            <li><a href="Employer-Form.aspx">Employer/ Recruiter</a></li>
		            </ul>
		        </li>

                  <li><a href="Post-Job.aspx">Post Job</a></li>
		      <!--  <li><a href="Login.aspx">Login</a></li>-->
		        <li><a href="Contact.aspx">Contact</a></li>
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<!--<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		    <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p>
           </div>
		</div>
   </div> 
</div>	-->
<div class="container">
   
	 <div class="col-md-8 single_right">
	 	   <div class="login-form-section">
                <div class="login-content">


           <!-- #################################### START OF CONTENT #################################################################-->

           <div class="form-style-2" style=" width: 500px; height: auto; margin-left: 300px;">
           <div class="form-style-2-heading"><asp:Label ID="Label_leading_title" runat="server" style=" color: midnightblue;"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label></div>

<label for="field1" style=" visibility: hidden;"><span>Name of Company <span class="required">*</span></span> 
    <asp:TextBox ID="name_of_organization" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox></label> 

        <label for="field1"><span>Job Category <span class="required">*</span></span> 
    <asp:TextBox ID="job_category" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Location <span class="required">*</span></span> 
    <asp:TextBox ID="location" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Position <span class="required">*</span></span> 
    <asp:TextBox ID="position" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Job Description <span class="required">*</span></span> 
    <asp:TextBox ID="full_description" runat="server" class="input-field" 
        name="field1" value="" Height="234px" TextMode="MultiLine" Width="373px" 
                   ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Qualification <span class="required">*</span></span> 
    <asp:TextBox ID="required_qualification" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Age Range <span class="required">*</span></span> 
    <asp:TextBox ID="required_age" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True"></asp:TextBox></label> 

        <label for="field1"><span>Additional Information <span class="required">*</span></span> 
    <asp:TextBox ID="other_information" runat="server" class="input-field" 
        name="field1" value="" Height="93px" TextMode="MultiLine" Width="364px" 
                   ReadOnly="True"></asp:TextBox></label> 
      

<label><span>&nbsp;</span>  
               <asp:Button ID="Button1" runat="server" 
        Text=" APPLY NOW " type="submit" value="Submit" onclick="Button1_Click" style=" margin-right: 3px;" />      
               <asp:Button ID="Button3" runat="server" 
        Text=" Refresh " type="submit" value="Submit" style=" margin-right: 3px;" 
                   onclick="Button3_Click" />  </label> 

</div>






<asp:TextBox ID="a_full_name" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

        <asp:TextBox ID="a_phone" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

        <asp:TextBox ID="a_qualification_academic" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

        <asp:TextBox ID="a_qualification_professional" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

        <asp:TextBox ID="a_discipline" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

        <asp:TextBox ID="a_date_of_birth" runat="server" class="input-field" 
        name="field1" value="" ReadOnly="True" Visible="False"></asp:TextBox>

          <!-- #################################### END OF CONTENT #####################################################################-->

        </div>
		           </div>
                </div>
        <!-- </div>-->
   </div>
  <div class="clearfix"> </div>
 </div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-3 grid_3">
			<h4>Navigate</h4>
			<ul class="f_list f_list1">
				<li><a href="Default.aspx">Home</a></li>
				<li><a href="Service.aspx">Services</a></li>
				<li><a href="Applicant-Form.aspx">Applicant</a></li>
				<li><a href="Employer-Form.aspx">Employer</a></li>
			</ul>
			<ul class="f_list">
				<li><a href="About.aspx">About Us</a></li>
				<li><a href="Term.aspx">Terms of use</a></li>
				<li><a href="Contact.aspx">Contact Us</a></li>
				<li><a href="Login.aspx">Post a Job</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-3 grid_3">
			<h4>Twitter Widget</h4>
			<div class="footer-list" >
            <iframe src="x1.aspx" style=" height: 150px; width: 260px;">
            </iframe>
		 
			</div>
		</div>
		<div class="col-md-3 grid_3">
			<h4>Facebook Widget<!--Trupurpose--></h4>
            <iframe src="x2.aspx" style=" height: 150px; width: 260px;">
           
            </iframe>
			<p>
           </div>
		<div class="col-md-3 grid_3">
			<h4>Sign up for our newsletter</h4>
			
				<input type="text" class="form-control" placeholder="Enter your email">
				<button type="button" class="btn red">Subscribe now!</button>
		    
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="footer_bottom">	
  <div class="container">
   
	<div class="copy">
		<p>Copyright © 2016 TruPurpose.com.ng . All Rights Reserved . Design by <a href="#" target="_blank">Complesol Web Design</a> </p>
	</div>
  </div>
</div>

    </form>
</body>
</html>
