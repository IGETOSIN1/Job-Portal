<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Trupurpose_New.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
		<meta name="description" content="Trupurpose Job Shop - Recruitment Agency and Services" />
	<meta property="og:title" content="Trupurpose Job Shop - Recruitment Agency and Services" />
	<meta property="og:description" content="Trupurpose Job Shop - Recruitment Agency and Services" />
	<meta property="og:image" content="Trupurpose Job Shop - Recruitment Agency and Services" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON -->
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	
	<!-- PAGE TITLE HERE -->
	<title>Trupurpose Consultancy Service- Ibadan Based Jobshop</title>
	
	<!-- MOBILE SPECIFIC -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="js/html5shiv.min.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	<!-- STYLESHEETS -->
	<link rel="stylesheet" type="text/css" href="css/plugins.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/templete.css">
	<link class="skin" rel="stylesheet" type="text/css" href="css/skin/skin-1.css">
	<link rel="stylesheet" href="plugins/datepicker/css/bootstrap-datetimepicker.min.css"/>
	<!-- Revolution Slider Css -->
	<link rel="stylesheet" type="text/css" href="plugins/revolution/revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="plugins/revolution/revolution/css/settings.css">
	<link rel="stylesheet" type="text/css" href="plugins/revolution/revolution/css/navigation.css">
	<!-- Revolution Navigation Style -->
</head>
<body>
    <form id="form1" runat="server">
        <div id="loading-area"></div>
