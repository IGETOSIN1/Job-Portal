<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Web_Trupurpose_New.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Contact</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Contact Us</li>
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
							<h2 class="m-b5">Contact Us</h2>
							<!--<h3 class="fw4" style="margin: 0px !important;">RECRUITMENT</h3>
							<p >We specialize in recruiting experienced and dedicated staff for schools, hospitals, and other organizations - we deploy our robust database to identify the best and brightest candidates. Our recruitment team is dedicated to making the recruitment process simple and transparent. Once we have knowledge of your preferences, skill set, and salary requirements, we identify and keep you constantly updated with the most suitable job opportunities throughout the South-West of Nigeria.
                                <br/><a href="/applicantregister.aspx" class=" btn btn-primary"> REGISTER HERE</a></p>-->
							
                            <!--<h3 class="fw4" style="margin: 0px !important;">OVERSEAS STUDENT PLACEMENT</h3>0708 324 8640 and 0902 412 6032.-->
							<p class="m-b15">
                                <address> 
        <p style=" font-size: 17px; color: deeppink;"><font style=" font-style: italic; font-weight: bold; color: midnightblue; margin:0px !important;">Phone: </font>+234-708-324-8640, +234-902-412-6032</p>

<p style=" font-size: 17px; color: deeppink;"><font style=" font-style: italic; font-weight: bold; color: midnightblue;">Email: </font>info@trupurpose.com.ng</p>

<p style=" font-size: 17px; color: deeppink;"><font style=" font-style: italic; font-weight: bold; color: midnightblue;">Address: </font>10 Moremi Street, Off Aare Avenue, New Bodija, Ibadan. Oyo State. Nigeria</p>

<p style=" font-size: 17px; color: deeppink;"><font style=" font-style: italic; font-weight: bold; color: midnightblue;">Website: </font>www.trupurpose.com.ng</p>

<p style=" font-size: 17px; color: deeppink; margin:0px !important"><font style=" font-style: italic; font-weight: bold; color: deeppink;">Working hours </font></p>
                                    <p style="margin:0px !important;"><font style="font-weight: bold;">Monday-Friday:</font> <font style="color: deeppink;">8AM - 5PM</font></p>
                                    <p><font style="font-weight: bold;">Saturday:</font> <font style="color: deeppink;">9AM - 1PM</font></p>
        </address> 
                                
                               <br/>  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#CollapsePlacement" aria-expanded="false" aria-controls="CollapsePlacement">Send us a Message>></button>
                                <br /><br />
                               




                                <div class="collapse multi-collapse" id="CollapsePlacement" >
      <div class="card card-body">

           <div class="form-group row">
      <label for="name" class="control-label col-md-3">Category</label>
       <div class="col-md-8">
        <asp:DropDownList ID="category" runat="server"  class="form-control">
            <asp:ListItem>Select Category</asp:ListItem>
            <asp:ListItem>Enquiry</asp:ListItem>
            <asp:ListItem>Schedule a meeting</asp:ListItem>
            <asp:ListItem>Complaint</asp:ListItem>
           </asp:DropDownList>
       </div>
     </div>
                                         
                                 <div class="form-group row">
      <label for="name" class="control-label col-md-3">First Name</label>
       <div class="col-md-8">
       <asp:TextBox ID="firstname" runat="server" class="form-control" required></asp:TextBox>
       </div>
     </div>

     <div class="form-group row">
      <label for="name" class="control-label col-md-3">Last Name</label>
       <div class="col-md-8">
        <asp:TextBox ID="lastname" runat="server" class="form-control" required></asp:TextBox>
       </div>
     </div>

                                       <div class="form-group row">
      <label for="name" class="control-label col-md-3">Email</label>
       <div class="col-md-8">
        <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-3">Phone</label>
       <div class="col-md-8">
        <asp:TextBox ID="phone" runat="server" class="form-control" required></asp:TextBox>
       </div>
     </div>

                                 <div class="form-group row">
      <label for="name" class="control-label col-md-3">Message</label>
       <div class="col-md-8">
        <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" class="form-control" required></asp:TextBox>
       </div>
     </div>

                                <div class="text-center">
                      <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                    </div>

          </div>
                                    </div>
</p>
                            </p>



							

						 </div>
						<div class="col-md-12 col-lg-6">
							<img src="images/general/contact.jpg" alt=""/>
						</div>
					</div>
					


				</div>
			</div>






     </div>
</asp:Content>
