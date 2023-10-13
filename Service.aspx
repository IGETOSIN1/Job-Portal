<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="Web_Trupurpose_New.service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Our Services</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Our Services</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
		<div class="content-block">
            <div class="section-full content-inner overlay-white-middle">
				<div class="container">
					<div class="row align-items-center m-b50">
						<div class="col-md-12 col-lg-6 m-b20 ">
							<h2 class="m-b5">OUR SERVICES</h2>
							<h3 class="fw4" style="margin: 0px !important;">RECRUITMENT</h3>
							<p >We specialize in recruiting experienced and dedicated staff for schools, hospitals, and other organizations - we deploy our robust database to identify the best and brightest candidates. Our recruitment team is dedicated to making the recruitment process simple and transparent. Once we have knowledge of your preferences, skill set, and salary requirements, we identify and keep you constantly updated with the most suitable job opportunities throughout the South-West of Nigeria.
                                <br/><a href="/applicantregister.aspx" class=" btn btn-primary"> REGISTER HERE</a></p>
							
                            <h3 class="fw4" style="margin: 0px !important;">OVERSEAS STUDENT PLACEMENT</h3>
							<p class="m-b15">Formal education is one of the roads to career success. In addition to recruiting students for a one-year HND to B.Sc. conversion programme with American International University in the Gambia (AIUWA), we also recruit students for some Universities in the Republic of Benin, Ghana, UK, etc.
                               <br/>  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapsePlacement" aria-expanded="false" aria-controls="CollapsePlacement">Read More>></button>
                                <br />
                               




                                <div class="collapse multi-collapse" id="CollapsePlacement" >
      <div class="card card-body">

           Are you interested in overseas education? Kindly complete the form below to enable our Client Service Officer get in touch with you.<br/>
                               
                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">First Name</label>
       <div class="col-md-8">
       <asp:TextBox ID="firstname" runat="server" class="form-control col-sm-7" required></asp:TextBox>
       </div>
     </div>

     <div class="form-group row">
      <label for="name" class="control-label col-md-2">Last Name</label>
       <div class="col-md-8">
        <asp:TextBox ID="lastname" runat="server" class="form-control col-sm-7" required></asp:TextBox>
       </div>
     </div>

     <div class="form-group row">
      <label for="name" class="control-label col-md-2">Gender</label>
       <div class="col-md-8">
        <asp:DropDownList ID="gender" runat="server"  class="form-control col-sm-5">
            <asp:ListItem>Select Gender</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
           </asp:DropDownList>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Age</label>
       <div class="col-md-8">
        <asp:TextBox ID="age" runat="server" class="form-control col-sm-2" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Date of Birth</label>
       <div class="col-md-8">
       <asp:TextBox ID="dateOfBirth" runat="server" class="form-control col-sm-4" placeholder="dd/mm/yyyy" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Email</label>
       <div class="col-md-8">
        <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control col-sm-7" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Phone</label>
       <div class="col-md-8">
        <asp:TextBox ID="phone" runat="server" class="form-control col-sm-4" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Course</label>
       <div class="col-md-8">
        <asp:TextBox ID="course" runat="server" class="form-control col-sm-7" required CssClass="auto-style1"></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Country</label>
       <div class="col-md-8">
        <asp:TextBox ID="country" runat="server" class="form-control col-sm-7" required CssClass="auto-style1"></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Study Type</label>
       <div class="col-md-8">
        <asp:DropDownList ID="studyType" runat="server"  class="form-control col-sm-5">
            <asp:ListItem>Select Study Type</asp:ListItem>
            <asp:ListItem>B.Sc</asp:ListItem>
            <asp:ListItem>M.Sc</asp:ListItem>
            <asp:ListItem>Ph.D</asp:ListItem>
           </asp:DropDownList>
       </div>
     </div>
                                <div class="text-center">
                      <asp:Button ID="Button1" runat="server" Text="Submit Enquiry" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                    </div>

          </div>
                                    </div>