<div class="page-wraper">
	<!-- header -->
    <header class="site-header mo-left header fullwidth">
		<!-- main header -->
        <div class="sticky-header main-bar-wraper navbar-expand-lg">
            <div class="main-bar clearfix">
                <div class="container clearfix">
                    <!-- website logo -->
                    <div class="logo-header mostion">
						<a href="Default.aspx"><img src="images/logo.png" class="logo" alt=""></a>
					</div>
                    <!-- nav toggle button -->
                    <!-- nav toggle button -->
                    <button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
                    <!-- extra nav -->
                    <!--<div class="extra-nav">
                        <div class="extra-cell">
                            <a href="#" class="site-button"><i class="fa fa-user"></i> Login</a>
                            <a href="#" class="site-button"><i class="fa fa-lock"></i> Oversea Student Placement</a>
                        </div>
                    </div>-->
                    <!-- Quik search -->
                    <div class="dez-quik-search bg-primary">
                        <form action="#">
                            <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                            <span id="quik-search-remove"><i class="flaticon-close"></i></span>
                        </form>
                    </div>
                    <!-- main nav -->
                    <div class="header-nav navbar-collapse collapse justify-content-start" id="navbarNavDropdown">
                        <ul class="nav navbar-nav">
							<li class="active">
								<a href="default.aspx">Home </a>
								<!--<ul class="sub-menu">
									<li><a href="/Home" class="dez-page">Home</a></li>
								</ul>-->
							</li>

                            <li>
								<a href="#">About <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="/about.aspx" class="dez-page">About Us</a></li>
									<li><a href="/service.aspx" class="dez-page">Services</a></li>
                                     <li><a href="https://trupurposejobshop.blogspot.com/" class="dez-page">Blog</a></li>
									<li><a href="/contact.aspx" class="dez-page">Contact Us</a></li>
								</ul>
							</li>

							<li>
								<a href="#">For Jobseekers <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="/applicantregister.aspx" class="dez-page">Register</a></li>
									<li><a href="/browse.aspx" class="dez-page">Browse Jobs</a></li>
									<li><a href="/login.aspx" class="dez-page">Login</a></li>
								</ul>
							</li>

							<li>
								<a href="#">For Employers <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
                                    <li><a href="/requeststaff.aspx" class="dez-page">Request For Staff</a></li>
									<!--<li><a href="/employerregister.aspx" class="dez-page">Register</a></li>								
                                    <li><a href="/login.aspx" class="dez-page">Login</a></li>-->
								</ul>
							</li>

                           <!-- <li class="active">
								<a href="#">Login</a>
							</li>-->

                             <li class="active">
								<a href="/studentplacement.aspx">Overseas Student Placement </a>
							</li>
							
							
						</ul>			
                    </div>
                </div>
            </div>
        </div>
        <!-- main header END -->
    </header>
    <!-- header END -->
    <!-- Content -->
    <div class="page-content">
		<!-- Section Banner -->
		<!--<div class="dez-bnr-inr dez-bnr-inr-md overlay-black-dark" style="background-image:url(images/main-slider/slide1.jpg);">-->
            <div class="dez-bnr-inr dez-bnr-inr-md img-responsive" style="height: 294px; background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <!--<div class="dez-bnr-inr-entry align-m text-white">-->
					<div class=" job-search-form">
						<h2 class="  text-white text-center">The Easiest Way to Get Your New Job</h2>
						<!--<h2 class="text-white text-center"><h2 style =" color: slategray;">Let Us Help You Find Your Next Job</h2>-->
						<form>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Job Title, Keywords Or Company Name">
								<input type="text" class="form-control" placeholder="City, Province Or Region">
								<div class="input-group-prepend">
									<button class="site-button">Search</button>
								</div>
							</div>
						</form>
					</div>
				<!--</div>-->
            </div>
        </div>
		<!-- Section Banner END -->
        <!-- About Us -->


	

         <!--<div class="dez-bnr-inr dez-bnr-inr-md" style=" margin-top: -160px; ">-->
           <!--  <div class="section-full bg-white content-inner-2" >
            <div class="container" >
       <div class="dez-bnr-inr-entry align-m text-white" >
					<div class=" job-search-form" >
						<!--<h2 class="text-center" style="color: slategrey"> The Easiest Way to Get Your New Job </h2>-->
						<!--<h2 style =" color: slategray;">Let Us Help You Find Your Next Job</h2>
						<form >
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Job Title, Keywords Or Company Name">
								<input type="text" class="form-control" placeholder="City, Province Or Region">
								<div class="input-group-prepend">
									<button class="site-button">Search</button>
								</div>
							</div>
						</form>
					</div>
				</div>
                </div>
             </div>-->


		<!-- Call To Action END -->
		<!-- Our Job -->
		<div class="section-full bg-white content-inner-2" >
			<div class="container" >
				<div class="d-flex job-title-bx section-head">
					<div class="mr-auto">
						<h2 class="m-b5">Recent Jobs</h2>
						<h6 class="fw4 m-b0">15+ Recently Added Jobs</h6>
					</div>
					<div class="align-self-end">
						<a href="#" class="site-button button-sm" id="browse_all_job" runat="server" onserverclick="browse_all_job_ServerClick">Browse All Jobs <i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
				<div class="row" style="margin-top: -10px;">
					<div class="col-lg-9">
						<ul class="post-job-bx">
							
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                <li>
								<a href='<%# Eval("Post_Url") %>'>
									
                                    <div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src='<%# Eval("Image_Url") %>' /></span>
										</div>
										<div class="job-post-info">
											<h4><%# Eval("Job_Title") %></h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> <%# Eval("Location") %></li>
												<li><i class="fa fa-bookmark-o"></i><%# Eval("job_full_type") %></li>
												<li><i class="fa fa-clock-o"></i> <%# Eval("Date") %></li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>FULL TIME  <%--<%# //Eval("job_full_type") %>--%></span>
										</div>
										<div class="salary-bx" >
											<span class="btn btn-success" style="font-size: 14px;">APPLY NOW</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>
                      </ItemTemplate>
                            </asp:DataList>
                            
                            <asp:TextBox ID="display" runat="server" Width="64px" Visible="False"></asp:TextBox>
         <asp:TextBox ID="count" runat="server" Width="64px" Visible="False">0</asp:TextBox>
         <asp:TextBox ID="number_index" runat="server" Width="64px" Visible="False">0</asp:TextBox>
         <asp:TextBox ID="number_range" runat="server" Width="64px" Visible="False">15</asp:TextBox>

                           <!-- <li>
								<a href="#">
									
                                    <div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>






							<li>
								<a href="#">
									<div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>
							<li>
								<a href="#">
									<div class="d-flex m-b30">
										<div class="job-post-company">
											<span><img src="images/logo/icon1.png"/></span>
										</div>
										<div class="job-post-info">
											<h4>Digital Marketing Executive</h4>
											<ul>
												<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
												<li><i class="fa fa-bookmark-o"></i> Full Time</li>
												<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
											</ul>
										</div>
									</div>
									<div class="d-flex">
										<div class="job-time mr-auto">
											<span>Full Time</span>
										</div>
										<div class="salary-bx">
											<span>$1200 - $ 2500</span>
										</div>
									</div>
									<span class="post-like fa fa-heart-o"></span>
								</a>
							</li>-->

						</ul>
						<div class="m-t30">
							<div class="d-flex">

                               <!--<button id="btnreturn" runat="server" onserverclick="btnPrev_ServerClick" class="site-button button-sm mr-auto">
                                                    Next <i class="ti-arrow-right"></i>
                                                </button>

                                 <button id="Button1" runat="server" onserverclick="btnNext_ServerClick" class="site-button button-sm">
                                                    <i class="ti-arrow-left"></i>Prev
                                                </button>-->

								<a class="site-button button-sm mr-auto" href="#" id="Previous" runat="server" onserverclick="btnPrev_ServerClick"><i class="ti-arrow-left"></i> Prev</a>
								<a class="site-button button-sm" href="#" id="Next" runat="server" onserverclick="btnNext_ServerClick">Next <i class="ti-arrow-right"></i></a>

							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="sticky-top">
							<div class="candidates-are-sys m-b30">
								<div class="candidates-bx">
									<div class="testimonial-pic radius"><img src="images/testimonials/olaide.jpg" alt="" width="100" height="100"></div>
									<div class="testimonial-text">
                                        <p> I visited Trupurpose Job Shop full of expectations and I got my dream job within a short period of time. I met my present employer through TruPurpose Job Shop and I am grateful to them</p>
										
									</div>
									<div class="testimonial-detail"> <strong class="testimonial-name">Olaide</strong> <span class="testimonial-position">Oyo State, Nigeria</span> </div>
								</div>
							</div>
							<div class="quote-bx">
								<div class="quote-info">
									<h4>Make a difference with your CV!</h4>
									<p>We can prepare a professionally designed CV for you in 24 hours.</p>
									<a href="/prepareCV.aspx" class="site-button">START NOW</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Our Job END -->	
		<!-- Call To Action -->
		<div class="section-full p-tb70 overlay-black-dark text-white text-center bg-img-fix" style="background-image: url(images/background/bg4.jpg);">
			<div class="container">
				<div class="section-head text-center text-white">
					<h2 class="m-b5">Testimonials</h2>
					<h5 class="fw4">Few words from clients</h5>
				</div>
				<div class="blog-carousel-center owl-carousel owl-none">
					<div class="item">
						<div class="testimonial-5">
							<div class="testimonial-text">                                   
								<p>When we needed a reliable and responsible staff to join our team, we turned to Trupurpose Job Shop, and they delivered. We recommend Trupurpose Job Shop.</p>
							</div>
							<div class="testimonial-detail clearfix">
								<div class="testimonial-pic radius shadow">
									<img src="images/testimonials/pic1.jpg" width="100" height="100" alt="">
								</div>
								<strong class="testimonial-name" style="color:darkorange;">La Maison Hotel and Suites</strong> 
								<span class="testimonial-position">Employer</span> 
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-5">
							<div class="testimonial-text">
								<p>Trupurpose Job Shop, a very outstanding job solution provider for those who need it, both locally and internationally. You have put and still put smiles on the faces of many.</p>
							</div>
							<div class="testimonial-detail clearfix">
								<div class="testimonial-pic radius shadow">
									<img src="images/testimonials/pic2.jpg" width="100" height="100" alt="">
								</div>
								<strong class="testimonial-name" style="color:darkorange;">Ajayi, J. E.</strong> 
								<span class="testimonial-position">Principal, Kingston College</span> 
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonial-5">
							<div class="testimonial-text">
								<p>This is unarguably the best job recruitment agency in Ibadan. Over the years, their service has been very remarkable and their officials are professional and excellent.</p>
							</div>
							<div class="testimonial-detail clearfix">
								<div class="testimonial-pic radius shadow">
									<img src="images/testimonials/pic3.jpg" width="100" height="100" alt="">
								</div>
								<strong class="testimonial-name" style="color:darkorange;">Timjat Interiors</strong> 
								<span class="testimonial-position">Employer</span> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Call To Action END -->
		<!-- Our Latest Blog -->
		<div class="section-full content-inner-2 overlay-white-middle">
			<div class="container">
				<div class="section-head text-black text-center">
					<h2 class="text-uppercase m-b0">Our Latest Blog</h2>
					<p>We are happy to share articles relating to services offered by our company with our visitors. We trust that you will find our blog informative.</p>
				</div>
				<div class="blog-carousel owl-carousel owl-btn-center-lr owl-btn-3 owl-theme owl-btn-center-lr owl-btn-1">
					<div class="item">
						<div class="blog-post blog-grid blog-style-1">
							<div class="dez-post-media dez-img-effect radius-sm"> <a href="/article1.aspx"><img src="images/general/article1.jpg" alt=""></a> </div>
							<div class="dez-info">
								 <div class="dez-post-meta">
									<ul class="d-flex align-items-center">
										<li class="post-date"><i class="fa fa-calendar"></i>July 14, 2020</li>
										<li class="post-comment"><i class="fa fa-comments-o"></i><a href="/article1.aspx">by Tokunbo Sotade</a> </li>
									</ul>
								</div>
								<div class="dez-post-title ">
									<h5 class="post-title font-20"><a href="/article1.aspx">Recruitment Tips - What You Should Know</a></h5>
								</div>
								<div class="dez-post-text">
                                    <p>The job market for small businesses in Nigeria is largely unpublished. The unpublished job market is also known as the hidden.. </p>
								</div>
								<div class="dez-post-readmore blog-share"> 
									<a href="/article1.aspx" title="READ MORE" rel="bookmark" class="site-button outline">READ MORE</a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-post blog-grid blog-style-1">
							<div class="dez-post-media dez-img-effect radius-sm"> <a href="/article2.aspx"><img src="images/general/article2.jpg" alt=""></a> </div>
							<div class="dez-info">
								 <div class="dez-post-meta">
									<ul class="d-flex align-items-center">
										<li class="post-date"><i class="fa fa-calendar"></i>July 14, 2020</li>
										<li class="post-comment"><i class="fa fa-comments-o"></i><a href="/article2.aspx">by Tokunbo Sotade</a> </li>
									</ul>
								</div>
								<div class="dez-post-title ">
									<h5 class="post-title font-20"><a href="/article2.aspx">At TruPurpose Job Shop, we “hire character and train skill”</a></h5>
								</div>
								<div class="dez-post-text">
                                    <p>There is no gainsaying that to employers, people are the most important assets. Taking advantage of almost 10 years of expertise, proven..</p>
								</div>
								<div class="dez-post-readmore blog-share"> 
									<a href="/article2.aspx" title="READ MORE" rel="bookmark" class="site-button outline">READ MORE</a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-post blog-grid blog-style-1">
							<div class="dez-post-media dez-img-effect radius-sm"> <a href="#"><img src="images/general/article3.jpg" alt=""></a> </div>
							<div class="dez-info">
								 <div class="dez-post-meta">
									<ul class="d-flex align-items-center">
										<li class="post-date"><i class="fa fa-calendar"></i>July 14, 2020</li>
										<li class="post-comment"><i class="fa fa-comments-o"></i><a href="/article3.aspx">by Tokunbo Sotade</a> </li>
									</ul>
								</div>
								<div class="dez-post-title ">
									<h5 class="post-title font-20"><a href="/article3.aspx">Overseas University Placement by TruPurpose Job Shop</a></h5>
								</div>
								<div class="dez-post-text">
                                    <p>Choosing the right Country as well as the right university for studying abroad can be a formidable task. With so many institutions, so many..</p>
								</div>
								<div class="dez-post-readmore blog-share"> 
									<a href="/article3.aspx" title="READ MORE" rel="bookmark" class="site-button outline">READ MORE</a>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-post blog-grid blog-style-1">
							<div class="dez-post-media dez-img-effect radius-sm"> <a href="/article4.aspx"><img src="images/general/article4.jpg" alt=""></a> </div>
							<div class="dez-info">
								 <div class="dez-post-meta">
									<ul class="d-flex align-items-center">
										<li class="post-date"><i class="fa fa-calendar"></i>July 14, 2020</li>
										<li class="post-comment"><i class="fa fa-comments-o"></i><a href="/article4.aspx">from EzineArticles</a> </li>
									</ul>
								</div>
								<div class="dez-post-title ">                               
									<h5 class="post-title font-20"><a href="/article4.aspx">How to Write a Job Description in 3 Easy Steps</a></h5>
								</div>
								<div class="dez-post-text">
                                    <p>It is important to have job descriptions despite the size of your business.I can't tell you how often I've worked on issues..</p>
								</div>
								<div class="dez-post-readmore blog-share"> 
									<a href="/article4.aspx" title="READ MORE" rel="bookmark" class="site-button outline">READ MORE</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Our Latest Blog -->
	</div>
	<!-- Footer -->
    <footer class="site-footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
					<div class="col-xl-5 col-lg-4 col-md-12 col-sm-12">
                        <div class="widget">
                            <img src="images/logo.png"  class="m-b15"  alt=""/>
							<p class=" m-b20">We provide friendly, expert, trusted and high-quality services to our clients, thereby ensuring their goals are actualized with minimal cost.</p>
                            <div class="subscribe-form m-b20">
								<form class="dzSubscribe" action="#" method="post">
									<div class="dzSubscribeMsg"></div>
									<div class="input-group">
										<input name="dzEmail" required="required"  class="form-control" placeholder="Your Email Id" type="email">
										<span class="input-group-btn">
											<button name="submit" value="Submit" type="submit" class="site-button radius-xl">Subscribe</button>
										</span> 
									</div>
								</form>
							</div>
							<ul class="list-inline m-a0">
								<li><a href="https://web.facebook.com/ibadanjobshop/?_rdc=1&_rdr" class="site-button white facebook circle "><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://g.page/trupurpose?gm" class="site-button white google-plus circle "><i class="fa fa-google-plus"></i></a></li>
								<li><a href="https://ng.linkedin.com/company/trupurpose-job-shop" class="site-button white linkedin circle "><i class="fa fa-linkedin"></i></a></li>
								<li><a href="https://www.instagram.com/trupurposejobs/?hl=en" class="site-button white instagram circle "><i class="fa fa-instagram"></i></a></li>
								<li><a href="https://twitter.com/Ibadanjobshop" class="site-button white twitter circle "><i class="fa fa-twitter"></i></a></li>
							</ul>
                        </div>
                    </div>
					<div class="col-xl-5 col-lg-5 col-md-8 col-sm-8 col-12">
                        <div class="widget border-0">
                            <h5 class="m-b30 text-white">Frequently Asked Questions</h5>
                            <ul class="list-2 list-line">
                                <li><a href="/faq_why.aspx">WHY YOU SHOULD USE TRUPURPOSE JOB SHOP</a></li>
                                <li><a href="/faq_jobseekers.aspx">JOBSEEKERS</a></li>
                                <li><a href="/referral.aspx">REFERRAL</a></li>
                                <li><a href="/faq_employers.aspx">EMPLOYERS</a></li>
                                 <li><a href="/termofservice.aspx">TERMS OF SERVICE</a></li>
                                 <li><a href="/disclaimer.aspx">DISCLAIMER</a></li>
                            </ul>
                        </div>
                    </div>
					<div class="col-xl-2 col-lg-3 col-md-4 col-sm-4 col-12">
                        <div class="widget border-0">
                            <h5 class="m-b30 text-white">Find Jobs</h5>
                            <ul class="list-2 w10 list-line">
                                 <li><a href="Default.aspx">Teaching Jobs</a></li>
                                <li><a href="Default.aspx">Medical Jobs</a></li>
                                <li><a href="Default.aspx">Corporate Jobs</a></li>
                                <li><a href="Default.aspx">Others</a></li>
                            </ul>
                        </div>
                    </div>
				</div>
            </div>
        </div>
        <!-- footer bottom part -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center"><span><a target="_blank" href="#">Complesol Web Design</a></span></div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END -->
    <!-- scroll top button -->
    <button class="scroltop fa fa-arrow-up" ></button>
