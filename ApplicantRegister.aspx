<%@ Page Title="" Language="C#" MasterPageFile="~/master_general.Master" AutoEventWireup="true" CodeBehind="ApplicantRegister.aspx.cs" Inherits="Web_Trupurpose_New.ApplicantRegister" EnableEventValidation="false" %>
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
                    <h1 class="text-white">Applicant Registration</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Applicant Registration</li>
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
						<div class="col-md-12 m-b20 ">

                            <asp:Panel ID="Panel1" runat="server" style="">

                            <h6 style="text-align: center;"> <asp:Label ID="result_output" runat="server" style=" color: deeppink; font-size:11px; text-align: center;"></asp:Label></h6>


                            <div class="form-group row">
      <label for="name" class="control-label col-md-2">Title</label> <asp:Label ID="title1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
                             <asp:DropDownList ID="title" 
        runat="server" name="field4" class="form-control col-sm-2" >
        <asp:ListItem>Title</asp:ListItem>
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Miss</asp:ListItem>
    </asp:DropDownList>
            </div>
     </div>

                                                   <div class="form-group row">
      <label for="name" class="control-label col-md-2">First Name</label> <asp:Label ID="first_name1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-md-8">
      <asp:TextBox ID="first_name" runat="server" class="form-control col-sm-8" name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                                                   <div class="form-group row">
      <label for="name" class="control-label col-md-2">Last Name</label> <asp:Label ID="last_name1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-md-8">
       <asp:TextBox ID="last_name" runat="server" class="form-control col-sm-8" name="field1" value="" ></asp:TextBox>
       </div>
     </div>



                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Date of Birth</label> <asp:Label ID="date_of_birth1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
                        <asp:DropDownList ID="day_birth" runat="server" name="field4" 
        class="form-control col-sm-2">
         <asp:ListItem>Day</asp:ListItem>
        <asp:ListItem>01</asp:ListItem>
        <asp:ListItem>02</asp:ListItem>
        <asp:ListItem>03</asp:ListItem>
        <asp:ListItem>04</asp:ListItem>
        <asp:ListItem>06</asp:ListItem>
        <asp:ListItem>06</asp:ListItem>
        <asp:ListItem>07</asp:ListItem>
        <asp:ListItem>08</asp:ListItem>
        <asp:ListItem>09</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>16</asp:ListItem>
        <asp:ListItem>17</asp:ListItem>
        <asp:ListItem>18</asp:ListItem>
        <asp:ListItem>19</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>21</asp:ListItem>
         <asp:ListItem>22</asp:ListItem>
         <asp:ListItem>23</asp:ListItem>
         <asp:ListItem>24</asp:ListItem>
         <asp:ListItem>25</asp:ListItem>
         <asp:ListItem>26</asp:ListItem>
         <asp:ListItem>27</asp:ListItem>
         <asp:ListItem>28</asp:ListItem>
          <asp:ListItem>29</asp:ListItem>
          <asp:ListItem>30</asp:ListItem>
          <asp:ListItem>31</asp:ListItem>
      </asp:DropDownList>&nbsp;
    <asp:DropDownList ID="month_birth" runat="server" name="field4" 
        class="form-control col-sm-2">
        <asp:ListItem>Month</asp:ListItem>
        <asp:ListItem>January</asp:ListItem>
        <asp:ListItem>February</asp:ListItem>
<asp:ListItem>March</asp:ListItem>
<asp:ListItem>April</asp:ListItem>
<asp:ListItem>May</asp:ListItem>
<asp:ListItem>June</asp:ListItem>
<asp:ListItem>July</asp:ListItem>
<asp:ListItem>August</asp:ListItem>
<asp:ListItem>September</asp:ListItem>
        <asp:ListItem>October</asp:ListItem>
        <asp:ListItem>November</asp:ListItem>
        <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
         &nbsp;<asp:DropDownList ID="year_birth" runat="server" name="field4" 
        class="form-control col-sm-2" >        
        </asp:DropDownList>


            </div>
     </div>


 <div class="form-group row">
      <label for="name" class="control-label col-md-2">Marital Status</label> <asp:Label ID="marital_status1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="marital_status" 
        runat="server" name="field4" class="form-control col-sm-4" >
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorced</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Religion</label> <asp:Label ID="religion1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="religion" 
        runat="server" name="field4" class="form-control col-sm-4" >
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Christianity</asp:ListItem>
        <asp:ListItem>Islam</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Detailed Residential Address</label> <asp:Label ID="residential_address1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
            <asp:TextBox ID="residential_address" runat="server" class="form-control col-sm-7" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Detailed Postal Address</label> <asp:Label ID="postal_address1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="postal_address" runat="server" class="form-control col-sm-7" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Email</label> <asp:Label ID="email1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control col-sm-8" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>
                                   <div class="form-group row">
      <label for="name" class="control-label col-md-2">Phone Number(s)</label> <asp:Label ID="phone1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="phone" runat="server" class="form-control col-sm-3" 
        name="field1" value="" 
        AutoPostBack="True"></asp:TextBox>
       </div>
     </div>

                                  <div class="form-group row">
      <label for="name" class="control-label col-md-2">Means of Identification</label> <asp:Label ID="means_of_identification1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="means_of_identification" 
        runat="server" name="field4" class="form-control col-sm-3" >
        <asp:ListItem>National ID Card</asp:ListItem>
        <asp:ListItem>Voter's Card</asp:ListItem>
        <asp:ListItem>Driver's License</asp:ListItem>
        <asp:ListItem>International Passport</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">ID Number</label> <asp:Label ID="id_number1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="id_number" runat="server" class="form-control col-sm-3" 
        name="field1" value=""></asp:TextBox>
       </div>
     </div>


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Highest Academic Qualification</label> <asp:Label ID="first_acad_qualification1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       
           <asp:DropDownList ID="first_acad_qualification" runat="server" name="field4" 
         class="form-control col-sm-2" >
        <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
      </asp:DropDownList> &nbsp;
    <asp:DropDownList ID="first_acad_qualification_course" runat="server" name="field4" 
        class="form-control col-sm-4" >
        <asp:ListItem>COURSE OF STUDY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management</asp:ListItem>