</p>



                 <h3 class="fw4" style="margin: 0px !important;">EDUCATIONAL TOUR</h3>
				<p class="m-b15">We aim to help teachers and students discover the world and we strongly believe that the educational experience of students is greatly enhanced by trips outside of the school – and this is the purpose of our excursion program.
                    <br/><button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapseTour" aria-expanded="false" aria-controls="CollapseTour">Read More>></button></p>
							

                             <div class="collapse multi-collapse" id="CollapseTour" >
      <div class="card card-body">
					 <h3 class="fw4" style="margin: 0px !important;">TRUPURPOSE EXCURSION PROGRAM</h3>
				<p class="m-b15">Having fun on an excursion creates great memories for the students. Their recollection of the explored subject will be better having had a hands-on experience while enjoying their day out. Trips require careful planning and preparation to make them a success. TruPurpose Job Shop will assist you in creating an opportunity for your students to experience a life-changing event. We are registered with Oyo State Tourism Board following the State Edict No. 7 of 1996, as Providers of Educational Support Services and Excursion Management, and we use our experienced local organizers in various countries like Ghana, Republic of Benin, e.t.c. to make your trip a perfect one. We can customize any itinerary to match your school’s needs.</p>
						
                             <h3 class="fw4" style="margin: 0px !important;">BENEFITS OF THE EXCURSION PROGRAM</h3>
				<p class="m-b15">We aim to help teachers and students discover the world and we strongly believe that the educational experience of students is greatly enhanced by trips outside of the school – and this is the purpose of our excursion program. <br/>
                    <ul>
            <li>An opportunity to take students out of the shores of Nigeria thereby creating great memories for the students</li>
            <li>Students will have first-hand opportunities to interact and relate with other students in other countries</li>
            <li>Meet people and experience the way of living of other tribes and cultures</li>
            <li>Have a taste of other delicacies</li>
            <li>The school will have this as an addition to their scheduled extracurricular activities and will have photographs, video recording, and certificates to show for this. </li>
      
                        </ul>

                    Please call +2348033234172 for more information.

                    </div>
                                 </div>
				</p>
					
                             <h3 class="fw4" style="margin: 0px !important;">ACCESS TO LEARNING </h3>
				<p class="m-b15">We organize periodic workshops, seminars and conferences for executives in the public and private sectors. 
                    <br/><button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapseAccess" aria-expanded="false" aria-controls="CollapseAccess">Read More>></button></p>
							

                              <div class="collapse multi-collapse" id="CollapseAccess" >
      <div class="card card-body" >

          <img src="images/general/access.jpg" alt=""/><br/>

                         <h3 class="fw4" style="margin: 0px !important;">  TRUPURPOSE TRAINING PROGRAMS</h3><br/>

					 <h4 class="fw4" style="margin: 0px !important;">Workplace Ethics & Attitude Training</h4>
				<p class="m-b15">After years of recruiting staff for various organizations and watching the division between high performing employees and the others, we have been able to conclude that the strongest reason for poor employee productivity is the wrong perspective about work. At Trupurpose Job Shop, we equip our applicants with the right ethics and personalities to exhibit at workplaces to make them better assets to the organizations we fix them with. </p>
						
         <p class="m-b15"> Candidates who attend our work ethics training have access to common interview questions and the appropriate ways to answer these questions, thereby greatly improving their chances of getting jobs. It increases their chances of getting employed, exposes them to the technicalities and psychological interventions to apply to love their jobs. The training increases attendees’ productivity, effectiveness and efficiency, it also improves how they relate with people and get along with the organization they work for. Candidates also have the chance of being automatically fixed into the hot job positions.</p>
                            
          <h3 class="fw4" style="margin: 0px !important;">Career Consultancy & Counseling</h3>
				<p class="m-b15">We help individuals who are confused about their career path to navigate to the direction that is divinely designed for them. We also assist individuals with career challenges to cope with their situations. We inculcate different psychological tests and approaches in figuring out career challenges thereby expediting career success and fulfillment. </p>
                  
           <h3 class="fw4" style="margin: 0px !important;">CV Clinic</h3>
				<p class="m-b15">Most times, applicants take a trivial approach to CV issues. A CV is not only the representation of one’s qualifications, it is also the representation of one’s personality. As such, we polish and take good care of your CV, to get the attention of your employer in the first 30 seconds of decision - this is the first moment HR experts determine either to call you for an interview or not. We train interested candidates on how to write a welcoming CV and some technicalities behind.   </p>
                  
           <h3 class="fw4" style="margin: 0px !important;">Career Advancement Training</h3>
				<p class="m-b15"> This is professional training for candidates who want to get unleashed. One of the core things to be done before sitting to write a CV is identity awareness. In this training, candidates would be exposed to different opportunities and how to maximize them. Candidates would be exposed to the evolving nature of the 21st century, the direction is it going and how to take advantage of the opportunities and leverage on it for their career success and fulfillment.  </p>
                  
                    </div>
                                 </div>
                            </p>
                           


                                      <h3 class="fw4" style="margin: 0px !important;">CONSULTANCY SERVICES </h3>                            

				<p class="m-b15">Our Consultancy Services includes Mystery Shopping program, preparation of feasibility studies and business plans, e.t.c. 
                    <br/><button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapseConsultancy" aria-expanded="false" aria-controls="CollapseConsultancy">Read More>></button></p>
							

                              <div class="collapse multi-collapse" id="CollapseConsultancy" >
      <div class="card card-body" >
                         
          <img src="images/general/consultancy.jpg" alt=""/><br/>

					 <h3 class="fw4" style="margin: 0px !important;">TRUPURPOSE MYSTERY SHOPPER</h3>
				<p class="m-b15">Our mystery shoppers provide assessments from the point of view of an industry specialist rather than a typical customer. Our mode of operation removes the usual "eye service" factor of most employees to impress their boss by being more effective on the job when the boss is present. We come into your organization without the knowledge of your members of staff but with the knowledge of the overall boss, especially when he/she is not around. We introduce ourselves as clients to your members of staff, especially those at the customer service desk in order to properly assess their performance. We then write and compile our report which would be submitted to the management, indicating areas that need improvement in effectively managing your company's customer services and give recommendations as applicable. </p>
						
         Highlights of the mystery shopper programme are below
          <ul>
            <li>We provide periodic reports and statistics to enable you to track customer service performance</li>