</div>
<!-- JAVASCRIPT FILES ========================================= -->
<script src="js/jquery.min.js"></script><!-- JQUERY.MIN JS -->
<script src="plugins/wow/wow.js"></script><!-- WOW JS -->
<script src="plugins/bootstrap/js/popper.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script><!-- FORM JS -->
<script src="plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script><!-- FORM JS -->
<!--<script src="plugins/magnific-popup/magnific-popup.js"></script>--><!-- MAGNIFIC POPUP JS -->
<script src="plugins/counter/waypoints-min.js"></script><!-- WAYPOINTS JS -->
<script src="plugins/counter/counterup.min.js"></script><!-- COUNTERUP JS -->
<script src="plugins/imagesloaded/imagesloaded.js"></script><!-- IMAGESLOADED -->
<script src="plugins/masonry/masonry-3.1.4.js"></script><!-- MASONRY -->
<script src="plugins/masonry/masonry.filter.js"></script><!-- MASONRY -->
<script src="plugins/owl-carousel/owl.carousel.js"></script><!-- OWL SLIDER -->
<script src="plugins/rangeslider/rangeslider.js" ></script><!-- Rangeslider -->
<script src="js/custom.js"></script><!-- CUSTOM FUCTIONS  -->
<script src="js/dz.carousel.js"></script><!-- SORTCODE FUCTIONS  -->
<script src='js/recaptcha/api.js'></script> <!-- Google API For Recaptcha  -->
<script src="js/dz.ajax.js"></script><!-- CONTACT JS  -->
<script src="plugins/paroller/skrollr.min.js"></script><!-- PAROLLER -->
<!-- Go to www.addthis.com/dashboard to customize your tools --> 
    </form>
</body>
</html>