<asp:ListItem>Home Science, Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others (Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archaeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creative Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music </asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>BIOLOGICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Cell Biology and Genetics</asp:ListItem>
<asp:ListItem>Food and Science Technology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Accounting</asp:ListItem>
<asp:ListItem>Actuarial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Others (Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others (Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Accounting Education</asp:ListItem>
<asp:ListItem>Adult Education and Extramural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Biology Education</asp:ListItem>
<asp:ListItem>Chemistry Education</asp:ListItem>
<asp:ListItem>Computer Science Education</asp:ListItem>
<asp:ListItem>Economics Education</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>English Language Education</asp:ListItem>
<asp:ListItem>French Education</asp:ListItem>
<asp:ListItem>Geography Education</asp:ListItem>
<asp:ListItem>Mathematics Education</asp:ListItem>
<asp:ListItem>Guidance and Counseling Education</asp:ListItem>
<asp:ListItem>Physical and Health Education</asp:ListItem>
<asp:ListItem>Physics Education</asp:ListItem>
<asp:ListItem>Political Science Education</asp:ListItem>
<asp:ListItem>Religious Studies Education</asp:ListItem>
<asp:ListItem>Social Science Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Others (Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bio-resources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronics Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others (Engineering)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIROMENTAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Building Technology</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Geo-information and Surveying</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others (Environmental Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Auxilary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Midwifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others (Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others (Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesiology </asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry </asp:ListItem>
<asp:ListItem>Medical Microbiology </asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolarynology</asp:ListItem>
<asp:ListItem>Paediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics </asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Others (Medical Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Pharmacology and Toxicology </asp:ListItem>
<asp:ListItem>Others (Pharmaceutical Sciences)</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science </asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry  </asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others (Physical Sciences)</asp:ListItem>
 <asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science </asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work </asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others (Social Sciences)</asp:ListItem>

    <asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy </asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology </asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Others (Veterinary Medicine)</asp:ListItem> 
    

        </asp:DropDownList>
         &nbsp;<asp:DropDownList ID="first_acad_qualification_year" runat="server" name="field4" 
        class="form-control col-sm-2" >        
        </asp:DropDownList>           
          
       </div>
     </div>


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Academic Qualification 2</label> <asp:Label ID="second_acad_qualification1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       
           <asp:DropDownList ID="second_acad_qualification" runat="server" name="field4" 
         class="form-control col-sm-2" >
        <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
      </asp:DropDownList> &nbsp;
    <asp:DropDownList ID="second_acad_qualification_course" runat="server" name="field4" 
        class="form-control col-sm-4" >
        <asp:ListItem>COURSE OF STUDY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management</asp:ListItem>
<asp:ListItem>Home Science, Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others (Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archaeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creative Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music </asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>BIOLOGICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Cell Biology and Genetics</asp:ListItem>
<asp:ListItem>Food and Science Technology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY</asp:ListItem>
           <asp:ListItem></asp:ListItem>
   <asp:ListItem>Accounting</asp:ListItem>
<asp:ListItem>Actuarial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Others (Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others (Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Accounting Education</asp:ListItem>
<asp:ListItem>Adult Education and Extramural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Biology Education</asp:ListItem>
<asp:ListItem>Chemistry Education</asp:ListItem>
<asp:ListItem>Computer Science Education</asp:ListItem>
<asp:ListItem>Economics Education</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>English Language Education</asp:ListItem>
<asp:ListItem>French Education</asp:ListItem>
<asp:ListItem>Geography Education</asp:ListItem>
<asp:ListItem>Mathematics Education</asp:ListItem>
<asp:ListItem>Guidance and Counseling Education</asp:ListItem>
<asp:ListItem>Physical and Health Education</asp:ListItem>
<asp:ListItem>Physics Education</asp:ListItem>
<asp:ListItem>Political Science Education</asp:ListItem>
<asp:ListItem>Religious Studies Education</asp:ListItem>
<asp:ListItem>Social Science Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Others (Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bio-resources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronics Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others (Engineering)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIROMENTAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Building Technology</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Geo-information and Surveying</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others (Environmental Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Auxilary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Midwifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others (Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others (Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesiology </asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry </asp:ListItem>
<asp:ListItem>Medical Microbiology </asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolarynology</asp:ListItem>
<asp:ListItem>Paediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics </asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Others (Medical Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Pharmacology and Toxicology </asp:ListItem>
<asp:ListItem>Others (Pharmaceutical Sciences)</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science </asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry  </asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others (Physical Sciences)</asp:ListItem>
 <asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science </asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work </asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others (Social Sciences)</asp:ListItem>

    <asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy </asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology </asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Others (Veterinary Medicine)</asp:ListItem> <asp:ListItem>  AGRICULTURE</asp:ListItem>
    

        </asp:DropDownList>
         &nbsp;<asp:DropDownList ID="second_acad_qualification_year" runat="server" name="field4" 
        class="form-control col-sm-2" >        
        </asp:DropDownList>           
          
       </div>
     </div>


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Academic Qualification 3</label> <asp:Label ID="third_acad_qualification1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       
           <asp:DropDownList ID="third_acad_qualification" runat="server" name="field4" 
         class="form-control col-sm-2" >
        <asp:ListItem>Qualification</asp:ListItem>
        <asp:ListItem>SSCE</asp:ListItem>
        <asp:ListItem>NCE</asp:ListItem>
        <asp:ListItem>OND</asp:ListItem>
        <asp:ListItem>HND</asp:ListItem>
        <asp:ListItem>RN</asp:ListItem>
        <asp:ListItem>B.A</asp:ListItem>
        <asp:ListItem>B.ED</asp:ListItem>
        <asp:ListItem>B.SC</asp:ListItem>
        <asp:ListItem>B.ENG</asp:ListItem>
        <asp:ListItem>B.TECH</asp:ListItem>
        <asp:ListItem>MBBS</asp:ListItem>
        <asp:ListItem>B.Pharm</asp:ListItem>
        <asp:ListItem>PGD</asp:ListItem>
        <asp:ListItem>M.A</asp:ListItem>
        <asp:ListItem>M.ED</asp:ListItem>
        <asp:ListItem>M.SC</asp:ListItem>
        <asp:ListItem>M.TECH</asp:ListItem>
        <asp:ListItem>M.ENG</asp:ListItem>
        <asp:ListItem>PHD</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
      </asp:DropDownList> &nbsp;
    <asp:DropDownList ID="third_acad_qualification_course" runat="server" name="field4" 
        class="form-control col-sm-4" >
        <asp:ListItem>COURSE OF STUDY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>AGRICULTURE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
<asp:ListItem>Agricultural Economics</asp:ListItem>
<asp:ListItem>Agricultural Extension</asp:ListItem>
<asp:ListItem>Agronomy</asp:ListItem>
<asp:ListItem>Animal Science</asp:ListItem>
<asp:ListItem>Crop Science</asp:ListItem>
<asp:ListItem>Fisheries</asp:ListItem>
<asp:ListItem>Forest Resources Management</asp:ListItem>
<asp:ListItem>Home Science, Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>Soil Science</asp:ListItem>
<asp:ListItem>Others (Agriculture)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ARTS</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Archaeology and Tourism</asp:ListItem>
<asp:ListItem>Arabic and Islamic Studies</asp:ListItem>
<asp:ListItem>Christian Religious Studies</asp:ListItem>
<asp:ListItem>English and Literary Studies</asp:ListItem>
<asp:ListItem>Fine and Applied Arts (Creative Arts)</asp:ListItem>
<asp:ListItem>Foreign Languages and Literature</asp:ListItem>
<asp:ListItem>History and International Studies</asp:ListItem>
<asp:ListItem>Linguistics and Nigerian Languages</asp:ListItem>
<asp:ListItem>Mass Communication (Communication and Language Arts)</asp:ListItem>
<asp:ListItem>Music </asp:ListItem>
<asp:ListItem>Theatre and Film Studies</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>BIOLOGICAL SCIENCES</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Biochemistry</asp:ListItem>
<asp:ListItem>Botany</asp:ListItem>
<asp:ListItem>Cell Biology and Genetics</asp:ListItem>
<asp:ListItem>Food and Science Technology</asp:ListItem>
<asp:ListItem>Marine Biology</asp:ListItem>
<asp:ListItem>Microbiology</asp:ListItem>
<asp:ListItem>Zoology</asp:ListItem>
<asp:ListItem>Others (Arts)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ACCOUNTANCY</asp:ListItem>
      <asp:ListItem></asp:ListItem>
<asp:ListItem>Accounting</asp:ListItem>
<asp:ListItem>Actuarial Science</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Business Management</asp:ListItem>
<asp:ListItem>Banking and Finance</asp:ListItem>
<asp:ListItem>Industrial Relations and Personnel Management</asp:ListItem>
<asp:ListItem>Insurance</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Others (Accountancy)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>DENTISTRY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Child Dental Health</asp:ListItem>
<asp:ListItem>Dentistry</asp:ListItem>
<asp:ListItem>Oral and Maxillofacial Surgery</asp:ListItem>
<asp:ListItem>Preventive Dentistry</asp:ListItem>
<asp:ListItem>Restorative Dentistry</asp:ListItem>
<asp:ListItem>Others (Dentistry)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>EDUCATION</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Accounting Education</asp:ListItem>
<asp:ListItem>Adult Education and Extramural Studies</asp:ListItem>
<asp:ListItem>Arts Education</asp:ListItem>
<asp:ListItem>Biology Education</asp:ListItem>
<asp:ListItem>Chemistry Education</asp:ListItem>
<asp:ListItem>Computer Science Education</asp:ListItem>
<asp:ListItem>Economics Education</asp:ListItem>
<asp:ListItem>Educational Foundations</asp:ListItem>
<asp:ListItem>English Language Education</asp:ListItem>
<asp:ListItem>French Education</asp:ListItem>
<asp:ListItem>Geography Education</asp:ListItem>
<asp:ListItem>Mathematics Education</asp:ListItem>
<asp:ListItem>Guidance and Counseling Education</asp:ListItem>
<asp:ListItem>Physical and Health Education</asp:ListItem>
<asp:ListItem>Physics Education</asp:ListItem>
<asp:ListItem>Political Science Education</asp:ListItem>
<asp:ListItem>Religious Studies Education</asp:ListItem>
<asp:ListItem>Social Science Education</asp:ListItem>
<asp:ListItem>Vocational Teacher Education (Technical Education)</asp:ListItem>
<asp:ListItem>Others (Education)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>ENGINEERING</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agricultural and Bio-resources Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Computer Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electronics Engineering</asp:ListItem>
<asp:ListItem>Marine Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Metallurgical Engineering</asp:ListItem>
<asp:ListItem>Petroleum and Gas Engineering</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Structural Engineering</asp:ListItem>
<asp:ListItem>Production and Industrial Engineering</asp:ListItem>
<asp:ListItem>Others (Engineering)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>ENVIROMENTAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Architecture</asp:ListItem>
<asp:ListItem>Building Technology</asp:ListItem>
<asp:ListItem>Estate Management</asp:ListItem>
<asp:ListItem>Geo-information and Surveying</asp:ListItem>
<asp:ListItem>Quantity Surveying</asp:ListItem>
<asp:ListItem>Urban and Regional Planning</asp:ListItem>
<asp:ListItem>Others (Environmental Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>HEALTH SCIENCE & TECHNOLOGY</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Auxilary Nursing</asp:ListItem>
<asp:ListItem>Community Health Extension</asp:ListItem>
<asp:ListItem>Midwifery</asp:ListItem>
<asp:ListItem>Health Administration and Management</asp:ListItem>
<asp:ListItem>Medical Laboratory Sciences</asp:ListItem>
<asp:ListItem>Medical Radiography and Radiological Sciences</asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Nursing Sciences</asp:ListItem>
<asp:ListItem>Others (Health Sciences & Technology)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>LAW</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Law</asp:ListItem>
<asp:ListItem>Commercial and Property Law</asp:ListItem>
<asp:ListItem>International and Jurisprudence</asp:ListItem>
<asp:ListItem>Private and Public Law</asp:ListItem>
<asp:ListItem>Others (Law)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>MEDICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Anatomy</asp:ListItem>
<asp:ListItem>Anesthesiology </asp:ListItem>
<asp:ListItem>Chemical Pathology</asp:ListItem>
<asp:ListItem>Community Medicine</asp:ListItem>
<asp:ListItem>Dermatology</asp:ListItem>
<asp:ListItem>Hematology and Immunology</asp:ListItem>
<asp:ListItem>Medical Biochemistry </asp:ListItem>
<asp:ListItem>Medical Microbiology </asp:ListItem>
<asp:ListItem>Medical Rehabilitation</asp:ListItem>
<asp:ListItem>Medicine</asp:ListItem>
<asp:ListItem>Morbid Anatomy</asp:ListItem>
<asp:ListItem>Obstetrics and Gynecology</asp:ListItem>
<asp:ListItem>Occupational Therapy</asp:ListItem>
<asp:ListItem>Ophthalmology</asp:ListItem>
<asp:ListItem>Otolarynology</asp:ListItem>
<asp:ListItem>Paediatrics</asp:ListItem>
<asp:ListItem>Pharmacology and Therapeutics </asp:ListItem>
<asp:ListItem>Physiology</asp:ListItem>
<asp:ListItem>Physiotherapy</asp:ListItem>
<asp:ListItem>Radiation Medicine</asp:ListItem>
<asp:ListItem>Surgery</asp:ListItem>
<asp:ListItem>Psychological Medicine</asp:ListItem>
<asp:ListItem>Others (Medical Sciences)</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>PHARMACEUTICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Clinical Pharmacy and Pharmacy Management</asp:ListItem>
<asp:ListItem>Pharmaceutical Chemistry and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutical Technology and Industrial Pharmacy</asp:ListItem>
<asp:ListItem>Pharmaceutics</asp:ListItem>
<asp:ListItem>Pharmacognosy</asp:ListItem>
<asp:ListItem>Pharmacology and Toxicology </asp:ListItem>
<asp:ListItem>Others (Pharmaceutical Sciences)</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>PHYSICAL SCIENCES</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Computer Science </asp:ListItem>
<asp:ListItem>Geology</asp:ListItem>
<asp:ListItem>Geophysics</asp:ListItem>
<asp:ListItem>Library and Information Science</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Physics and Astronomy</asp:ListItem>
<asp:ListItem>Hospitality and Tourism</asp:ListItem>
<asp:ListItem>Pure and Industrial Chemistry  </asp:ListItem>
<asp:ListItem>Statistics</asp:ListItem>
<asp:ListItem>Others (Physical Sciences)</asp:ListItem>
 <asp:ListItem></asp:ListItem>
<asp:ListItem>SOCIAL SCIENCES</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>Economics</asp:ListItem>
<asp:ListItem>Geography</asp:ListItem>
<asp:ListItem>Philosophy</asp:ListItem>
<asp:ListItem>Political Science </asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Administration and Local Government</asp:ListItem>
<asp:ListItem>Religion</asp:ListItem>
<asp:ListItem>Social Work </asp:ListItem>
<asp:ListItem>Sociology/Anthropology</asp:ListItem>
<asp:ListItem>Others (Social Sciences)</asp:ListItem>

    <asp:ListItem></asp:ListItem>
<asp:ListItem>VETERINARY MEDICINE</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Animal Health and Production</asp:ListItem>
<asp:ListItem>Veterinary Physiology/Pharmacology</asp:ListItem>
<asp:ListItem>Veterinary Anatomy </asp:ListItem>
<asp:ListItem>Veterinary Parasitology and Entomology </asp:ListItem>
<asp:ListItem>Veterinary Pathology and Microbiology</asp:ListItem>
<asp:ListItem>Veterinary Public Health and Preventive Medicine</asp:ListItem>
<asp:ListItem>Veterinary Surgery</asp:ListItem>
<asp:ListItem>Veterinary Medicine</asp:ListItem>
<asp:ListItem>Veterinary Obstetrics and Reproductive Diseases</asp:ListItem>
<asp:ListItem>Others (Veterinary Medicine)</asp:ListItem>
    

        </asp:DropDownList>
         &nbsp;<asp:DropDownList ID="third_acad_qualification_year" runat="server" name="field4" 
        class="form-control col-sm-2" >        
        </asp:DropDownList>           
          
       </div>
     </div>


                              <div class="form-group row">
      <label for="name" class="control-label col-md-2">Professional Qualification</label> <asp:Label ID="first_prof_qualification1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="first_prof_qualification" runat="server" class="form-control col-sm-4" 
        name="field1" value="" placeholder="1st Qualification and Year Obtained" ></asp:TextBox>&nbsp;
         
        <asp:TextBox ID="second_prof_qualification" runat="server" class="form-control col-sm-4" 
        name="field1" value="" placeholder="2nd Qualification and Year Obtained" ></asp:TextBox>&nbsp;

        <asp:TextBox ID="third_prof_qualification" runat="server" class="form-control col-sm-4" 
        name="field1" value="" placeholder="3rd Qualification and Year Obtained" ></asp:TextBox>
       </div>
     </div>

                             <!-- <label for="field1"><span>If Subject Teacher(Enter Subject(s)) <span class="required">*</span></span> 
    <asp:TextBox ID="discipline" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> -->                                                            

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Job Category</label> <asp:Label ID="jobcategory_10" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:CheckBox ID="job_corporate" runat="server"  /> Corporate &nbsp;&nbsp;
       <asp:CheckBox ID="job_general" runat="server"  /> General&nbsp;&nbsp;
       <asp:CheckBox ID="job_medical" runat="server"  /> Medical &nbsp;&nbsp;
       <asp:CheckBox ID="job_Teaching" runat="server"  /> Teaching &nbsp;&nbsp;
       <asp:CheckBox ID="job_others" runat="server"  /> Others 
   
       </div>
     </div>

                              <div class="form-group row">
      <label for="name" class="control-label col-md-2">Computer skills you possess. Tick as appropriate</label> <asp:Label ID="computer_skill_10" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:TextBox ID="other_skills" runat="server" Visible="false"></asp:TextBox>
    
    <asp:CheckBox ID="skill_microsoft_word" runat="server" /> Microsoft Word &nbsp;&nbsp;
   <asp:CheckBox ID="skill_microsoft_excel" runat="server" /> Microsoft Excel &nbsp;&nbsp;
   <asp:CheckBox ID="skill_microsoft_access" runat="server" /> Microsoft Access <br/>
   <asp:CheckBox ID="skill_corel_draw" runat="server" /> Corel Draw &nbsp;&nbsp;   
   <asp:CheckBox ID="skill_adobe_photoshop" runat="server" /> Adobe Photoshop &nbsp;&nbsp;
    <asp:CheckBox ID="skill_print_artist" runat="server" /> Print Artist   <br/>
    <asp:TextBox ID="skill_others" runat="server" placeholder="Others (Please Specify)"></asp:TextBox> 
       </div>
     </div>


                                                         <div class="form-group row">
      <label for="name" class="control-label col-md-2">Work Experience 1 (Most Recent)</label> <asp:Label ID="work_exper1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="comp1" runat="server" class="form-control col-sm-6" name="field1" value=""  placeholder="Company Name & Address"></asp:TextBox><br/>
        <asp:TextBox ID="duration1" runat="server" class="form-control col-sm-4" name="field1" value=""   placeholder="Period of  Employment"></asp:TextBox><br/>
        <asp:TextBox ID="positionheld1" runat="server" class="form-control col-sm-3" name="field1" value=""  placeholder="Position Held"></asp:TextBox><br/>
        <asp:TextBox ID="salary_range1" runat="server" class="form-control col-sm-2" name="field1" value=""  placeholder="Salary"></asp:TextBox><br/>
        
       </div>
     </div>

                        <div class="form-group row">
      <label for="name" class="control-label col-md-2">Work Experience 2</label> <asp:Label ID="work_exper2" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="comp2" runat="server" class="form-control col-sm-6" name="field1" value=""  placeholder="Company Name & Address"></asp:TextBox><br/>
        <asp:TextBox ID="duration2" runat="server" class="form-control col-sm-4" name="field1" value=""   placeholder="Period of  Employment"></asp:TextBox><br/>
        <asp:TextBox ID="positionheld2" runat="server" class="form-control col-sm-3" name="field1" value=""  placeholder="Position Held"></asp:TextBox><br/>
        <asp:TextBox ID="salary_range2" runat="server" class="form-control col-sm-2" name="field1" value=""  placeholder="Salary"></asp:TextBox><br/>
        
       </div>
     </div>

                    <div class="form-group row">
      <label for="name" class="control-label col-md-2">Work Experience 3</label> <asp:Label ID="work_exper3" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="comp3" runat="server" class="form-control col-sm-6" name="field1" value=""  placeholder="Company Name & Address"></asp:TextBox><br/>
        <asp:TextBox ID="duration3" runat="server" class="form-control col-sm-4" name="field1" value=""   placeholder="Period of  Employment"></asp:TextBox><br/>
        <asp:TextBox ID="positionheld3" runat="server" class="form-control col-sm-3" name="field1" value=""  placeholder="Position Held"></asp:TextBox><br/>
        <asp:TextBox ID="salary_range3" runat="server" class="form-control col-sm-2" name="field1" value=""  placeholder="Salary"></asp:TextBox><br/>
        
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Additional Work Experience</label> <asp:Label ID="additional_work_experience" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
      <asp:TextBox ID="work_experience" runat="server" name="field1" 
        class="form-control" Height="79px" TextMode="MultiLine" 
          ></asp:TextBox> 
       </div>
     </div>
                                                                

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Appointment Being Sought</label> <asp:Label ID="first_appointment_being_sought1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
         <asp:DropDownList ID="first_appointment_being_sought" 
        runat="server" name="field4" class="form-control col-sm-3">
        <asp:ListItem>First Choice</asp:ListItem>
       <asp:ListItem> Accountant</asp:ListItem>
<asp:ListItem>Administration</asp:ListItem>
<asp:ListItem>Administrative Assistant</asp:ListItem>
<asp:ListItem>Agricultural Science Personnel</asp:ListItem>
<asp:ListItem>Automobile Mechanic</asp:ListItem>
<asp:ListItem>Automobile Electrician</asp:ListItem>
<asp:ListItem>Air Hostess</asp:ListItem>
<asp:ListItem>Artist</asp:ListItem>
<asp:ListItem>Auditor</asp:ListItem>
<asp:ListItem>Auxiliary Nurse</asp:ListItem>
<asp:ListItem>Bar/Lounge Manager</asp:ListItem>
<asp:ListItem>Bartender</asp:ListItem>
<asp:ListItem>Bouncer</asp:ListItem>
<asp:ListItem>Bursar</asp:ListItem>
<asp:ListItem>Business Developer</asp:ListItem>
<asp:ListItem>Cashier</asp:ListItem>
<asp:ListItem>Caterer</asp:ListItem>
<asp:ListItem>Chef</asp:ListItem>
<asp:ListItem>Classroom Assistant</asp:ListItem>
<asp:ListItem>Classroom Teacher</asp:ListItem>
<asp:ListItem>Cleaner/Nanny</asp:ListItem>
<asp:ListItem>Community Health Assistant</asp:ListItem>
<asp:ListItem>Computer Programmer</asp:ListItem>
<asp:ListItem>Community Health Extension Worker</asp:ListItem>
<asp:ListItem>Cook</asp:ListItem>
<asp:ListItem>Customer Care Representative</asp:ListItem>
<asp:ListItem>Dentist</asp:ListItem>
<asp:ListItem>Disc Jockey (DJ)</asp:ListItem>
<asp:ListItem>Driver</asp:ListItem>
<asp:ListItem>Engineer</asp:ListItem>
<asp:ListItem>Event Decorator</asp:ListItem>
<asp:ListItem>Event Planner</asp:ListItem>
<asp:ListItem>Factory Worker/Technician</asp:ListItem>
<asp:ListItem>Farm Manager</asp:ListItem>
<asp:ListItem>Fashion Designer</asp:ListItem>
<asp:ListItem>Financial Services</asp:ListItem>
<asp:ListItem>Fitness Coach/Trainer</asp:ListItem>
<asp:ListItem>Forklift Operator</asp:ListItem>
<asp:ListItem>Front Desk Officer</asp:ListItem>
<asp:ListItem>Gardener</asp:ListItem>
<asp:ListItem>Geophysicist</asp:ListItem>
<asp:ListItem>Graphic Designer/Artist </asp:ListItem>
<asp:ListItem>Hair Stylist</asp:ListItem>
<asp:ListItem>Head Teacher</asp:ListItem>
<asp:ListItem>Health Record Officer</asp:ListItem>
<asp:ListItem>Hospital Maid</asp:ListItem>
<asp:ListItem>Housekeeper</asp:ListItem>
<asp:ListItem>Housemaster/Housemistress</asp:ListItem>
<asp:ListItem>Hotel/Hospitality</asp:ListItem>
<asp:ListItem>Human Resources Manager</asp:ListItem>
<asp:ListItem>Intern</asp:ListItem>
<asp:ListItem>IT Specialist</asp:ListItem>
<asp:ListItem>Laboratory Analyst</asp:ListItem>
<asp:ListItem>Laboratory Technician</asp:ListItem>
<asp:ListItem>Lesson Teacher</asp:ListItem>
<asp:ListItem>Light Truck Driver</asp:ListItem>
<asp:ListItem>Live-in-Cook</asp:ListItem>
<asp:ListItem>Live-in-Housemaid</asp:ListItem>
<asp:ListItem>Medical Doctor</asp:ListItem>
<asp:ListItem>Makeup Artist </asp:ListItem>
<asp:ListItem>Marketer</asp:ListItem>
<asp:ListItem>Masseur/Masseuse</asp:ListItem>
<asp:ListItem>Midwife</asp:ListItem>
<asp:ListItem>Model</asp:ListItem>
<asp:ListItem>Motor Boy</asp:ListItem>
<asp:ListItem>Motorcycle Delivery Rider</asp:ListItem>
<asp:ListItem>Nail Technician</asp:ListItem>
<asp:ListItem>Newscaster</asp:ListItem>
<asp:ListItem>Nurse</asp:ListItem>
<asp:ListItem>Office Assistant</asp:ListItem>
<asp:ListItem>Out-going Cook</asp:ListItem>
<asp:ListItem>Part-time Teacher</asp:ListItem>
<asp:ListItem>Personal Assistant/Executive Assistant</asp:ListItem>
<asp:ListItem>Pharmacist</asp:ListItem>
<asp:ListItem>Photographer</asp:ListItem>
<asp:ListItem>Plumber</asp:ListItem>
<asp:ListItem>Principal</asp:ListItem>
<asp:ListItem>Project Manager</asp:ListItem>
<asp:ListItem>Production Officer</asp:ListItem>
<asp:ListItem>Quality Control Supervisor</asp:ListItem>
<asp:ListItem>Real Estate Agent</asp:ListItem>
<asp:ListItem>Receptionist/Office Assistant</asp:ListItem>
<asp:ListItem>Sales Boy/Girl</asp:ListItem>
<asp:ListItem>Sales Representative</asp:ListItem>
<asp:ListItem>Security Guard (Day)</asp:ListItem>
<asp:ListItem>Security Guard (Night)</asp:ListItem>
<asp:ListItem>Secretary</asp:ListItem>
<asp:ListItem>Site Manager</asp:ListItem>
<asp:ListItem>Social Media Manager</asp:ListItem>
<asp:ListItem>Social Media Promoter</asp:ListItem>
<asp:ListItem>Sound Engineer</asp:ListItem>
<asp:ListItem>Subject Teacher</asp:ListItem>
<asp:ListItem>Storekeeper</asp:ListItem>
<asp:ListItem>Store Manager</asp:ListItem>
<asp:ListItem>Supervisor</asp:ListItem>
<asp:ListItem>Tailor/Seamstress</asp:ListItem>
<asp:ListItem>Taxi/Cab Driver</asp:ListItem>
<asp:ListItem>Truck driver</asp:ListItem>
<asp:ListItem>Usher</asp:ListItem>
<asp:ListItem>Veterinary Doctor</asp:ListItem>
<asp:ListItem>Videographer</asp:ListItem>
<asp:ListItem>Waiter/Waitress</asp:ListItem>
<asp:ListItem>Washer/Presser</asp:ListItem>
<asp:ListItem>Web Developer/Designer</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:DropDownList> 
    
    &nbsp;
    <asp:DropDownList ID="second_appointment_being_sought" 
        runat="server" name="field4" class="form-control col-sm-3">
        <asp:ListItem>Second Choice</asp:ListItem>
         <asp:ListItem> Accountant</asp:ListItem>
<asp:ListItem>Administration</asp:ListItem>
<asp:ListItem>Administrative Assistant</asp:ListItem>
<asp:ListItem>Agricultural Science Personnel</asp:ListItem>
<asp:ListItem>Automobile Mechanic</asp:ListItem>
<asp:ListItem>Automobile Electrician</asp:ListItem>
<asp:ListItem>Air Hostess</asp:ListItem>
<asp:ListItem>Artist</asp:ListItem>
<asp:ListItem>Auditor</asp:ListItem>
<asp:ListItem>Auxiliary Nurse</asp:ListItem>
<asp:ListItem>Bar/Lounge Manager</asp:ListItem>
<asp:ListItem>Bartender</asp:ListItem>
<asp:ListItem>Bouncer</asp:ListItem>
<asp:ListItem>Bursar</asp:ListItem>
<asp:ListItem>Business Developer</asp:ListItem>
<asp:ListItem>Cashier</asp:ListItem>
<asp:ListItem>Caterer</asp:ListItem>
<asp:ListItem>Chef</asp:ListItem>
<asp:ListItem>Classroom Assistant</asp:ListItem>
<asp:ListItem>Classroom Teacher</asp:ListItem>
<asp:ListItem>Cleaner/Nanny</asp:ListItem>
<asp:ListItem>Community Health Assistant</asp:ListItem>
<asp:ListItem>Computer Programmer</asp:ListItem>
<asp:ListItem>Community Health Extension Worker</asp:ListItem>
<asp:ListItem>Cook</asp:ListItem>
<asp:ListItem>Customer Care Representative</asp:ListItem>
<asp:ListItem>Dentist</asp:ListItem>
<asp:ListItem>Disc Jockey (DJ)</asp:ListItem>
<asp:ListItem>Driver</asp:ListItem>
<asp:ListItem>Engineer</asp:ListItem>
<asp:ListItem>Event Decorator</asp:ListItem>
<asp:ListItem>Event Planner</asp:ListItem>
<asp:ListItem>Factory Worker/Technician</asp:ListItem>
<asp:ListItem>Farm Manager</asp:ListItem>
<asp:ListItem>Fashion Designer</asp:ListItem>
<asp:ListItem>Financial Services</asp:ListItem>
<asp:ListItem>Fitness Coach/Trainer</asp:ListItem>
<asp:ListItem>Forklift Operator</asp:ListItem>
<asp:ListItem>Front Desk Officer</asp:ListItem>
<asp:ListItem>Gardener</asp:ListItem>
<asp:ListItem>Geophysicist</asp:ListItem>
<asp:ListItem>Graphic Designer/Artist </asp:ListItem>
<asp:ListItem>Hair Stylist</asp:ListItem>
<asp:ListItem>Head Teacher</asp:ListItem>
<asp:ListItem>Health Record Officer</asp:ListItem>
<asp:ListItem>Hospital Maid</asp:ListItem>
<asp:ListItem>Housekeeper</asp:ListItem>
<asp:ListItem>Housemaster/Housemistress</asp:ListItem>
<asp:ListItem>Hotel/Hospitality</asp:ListItem>
<asp:ListItem>Human Resources Manager</asp:ListItem>
<asp:ListItem>Intern</asp:ListItem>
<asp:ListItem>IT Specialist</asp:ListItem>
<asp:ListItem>Laboratory Analyst</asp:ListItem>
<asp:ListItem>Laboratory Technician</asp:ListItem>
<asp:ListItem>Lesson Teacher</asp:ListItem>
<asp:ListItem>Light Truck Driver</asp:ListItem>
<asp:ListItem>Live-in-Cook</asp:ListItem>
<asp:ListItem>Live-in-Housemaid</asp:ListItem>
<asp:ListItem>Medical Doctor</asp:ListItem>
<asp:ListItem>Makeup Artist </asp:ListItem>
<asp:ListItem>Marketer</asp:ListItem>
<asp:ListItem>Masseur/Masseuse</asp:ListItem>
<asp:ListItem>Midwife</asp:ListItem>
<asp:ListItem>Model</asp:ListItem>
<asp:ListItem>Motor Boy</asp:ListItem>
<asp:ListItem>Motorcycle Delivery Rider</asp:ListItem>
<asp:ListItem>Nail Technician</asp:ListItem>
<asp:ListItem>Newscaster</asp:ListItem>
<asp:ListItem>Nurse</asp:ListItem>
<asp:ListItem>Office Assistant</asp:ListItem>
<asp:ListItem>Out-going Cook</asp:ListItem>
<asp:ListItem>Part-time Teacher</asp:ListItem>
<asp:ListItem>Personal Assistant/Executive Assistant</asp:ListItem>
<asp:ListItem>Pharmacist</asp:ListItem>
<asp:ListItem>Photographer</asp:ListItem>
<asp:ListItem>Plumber</asp:ListItem>
<asp:ListItem>Principal</asp:ListItem>
<asp:ListItem>Project Manager</asp:ListItem>
<asp:ListItem>Production Officer</asp:ListItem>
<asp:ListItem>Quality Control Supervisor</asp:ListItem>
<asp:ListItem>Real Estate Agent</asp:ListItem>
<asp:ListItem>Receptionist/Office Assistant</asp:ListItem>
<asp:ListItem>Sales Boy/Girl</asp:ListItem>
<asp:ListItem>Sales Representative</asp:ListItem>
<asp:ListItem>Security Guard (Day)</asp:ListItem>
<asp:ListItem>Security Guard (Night)</asp:ListItem>
<asp:ListItem>Secretary</asp:ListItem>
<asp:ListItem>Site Manager</asp:ListItem>
<asp:ListItem>Social Media Manager</asp:ListItem>
<asp:ListItem>Social Media Promoter</asp:ListItem>
<asp:ListItem>Sound Engineer</asp:ListItem>
<asp:ListItem>Subject Teacher</asp:ListItem>
<asp:ListItem>Storekeeper</asp:ListItem>
<asp:ListItem>Store Manager</asp:ListItem>
<asp:ListItem>Supervisor</asp:ListItem>
<asp:ListItem>Tailor/Seamstress</asp:ListItem>
<asp:ListItem>Taxi/Cab Driver</asp:ListItem>
<asp:ListItem>Truck driver</asp:ListItem>
<asp:ListItem>Usher</asp:ListItem>
<asp:ListItem>Veterinary Doctor</asp:ListItem>
<asp:ListItem>Videographer</asp:ListItem>
<asp:ListItem>Waiter/Waitress</asp:ListItem>
<asp:ListItem>Washer/Presser</asp:ListItem>
<asp:ListItem>Web Developer/Designer</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
         </asp:DropDownList>
         
        &nbsp; 
    <asp:DropDownList ID="third_appointment_being_sought" 
        runat="server" name="field4" class="form-control col-sm-3"  >
        <asp:ListItem>Third Choice</asp:ListItem>
         <asp:ListItem> Accountant</asp:ListItem>
<asp:ListItem>Administration</asp:ListItem>
<asp:ListItem>Administrative Assistant</asp:ListItem>
<asp:ListItem>Agricultural Science Personnel</asp:ListItem>
<asp:ListItem>Automobile Mechanic</asp:ListItem>
<asp:ListItem>Automobile Electrician</asp:ListItem>
<asp:ListItem>Air Hostess</asp:ListItem>
<asp:ListItem>Artist</asp:ListItem>
<asp:ListItem>Auditor</asp:ListItem>
<asp:ListItem>Auxiliary Nurse</asp:ListItem>
<asp:ListItem>Bar/Lounge Manager</asp:ListItem>
<asp:ListItem>Bartender</asp:ListItem>
<asp:ListItem>Bouncer</asp:ListItem>
<asp:ListItem>Bursar</asp:ListItem>
<asp:ListItem>Business Developer</asp:ListItem>
<asp:ListItem>Cashier</asp:ListItem>
<asp:ListItem>Caterer</asp:ListItem>
<asp:ListItem>Chef</asp:ListItem>
<asp:ListItem>Classroom Assistant</asp:ListItem>
<asp:ListItem>Classroom Teacher</asp:ListItem>
<asp:ListItem>Cleaner/Nanny</asp:ListItem>
<asp:ListItem>Community Health Assistant</asp:ListItem>
<asp:ListItem>Computer Programmer</asp:ListItem>
<asp:ListItem>Community Health Extension Worker</asp:ListItem>
<asp:ListItem>Cook</asp:ListItem>
<asp:ListItem>Customer Care Representative</asp:ListItem>
<asp:ListItem>Dentist</asp:ListItem>
<asp:ListItem>Disc Jockey (DJ)</asp:ListItem>
<asp:ListItem>Driver</asp:ListItem>
<asp:ListItem>Engineer</asp:ListItem>
<asp:ListItem>Event Decorator</asp:ListItem>
<asp:ListItem>Event Planner</asp:ListItem>
<asp:ListItem>Factory Worker/Technician</asp:ListItem>
<asp:ListItem>Farm Manager</asp:ListItem>
<asp:ListItem>Fashion Designer</asp:ListItem>
<asp:ListItem>Financial Services</asp:ListItem>
<asp:ListItem>Fitness Coach/Trainer</asp:ListItem>
<asp:ListItem>Forklift Operator</asp:ListItem>
<asp:ListItem>Front Desk Officer</asp:ListItem>
<asp:ListItem>Gardener</asp:ListItem>
<asp:ListItem>Geophysicist</asp:ListItem>
<asp:ListItem>Graphic Designer/Artist </asp:ListItem>
<asp:ListItem>Hair Stylist</asp:ListItem>
<asp:ListItem>Head Teacher</asp:ListItem>
<asp:ListItem>Health Record Officer</asp:ListItem>
<asp:ListItem>Hospital Maid</asp:ListItem>
<asp:ListItem>Housekeeper</asp:ListItem>
<asp:ListItem>Housemaster/Housemistress</asp:ListItem>
<asp:ListItem>Hotel/Hospitality</asp:ListItem>
<asp:ListItem>Human Resources Manager</asp:ListItem>
<asp:ListItem>Intern</asp:ListItem>
<asp:ListItem>IT Specialist</asp:ListItem>
<asp:ListItem>Laboratory Analyst</asp:ListItem>
<asp:ListItem>Laboratory Technician</asp:ListItem>
<asp:ListItem>Lesson Teacher</asp:ListItem>
<asp:ListItem>Light Truck Driver</asp:ListItem>
<asp:ListItem>Live-in-Cook</asp:ListItem>
<asp:ListItem>Live-in-Housemaid</asp:ListItem>
<asp:ListItem>Medical Doctor</asp:ListItem>
<asp:ListItem>Makeup Artist </asp:ListItem>
<asp:ListItem>Marketer</asp:ListItem>
<asp:ListItem>Masseur/Masseuse</asp:ListItem>
<asp:ListItem>Midwife</asp:ListItem>
<asp:ListItem>Model</asp:ListItem>
<asp:ListItem>Motor Boy</asp:ListItem>
<asp:ListItem>Motorcycle Delivery Rider</asp:ListItem>
<asp:ListItem>Nail Technician</asp:ListItem>
<asp:ListItem>Newscaster</asp:ListItem>
<asp:ListItem>Nurse</asp:ListItem>
<asp:ListItem>Office Assistant</asp:ListItem>
<asp:ListItem>Out-going Cook</asp:ListItem>
<asp:ListItem>Part-time Teacher</asp:ListItem>
<asp:ListItem>Personal Assistant/Executive Assistant</asp:ListItem>
<asp:ListItem>Pharmacist</asp:ListItem>
<asp:ListItem>Photographer</asp:ListItem>
<asp:ListItem>Plumber</asp:ListItem>
<asp:ListItem>Principal</asp:ListItem>
<asp:ListItem>Project Manager</asp:ListItem>
<asp:ListItem>Production Officer</asp:ListItem>
<asp:ListItem>Quality Control Supervisor</asp:ListItem>
<asp:ListItem>Real Estate Agent</asp:ListItem>
<asp:ListItem>Receptionist/Office Assistant</asp:ListItem>
<asp:ListItem>Sales Boy/Girl</asp:ListItem>
<asp:ListItem>Sales Representative</asp:ListItem>
<asp:ListItem>Security Guard (Day)</asp:ListItem>
<asp:ListItem>Security Guard (Night)</asp:ListItem>
<asp:ListItem>Secretary</asp:ListItem>
<asp:ListItem>Site Manager</asp:ListItem>
<asp:ListItem>Social Media Manager</asp:ListItem>
<asp:ListItem>Social Media Promoter</asp:ListItem>
<asp:ListItem>Sound Engineer</asp:ListItem>
<asp:ListItem>Subject Teacher</asp:ListItem>
<asp:ListItem>Storekeeper</asp:ListItem>
<asp:ListItem>Store Manager</asp:ListItem>
<asp:ListItem>Supervisor</asp:ListItem>
<asp:ListItem>Tailor/Seamstress</asp:ListItem>
<asp:ListItem>Taxi/Cab Driver</asp:ListItem>
<asp:ListItem>Truck driver</asp:ListItem>
<asp:ListItem>Usher</asp:ListItem>
<asp:ListItem>Veterinary Doctor</asp:ListItem>
<asp:ListItem>Videographer</asp:ListItem>
<asp:ListItem>Waiter/Waitress</asp:ListItem>
<asp:ListItem>Washer/Presser</asp:ListItem>
<asp:ListItem>Web Developer/Designer</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
         </asp:DropDownList>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">If others, specify</label> <asp:Label ID="if_others1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="if_others" runat="server" class="form-control col-sm-4" name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                                  <div class="form-group row">
      <label for="name" class="control-label col-md-2">Job Type</label> <asp:Label ID="job_full_part1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:DropDownList ID="job_full_part" 
        runat="server" name="field4" class="form-control col-sm-2" >
        <asp:ListItem>Full Time</asp:ListItem>
        <asp:ListItem>Part Time</asp:ListItem>
        <asp:ListItem>Internship</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>                                          


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">If Subject Teacher, specify subject(s) </label> <asp:Label ID="if_others_subject_teacher1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
      <asp:TextBox ID="if_others_subject_teacher" runat="server" class="form-control col-sm-5" name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Min. Salary Expectation</label> <asp:Label ID="salary_expectation1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="salary_expectation" runat="server" class="form-control col-sm-3" 
        name="field1" value=""></asp:TextBox>
       </div>
     </div>


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Job Location 1</label> <asp:Label ID="location_first_choice1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="location_first_choice" 
        runat="server" name="field4" class="form-control col-sm-4" >
        <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>
                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Job Location 2</label> <asp:Label ID="location_second_choice1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="location_second_choice" 
        runat="server" name="field4" class="form-control col-sm-4" >
        <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>


                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Job Location 3</label><asp:Label ID="location_third_choice1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:DropDownList ID="location_third_choice" 
        runat="server" name="field4" class="form-control col-sm-4" >
        <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Referee Name</label> <asp:Label ID="reference_name1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="reference_name" runat="server" class="form-control col-sm-6" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Referee Address</label> <asp:Label ID="reference_address1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="reference_address" runat="server" class="form-control col-sm-6" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>
                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Referee Phone</label> <asp:Label ID="reference_phone1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
        <asp:TextBox ID="reference_phone" runat="server" class="form-control col-sm-4" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Username</label> <asp:Label ID="user_name1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="user_name" runat="server" class="form-control col-sm-3" 
        name="field1" value="" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Password</label> <asp:Label ID="password1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
       <asp:TextBox ID="password" runat="server" class="form-control col-sm-3" name="field1" 
        value="" TextMode="Password" ></asp:TextBox>
       </div>
     </div>

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Confirm Password</label> <asp:Label ID="confirm_password1" runat="server" Text="" Style=" color: blue;" ></asp:Label>
       <div class="col-sm-10">
     <asp:TextBox ID="confirm_password" runat="server" class="form-control col-sm-3" name="field1" 
        value="" TextMode="Password" ></asp:TextBox>
       </div>
     </div>
    

                             <div class="form-group row">
      <label for="name" class="control-label col-md-2">Terms and Conditions</label>
       <div class="col-sm-10">
      <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine"  style=" color: window; background-color: deeppink; font-weight: bold; font-size: 13px;" class="form-control"
        ReadOnly="True" > 
Registration is free


The minimum age for job applicants is 18 years

Application/Registration does not constitute a job offer, nor does it imply that a position is available
          
Job applications remain active unless the applicant asks to have it withdrawn
          
Jobseekers fully understand that false information may be grounds for not hiring or for immediate termination of employment at any point in the future if hired. He/She authorizes the verification of any or all information listed in the portal by TruPurpose Job Shop and/or prospective employers
          
Job seekers are advised to choose jobs relevant to their qualifications and/or experience to avoid being disqualified from Job Placement
          
In consideration of TruPurpose Job Shop Limited and its affiliates providing job placement service, the applicant will be required to sign an agreement to pay a prescribed processing/job placement service fee from his/her first salary only. Employers must be willing to implement the agreement and details of this agreement will be sent to employers to effect the necessary deduction from the employee’s first salary after the Applicant is employed
          
Our service is free for schools and hospitals but other Employers/Recruiters may be required to pay a Search Fee. The amount will be agreed upon before Applicant Search from our database
          
TruPurpose Job Shop will only conduct background checks based on written request by the employer and after the payment of the prescribed Background Check fee
          
In conducting background checks, TruPurpose Job Shop Limited and its affiliates will only verify the information supplied by applicants as far as practicable, and issue relevant reports to the employers. Our background checks are for guidance only and should not be construed to mean that we are standing as a guarantor for the applicant. It is the responsibility of the employer to obtain suitable guarantors/referees as TruPurpose Job Shop Limited and its employees will not be liable nor responsible for any damages, losses, and/or liabilities suffered and/or incurred by the applicant in the future
          
Jobseekers and employers agree to keep TruPurpose Job Shop Limited, its affiliates, officers, employees and agents fully indemnified against any actual or contingent costs, expenses, charges, damages or liabilities incurred in relation to any actions or claims brought by any person or entity against TruPurpose Job Shop as a result of an actual or alleged breach by you of any law, regulation, by-law, ordinance or code of conduct or such other actions or claims brought as a consequence of your posting appearing on this site.
          

          </asp:TextBox>
       </div>
     </div>
                              
                              <asp:TextBox ID="TextBox2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
        <asp:TextBox ID="work_experience1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience3" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
        <asp:TextBox ID="category_general" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>


                             <div class="form-group row" style="float:none; margin:0 auto;">
      <label for="name" class="control-label col-md-2"></label>
       <div class="col-sm-10" style="float:none; margin:0 auto;">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" /> Accept<br/><br/>
       </div>
     </div>

                            <asp:TextBox ID="bl" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>

                            <div style="text-align: center;">
                             <asp:Button ID="Button1" runat="server" Text=" Preview in PDF " type="submit" value="Submit" class="btn btn-warning" OnClick="Button1_Click"  /> &nbsp;

           <asp:Button ID="Button2" runat="server" Text=" Confirm Registration " type="submit" value="Submit" class="btn btn-primary" OnClick="Button2_Click"   />
                                </div>
    						
                                </asp:Panel>

						</div>
						<!--<div class="col-md-12 col-lg-6">
							<img src="images/general/about.jpg" alt=""/>
						</div>-->
					</div>
					


				</div>
			</div>

                      <!--  <div class="form-group row">
      <label for="name" class="control-label col-md-2">First Name</label>
       <div class="col-md-8">
       <asp:TextBox ID="firstname" runat="server" class="form-control col-sm-7" required></asp:TextBox>
       </div>
     </div>

    <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password">
    </div>
  </div>-->
    



     </div>
     </div>
</asp:Content>
