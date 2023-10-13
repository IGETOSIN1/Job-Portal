﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Trupurpose.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Ibadan Based Recruitment Agency - Ibadan Job Shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ibadan Based Recruitment Agency - Ibadan Job Shop. Recruitment, Agency." />

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
<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

</head>
<body>
<div id="fb-root"></div>

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
		        <li><a href="Login.aspx">Login</a></li>
		        <li><a href="Contact.aspx">Contact</a></li>
                 <li><a href="Study-Abroad.aspx" style="color: midnightblue; background-color: white;">Overseas student Placement</a></li>
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		    <h1 style=" color: Window;">Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}" >
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}" >
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p>
           </div>
		</div>
   </div> 
</div>	
<div class="container">
    <div class="single">  
	   <div class="col-md-4">
	   	 
         
         <div class="col_3" >
	   	  	<h3>Todays Jobs</h3>
	   	  	<ul class="list_1">
	   	 <asp:DataList ID="DataList_direct" runat="server" 
                    onselectedindexchanged="DataList_direct_SelectedIndexChanged">
          <ItemTemplate>

					<dd style="display:list-item;list-style-type:square; border-bottom: 2px solid gray; margin-bottom: 10px;"><a href='<%# Eval("Post_Url") %>'><%# Eval("Leading_Description") %></a></dd>
                    	

                    </ItemTemplate>
         </asp:DataList>
         </ul>
	   	  </div>
        

	   	  <div class="col_3">
	   	  	<h3>Jobs by Category</h3>
	   	  	<ul class="list_2">

             <asp:DataList ID="DataList_category" runat="server">
          <ItemTemplate>
                   
					<li><a href="#"><%# Eval("Category_General") %></a></li>
                    	

                    </ItemTemplate>
         </asp:DataList>

	   	  		<!--<li><a href="#">Railway Recruitment</a></li>
	   	  		<li><a href="#">Air Force Jobs</a></li>		
	   	  		<li><a href="#">Police Jobs</a></li>
	   	  		<li><a href="#">Intelligence Bureau Jobs</a></li>		
	   	  		<li><a href="#">Army Jobs</a></li>
	   	  		<li><a href="#">Navy Jobs</a></li>		
	   	  		<li><a href="#">BSNL Jobs</a></li>
	   	  		<li><a href="#">Software Jobs</a></li>	
	   	  		<li><a href="#">Research Jobs</a></li>	-->							
	   	  	</ul>
	   	  </div>
	   	  
         
	 </div>
	 <div class="col-md-8 single_right">
	 	   <div class="login-form-section">
                <div class="login-content">

                <!--££££££££££££££££££££££////////////////////////  ////////////////////////////££££££££££££££££££££££££££££££££££££££££££££££-->

                 <asp:DataList ID="DataList1" runat="server" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged">
          <ItemTemplate>
                   
					<!--<li><a href='<%# Eval("Job_Category") %>'></li>-->
                     <div class="col_1">
   	        <div class="col-sm-4 row_2">
				<a href='<%# Eval("Post_Url") %>'><img src='<%# Eval("Image_Url") %>' style=" height: 180px; width: 300px; border: 2px solid blue;" class="img-responsive" alt=""/></a>
			</div>
			<div class="col-sm-8 row_1">
				<h4><a href='<%# Eval("Post_Url") %>'><%# Eval("Job_Title") %></a></h4>
				<h6>Posted Date <span class="dot">·</span> <%# Eval("Date") %> </h6>

				<p><%# Eval("Leading_Description") %></p>
				<div class="social">
                
                    
                	
					<a class="btn_1" href="#">
						<!--<i class="fa fa-facebook fb"></i> class= -->
                       <span "share1 fb"> 
                       <span class="fb-share-button" data-href="https://trupurpose.com.ng" data-layout="button" data-size="large" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Ftrupurpose.com.ng%2F&amp;src=sdkpreparse"></a></span>
						</span>								
					</a>

					<a class="btn_1" href="#" style=" margin-left: -10px;">
						<span class="share1">
                        <a href="https://twitter.com/share" class="twitter-share-button" data-show-count="false" data-size="large">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                 	</span>							
					</a>

					<a class="btn_1" href="#">
						<span class="share1 google"><script src="https://apis.google.com/js/plusone.js"></script>
<g:plus action="share" annotation="bubble"></g:plus></span>
					</a>

                     <a class="btn_1" href="#" style=" margin-left:-27px; ">
                    <span class="share1" > <a href='<%# Eval("Post_Url") %>' style=" background-color: #f44336; padding: 5px 5px; color: white; text-align: center; text-decoration: none; display: inline-block; font-family: Comic Sans MS; font-size: 12px; border-radius: 0px; " data-size="large" > APPLY NOW </a></span>
                    </a>
                 
                  

			   </div>
                
			</div>

            

         <div class="clearfix"> </div>
         
		
		   </div>
                   
                    	

                    </ItemTemplate>
         </asp:DataList>
         <asp:TextBox ID="display" runat="server" Width="64px" Visible="False"></asp:TextBox>
         <asp:TextBox ID="count" runat="server" Width="64px" Visible="False">0</asp:TextBox>
         <asp:TextBox ID="number_index" runat="server" Width="64px" Visible="False">0</asp:TextBox>
         <asp:TextBox ID="number_range" runat="server" Width="64px" Visible="False">8</asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="<< Back >>" 
                        style=" background-color: black; color: Window; margin-left: 360px;" class="btn red" onclick="Button2_Click"/>  &nbsp;&nbsp;&nbsp;  
                    <asp:Button ID="Button1" runat="server" Text="<< Next >>" 
                        style=" background-color: black; color: Window;" class="btn red" onclick="Button1_Click"/><br/><br/>
        
  </div>
		           </div>
                </div>
         </div>
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
				<li><a href="Disclaimer.aspx">Disclaimer</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-3 grid_3" >
			<h4>Twitter Widget</h4>
			<div class="footer-list" >
            <iframe src="x1.aspx" style=" height: 150px; width: 260px;display: block; overflow: scroll;">
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