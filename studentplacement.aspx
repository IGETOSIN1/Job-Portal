<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="studentplacement.aspx.cs" Inherits="Web_Trupurpose_New.studentplacement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Overseas Student Placement</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Overseas Student Placement</li>
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
							<h2 class="m-b5">OVERSEAS STUDENT PLACEMENT</h2>

                           <p class="m-b15"> Studying abroad has been a rite of passage for adventurous university students around the world for many years. While the draw of new experiences and an exciting social life still appeals, the academic, cultural, and career benefits of studying abroad are now more relevant than ever.</p>

<p class="m-b15">Studying abroad isn’t just for undergraduates anymore either. In recent years, the number of graduates looking to study advanced degrees overseas has been on the rise. And in today’s globalized economy, it’s clear why business-focused graduates are especially keen to gain international experience through their studies.</p>

<p class="m-b15">Some of the benefits of studying abroad are listed below</p>


							<h3 class="fw4" style="margin: 0px !important;">An opportunity to see the world</h3>
                            <p class="m-b15">Studying for a degree abroad is not a vacation. But the free time you do have can be spent exploring in and around your new city and immersing yourself in a different part of the world. Studying abroad doesn’t limit you to one country. Embrace the opportunity if your school has international exchange programs that will maximize your international exposure.</p>
                            <h3 class="fw4" style="margin: 0px !important;">Develop a better understanding of other cultures – and business</h3>
                             <p class="m-b15">Not only will living and studying abroad enrich your understanding of different people and customs, you will also gain a broader context for understanding today’s most pressing global issues. Seeing how business issues are tackled by different cultures and how different ways of working affect teams is invaluable if you want to work in an international business environment. Also, outside of the classroom, you will have the opportunity to immerse yourself in the local culture - enjoying the food, festivities, and customs of your host country.</p>
                            <h3 class="fw4" style="margin: 0px !important;">Expand your network</h3>
							 <p class="m-b15">Meeting people from around the world is one of the most common reasons for studying abroad. As part of your degree studies, you’ll collaborate with other students from all over the world. You’ll connect with an interesting and diverse new peer group and a professional network that spans the globe. Building a good relationship with your professors is also valuable while abroad. Their expertise, connections, and mentorship can prove a wonderful asset throughout your studies and beyond.</p>
                            <h3 class="fw4" style="margin: 0px !important;">Gain essential life skills and building resilience</h3>
                             <p class="m-b15">For some students, studying abroad is their first time living away from home. Even for graduate-level students, the experience of adjusting to a new culture and life abroad can be overwhelming. Developing these key “survival skills” is one of the biggest benefits of studying abroad. Once the culture shock fades, you’ll be left with a sense of self-confidence and independence which will prove very useful in your professional life, regardless of your career path.</p>
                            <h3 class="fw4" style="margin: 0px !important;">Boost your employability</h3>
                             <p class="m-b15">It’s no secret that a study abroad experience is great for graduate employability. From gaining foreign-language fluency or earning a specialized qualification, to developing key “soft skills” like adaptability, communication, and cross-cultural understanding, your time abroad is an excellent opportunity to build your resume. Whatever your field or career aspirations, international experience will certainly help you to stand out in today’s highly competitive global job market.</p>
                       
                        <p class="m-b15">Are you interested in overseas education? Kindly complete the form below to enable our Client Service Officer get in touch with you.
                             <br/>  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapsePlacement" aria-expanded="false" aria-controls="CollapsePlacement">Contact Us</button>
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
        <input type="text" id="name"  class="form-control col-sm-6" />
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Country</label>
       <div class="col-md-8">
        <asp:TextBox ID="country" runat="server" class="form-control col-sm-7" required></asp:TextBox>
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
                      <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" />
                                    </div>

          </div>
                                    </div>

                        </p>    
                        


                        </div>
						<div class="col-md-12 col-lg-6">
							<img src="images/general/placement.jpg" alt=""/>
						</div>
					</div>
					


				</div>
			</div>


</asp:Content>
