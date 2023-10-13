<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="requeststaff.aspx.cs" Inherits="Web_Trupurpose_New.requeststaff" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/main-slider/slide1.PNG);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Request for Staff</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Request for Staff</li>
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
							<h2 class="m-b5">EMPLOYER REQUEST FORM</h2>
							<h6 class="fw4" style="margin:0px !important;">All requests from employers are attended to within 48 hours</h6><br/>
							
                            <p class="m-b15">Kindly fill the form below to enable us to search for workers that meet your requirements. </p>
                            
                            <p class="m-b15"><b>Please note the following recruitment service terms and conditions:</b> 
                                <ul>
					<li>	Employers should note that all live-in and out-going Housemaids and other employees must be 18 years and above.</li>
<li>The employer must report any case of misconduct within the stipulated period of 3 months, for us to effect the required change or else pay a new service fee for the new worker.</li>
<li>There is no replacement for Secretaries, Front Desk Officers, Office Assistants, Cashiers and Accountants, etc. deployed to your organization, as we will make sure that they meet your requirements.</li>
<li>Trupurpose Job Shop will only conduct background checks if requested by the employer to do so, and this will be done after the payment of the prescribed fee.</li>
<li>In conducting a background check, Trupurpose Job Shop and its affiliate will only verify the information supplied by the applicants as far as practicable and issue relevant reports to the employers. Our background checks are for guidance only and should not be construed to mean that we are standing as guarantor to the applicant. It is the responsibility of the employer to obtain a suitable guarantor/referee as Trupurpose Job Shop and its employees will not be liable nor responsible for any damages, losses and/or liabilities suffered and/or incurred by the applicant in future.</li>
<li>In consideration of Trupurpose Job Shop and its affiliates providing job placement services, the applicant has signed a letter of undertaking to pay prescribed processing/job placement fee from his first salary. The employer must be willing to implement the agreement and details will be forwarded to you to effect necessary deduction from his/her first salary after the applicant is employed.</li>
<li>Other terms and conditions/disclaimers listed on our website www.trupurpose.com.ng are also relevant to this request.</li>
</ul>

                                <asp:Panel ID="Panel1" runat="server">

                                <div class="form-group">
    <label for="exampleInputEmail1">Title</label> <asp:Label ID="title1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
   <asp:DropDownList ID="title" runat="server"  class="form-control">
            <asp:ListItem>Select Title</asp:ListItem>
            <asp:ListItem>MR.</asp:ListItem>
            <asp:ListItem>MRS.</asp:ListItem>
            <asp:ListItem>MISS.</asp:ListItem>
           </asp:DropDownList>
  </div>

                                <div class="form-group">
    <label for="exampleInputEmail1">Name</label>   <asp:Label ID="name1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
     <asp:TextBox ID="name" class="form-control " runat="server" required></asp:TextBox>
  </div>

                                <div class="form-group">
    <label for="exampleInputEmail1">Name of Organization</label> <asp:Label ID="organization1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="organization" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                <div class="form-group">
    <label for="exampleInputEmail1">Detailed Residential/ Office Address</label> <asp:Label ID="residential_address1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="residential_address" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                                            <div class="form-group">
    <label for="exampleInputEmail1">Postal Address(Optional)</label> <asp:Label ID="postal_address1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="postal_address" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                                            <div class="form-group">
    <label for="exampleInputEmail1">Email Address</label> <asp:Label ID="email1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
   <asp:TextBox ID="email" TextMode="Email" class="form-control" runat="server" ></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Mobile Phone Numbers</label> <asp:Label ID="phone1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="phone" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Position</label> <asp:Label ID="position1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="position" class="form-control" runat="server"></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Working Hour(s)</label> <asp:Label ID="working_hour1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="working_hour" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Salary Range</label> <asp:Label ID="salary_range1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="salary_range" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Age Range</label> <asp:Label ID="age_range1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="age_range" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Is background check required?</label> <asp:Label ID="background_check1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
   <asp:TextBox ID="background_check" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                 <div class="form-group"> 
    <label for="exampleInputEmail1">If yes, you will be required to pay a Background Check Fee of </label> <asp:Label ID="background_fee_of1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="background_fee_of" class="form-control" runat="server" ></asp:TextBox>
    <small id="emailHelp" class="form-text text-muted">The Background Check Fee is for each applicant. kindly contact us for detail</small>
  </div>

                                 <div class="form-group">
    <label for="exampleInputEmail1">Are we required to conduct psychometric tests for applicants?</label> <asp:Label ID="psychometric_test1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="psychometric_test" class="form-control" runat="server" required></asp:TextBox>
  </div>

                                                             <div class="form-group">
    <label for="exampleInputEmail1">If yes, you will be required to pay an additional fees of </label>
    <asp:TextBox ID="psychometric_fee_of" class="form-control" runat="server"></asp:TextBox> <asp:Label ID="psychometric_fee_of1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
     <small id="emailHelp" class="form-text text-muted">The additional fee is for each applicant. kindly contact us for detail</small>
  </div>

    <b><small id="emailHelp" class="form-text text-muted">*Please note that we always conduct Pre-deployment interview for applicants before deployment but if you require us to be further involved in your interview planning/selection process, you will be required to pay an additional negotiable fee.</small></b><br/>

                                   <div class="form-group">
    <label for="exampleInputEmail1">I agree to pay Search Fee(contact us for details) of </label> <asp:Label ID="search_fee_of1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
    <asp:TextBox ID="search_fee_of" class="form-control" runat="server"></asp:TextBox>
  </div>

    <b><small id="emailHelp" class="form-text text-muted">The following search fee is for each applicant selected and this payment is to made once the applicant has been employed by me or in my organization. I also undertake to effect the agreed deduction between your company and the applicant from his/ her first salary.</small><br/><br/>
        I have read and understand the terms and conditions of this recruitment service, and I agree to them.
    </b><br/><br/>


   


                                    </asp:Panel>
                              

                                <div class="btn-group">
  <asp:Button ID="Button1" runat="server" Text="Preview In PDF" CssClass="btn btn-success pull-left" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary pull-right" OnClick="Button2_Click" />
</div>

</p>

                            </div>
						<div class="col-md-12 col-lg-6">
							<img src="images/general/staffrequest.jpg" alt=""/>
						</div>
					</div>
					


				</div>
			</div>

     </div>

        
     </div>



   <script type="text/javascript">

       $(function () {

           $('#dtpickerdemo').datetimepicker();

       });

</script>

</asp:Content>