<li>We monitor your customer service by visiting specified outlets at an agreed frequency</li>
<li>We extend your quality assurance programme to the intangible elements of your customer service</li>
<li>We help you to look at your business through the eyes of your customers</li>
<li>We help you ensure all your outlets are giving a consistent level of customer service</li>
<li>We help you spot any employees who may be driving your customers away</li>
<li>We check the service provided by each branch against your laid-down customer service standards</li>

                        </ul>

             <h3 class="fw4" style="margin: 0px !important;">PREPARATION OF FEASIBILITY STUDIES</h3>
				<p class="m-b15">At Trupurpose, we provide consultancy services and assist Micro, Small and Medium Enterprises (MSME) to prepare bankable feasibility reports and business plans.   </p>
                  
           <h3 class="fw4" style="margin: 0px !important;">PROFESSIONALLY PREPARED CV</h3>
				<p class="m-b15"> We assist applicants in preparing CVs that stand out from the many CVs Human Resource Managers and recruiters receive when recruiting. </p>
                  
                    Please call +2348033234172 for more information.

                    </div>
                                 </div>
                            </p>



							

						 </div>
						<div class="col-md-12 col-lg-6">
							<img src="images/general/service.jpg" alt=""/>
						</div>
					</div>
					


				</div>
			</div>







            <script type="text/javascript">
   $(document).ready(function(){
       $('.datepicker').datepicker();
});
</script>

     </div>
</div>
</asp:Content>
