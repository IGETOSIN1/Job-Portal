<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applicantregister1.aspx.cs" Inherits="Web_Trupurpose_New.applicantregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<link href="old/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="old/css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="old/css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
</head>
<body>
    <form id="form1" runat="server">
        
      
        <div class="banner_1" style="height: 294px; background-image:url(images/main-slider/slide1.PNG);">
	<div class="container">
		
   </div>
</div>


<asp:Panel ID="Panel1" runat="server" style="">

	<div class="container">
        <br/>
     <div class="form-style-2-heading">   <h1 style="text-align: center; color: cornflowerblue">Job Seeker Registration Form</h1></div>

<div class="form-style-2" style="width: 600px; height: auto; float:left;">
 <asp:Label ID="result_output" runat="server" style=" color: deeppink;"></asp:Label>

<label for="field4"><span>Title</span> <asp:DropDownList ID="title" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Ms</asp:ListItem>
        <asp:ListItem>Dr</asp:ListItem>
        <asp:ListItem>Chief</asp:ListItem>
    </asp:DropDownList></label>

<label for="field1"><span>First Name <span class="required">*</span></span> 
    <asp:TextBox ID="first_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Last Name <span class="required">*</span></span> 
    <asp:TextBox ID="last_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Date of Birth <span class="required">*</span></span> 
     <asp:DropDownList ID="day_birth" runat="server" name="field4" 
        class="select-field" Width="60px">
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
        class="select-field" Width="70px">
        <asp:ListItem>Month</asp:ListItem>
        <asp:ListItem>01</asp:ListItem>
        <asp:ListItem>02</asp:ListItem>
<asp:ListItem>03</asp:ListItem>
<asp:ListItem>04</asp:ListItem>
<asp:ListItem>05</asp:ListItem>
<asp:ListItem>06</asp:ListItem>
<asp:ListItem>07</asp:ListItem>
<asp:ListItem>08</asp:ListItem>
<asp:ListItem>09</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
         &nbsp;<asp:DropDownList ID="year_birth" runat="server" name="field4" 
        class="select-field" Width="80px">        
        </asp:DropDownList>
        </label> 

        <label for="field4"><span>Marital Status</span> 
    <asp:DropDownList ID="marital_status" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Single</asp:ListItem>
        <asp:ListItem>Married</asp:ListItem>
        <asp:ListItem>Divorce</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Religion</span> 
    <asp:DropDownList ID="religion" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Christianity</asp:ListItem>
        <asp:ListItem>Islamic</asp:ListItem>
    </asp:DropDownList></label>

        <label for="field1"><span>Residential Address <span class="required">*</span></span> 
    <asp:TextBox ID="residential_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Postal Address <span class="required">*</span></span> 
    <asp:TextBox ID="postal_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

        <label for="field1"><span>Email <span class="required">*</span></span> 
    <asp:TextBox ID="email" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 

       
        <label for="field1"><span>Highest Acad. Qualification  <span class="required">*</span></span>
    <asp:DropDownList ID="first_acad_qualification" runat="server" name="field4" 
        class="select-field" Width="120px">
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
      </asp:DropDownList> &nbsp;&nbsp; 
    <asp:DropDownList ID="first_acad_qualification_course" runat="server" name="field4" 
        class="select-field" Width="140px">
        <asp:ListItem>Course of Study</asp:ListItem>
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
         &nbsp;&nbsp;<asp:TextBox ID="first_acad_qualification_year" runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
        </label>
        

        
        <label for="field1"><span>Academic Qualification 2 <span class="required">*</span></span> 
        <asp:DropDownList ID="second_acad_qualification" runat="server" name="field4" class="select-field" style=" width:120px;">
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
    </asp:DropDownList>
     &nbsp;&nbsp; <asp:DropDownList ID="second_acad_qualification_course" 
        runat="server" name="field4" 
        class="select-field" Width="140px">
        <asp:ListItem>Course of Study</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Agriculture</asp:ListItem>
         <asp:ListItem></asp:ListItem>
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
         &nbsp;&nbsp;<asp:TextBox ID="second_acad_qualification_year" 
        runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
    </label>

    
    <label for="field1"><span>Academic Qualification 3 <span class="required">*</span></span> 
        <asp:DropDownList ID="third_acad_qualification" runat="server" name="field4" class="select-field" style=" width:120px;">
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
    </asp:DropDownList>
     &nbsp;&nbsp; <asp:DropDownList ID="third_acad_qualification_course" 
        runat="server" name="field4" 
        class="select-field" Width="140px">
         <asp:ListItem>Course of Study</asp:ListItem>
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
         &nbsp;&nbsp;<asp:TextBox ID="third_acad_qualification_year" runat="server" class="input-field" 
        name="field1" value="" placeholder="Year" style=" width: 80px;"></asp:TextBox>
        </label> 

        <label for="field1"><span>Professional Qualification <span class="required">*</span></span> 
    <asp:TextBox ID="first_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="1st Qual. with Year" style=" width: 114px;"></asp:TextBox>&nbsp;&nbsp;
         
        <asp:TextBox ID="second_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="2nd Qual. with Year"  style=" width: 114px;"></asp:TextBox>&nbsp;&nbsp;

        <asp:TextBox ID="third_prof_qualification" runat="server" class="input-field" 
        name="field1" value="" placeholder="3rd Qual. with Year"  style=" width: 114px;"></asp:TextBox>
 
        </label> 

       <!-- <label for="field1"><span>If Subject Teacher(Enter Subject(s)) <span class="required">*</span></span> 
    <asp:TextBox ID="discipline" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> -->

<label for="field4"><span>Means of Identification</span> 
    <asp:DropDownList ID="means_of_identification" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>National ID Card</asp:ListItem>
        <asp:ListItem>Voter's Card</asp:ListItem>
        <asp:ListItem>Driving License</asp:ListItem>
        <asp:ListItem>International Passport</asp:ListItem>
    </asp:DropDownList></label>

 <label for="field1"><span>ID Number <span class="required">*</span></span> 
    <asp:TextBox ID="id_number" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>

     <label for="field1"><span>Salary Expectation <span class="required">*</span></span> 
    <asp:TextBox ID="salary_expectation" runat="server" class="input-field" 
        name="field1" value=""></asp:TextBox></label>

        <span >Job Category</span><br/>
            <asp:TextBox ID="category_general" runat="server" Visible="false"></asp:TextBox>
    
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="job_corporate" runat="server" /> Corporate </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="job_general" runat="server" /> General </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="job_medical" runat="server" /> Medical </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="job_Teaching" runat="server" /> Teaching </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="job_others" runat="server" /> Others </font>
   
    
    <br/><br/>
    
    
    <span >Other Skills(Computer Packages well familiar with) -> Tick as appropriate</span><br/>
            <asp:TextBox ID="other_skills" runat="server" Visible="false"></asp:TextBox>
    
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_word" runat="server" /> Microsoft Word </font>
   <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_excel" runat="server" /> Microsoft Excell </font>
   <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;"><asp:CheckBox ID="skill_microsoft_access" runat="server" /> Microsoft Access </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="skill_corel_draw" runat="server" /> Corel Draw </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;"><asp:CheckBox ID="skill_adobe_photoshop" runat="server" /> Adobe Photoshop </font>
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px; margin-left: 10px;"><asp:CheckBox ID="skill_print_artist" runat="server" /> Print Artist </font>
   
    <font style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-top: 9px;margin-left: 10px;">  <asp:TextBox ID="skill_others" runat="server" placeholder="Others (Please Specify)"></asp:TextBox> </font>
   
    
    
    
    <br/> <br/><br/> <br/><br/>
       
      <font style=" font-size: 14px; color: deeppink; font-weight: bold;"> Terms and Conditions</font><br/>
     <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine"  style=" color: window; background-color: deeppink; font-weight: bold; font-size: 13px; width: 900px;" 
        ReadOnly="True" > 
Registration is free

The age requirement for applicants is 18 years and above

Application/Registration does not constitute a job offer, nor does it imply that a position is available

Job application remains active unless the applicant asks to have it withdrawn.
 
Job seekers fully understand that false information may be grounds for not hiring or for immediate termination of employment at any point in the future if hired. He/She authorizes the verification of any or all information listed in the portal by TruPurpose Job Shop and/or prospective employer 

Job seekers are advised to choose Jobs relevant to their qualifications and/or experience to avoid being disqualified from Job Placement

In consideration of TruPurpose Job Shop and its affiliates providing job placement service, the applicant will be required to sign an agreement to pay prescribed processing/job placement service fee from his first salary only. The Employer must be willing to implement the agreement and details will be forwarded to you to effect necessary deduction from his/her first salary after the Applicant is employed.

Our service is free for schools and hospitals but other Employers/Recruiters may be required to pay Search fee. The amount will be agreed before Applicant Search from our website/database

TruPurpose Job Shop will only conduct background checks based on written request by the employer and after payment of prescribed fee

In conducting background check, TruPurpose Job Shop and its affiliate will only verify information supplied by the applicants as far as practicable and issue relevant reports to the employers. Our background checks are for guidance only and should not be construed to mean that we are standing as guarantor to the applicant. It is the responsibility of the employer to obtain suitable guarantor and/referee as TruPurpose Job Shop and its employees will not be liable nor responsible for any damages, losses, and/or liabilities suffered and/or incurred by the applicant in future.

Job seekers and employers agree to keep Trupurpose Job Shop, its officers, employees and agents fully indemnified against any actual or contingent costs, expenses, charges, damages or liabilities incurred in relation to any actions or claims brought by any person or entity against Trupurpose Job Shop as a result of an actual or alleged breach by you of any law, regulation, by-law, ordinance or code of conduct or such other actions or claims brought as a consequence of your posting appearing on this site.
         </asp:TextBox>

         
            <p style=" font-family: Times New Roman; font-size: 14px; font-weight: bold; color: deeppink; margin-left: 300px; margin-top: 9px;"><asp:CheckBox ID="CheckBox1" runat="server" /> Accept </p>

       <asp:TextBox ID="bl" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>

         <label><span>&nbsp;</span>  <asp:Button ID="Button2" runat="server" 
        Text=" Confirm Registration " type="submit" value="Submit" 
        style=" margin-left: 500px; color: Window; background-color: deeppink; height: 36px;" OnClick="Button2_Click" 
        />    
        
       <!-- <asp:Button ID="Button9" runat="server" 
        Text=" Resend Verification Code " type="submit" value=" Resend Verification Code " 
        
            style=" margin-left: 10px; color: Window; background-color: midnightblue; height: 36px;"  Visible="False" />-->
         </label>
            
</div>





               








<div class="form-style-2" style=" height: auto; float: right; width:600px; ">

    <label for="field4"><span>Job Category</span> 
    <asp:DropDownList ID="job_full_part" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>Full Time</asp:ListItem>
        <asp:ListItem>Part Term</asp:ListItem>
        <asp:ListItem>Internship</asp:ListItem>
    </asp:DropDownList></label>

  <label for="field1" ><span>Phone <span class="required">*</span></span> 
    <asp:TextBox ID="phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone" style=" width: 130px;" 
        AutoPostBack="True"></asp:TextBox><font style=" color: deeppink;"><!--You Will Receive Verification Code on this Phone No.--></font></label> 
        


 <label for="field1"><span>Appintment Being Sought <span class="required">*</span></span> 
    <asp:DropDownList ID="first_appointment_being_sought" 
        runat="server" name="field4" class="select-field" 
        Width="114px">
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
    
    &nbsp;&nbsp; 
    <asp:DropDownList ID="second_appointment_being_sought" 
        runat="server" name="field4" class="select-field"  
        Width="114px">
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
         
        &nbsp;&nbsp;  
    <asp:DropDownList ID="third_appointment_being_sought" 
        runat="server" name="field4" class="select-field"  
        Width="114px">
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
          </label>     

     <label for="field1"><span>If Others(Specify)<span class="required"></span></span> 
    <asp:TextBox ID="if_others" runat="server" class="input-field" name="field1" value="" ></asp:TextBox></label> 

    <label for="field1"><span>If Subject Teacher(Specify)<span class="required"></span></span> 
    <asp:TextBox ID="if_others_subject_teacher" runat="server" class="input-field" name="field1" value="" ></asp:TextBox></label> 
        
        <label for="field4"><span>Preferred Job Location (1)</span> 
    <asp:DropDownList ID="location_first_choice" 
        runat="server" name="field4" class="select-field" >
        <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label> 

    <label for="field4"><span>Preferred Job Location (2)</span> 
    <asp:DropDownList ID="location_second_choice" 
        runat="server" name="field4" class="select-field" >
         <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label>

     <label for="field4"><span>Preferred Job Location (3)</span> 
    <asp:DropDownList ID="location_third_choice" 
        runat="server" name="field4" class="select-field" >
         <asp:ListItem>AGODI GATE - IWO ROAD AXIS</asp:ListItem>
        <asp:ListItem>ASHI - BASHORUN AXIS</asp:ListItem>
        <asp:ListItem>DUGBE - ONIREKE AXIS</asp:ListItem>
        <asp:ListItem>MOKOLA - BODIJA AXIS</asp:ListItem>
        <asp:ListItem>ODO ONA - APATA AXIS</asp:ListItem>
        <asp:ListItem>RING ROAD - CHALLENGE AXIS</asp:ListItem>
        <asp:ListItem>UI - OJOO AXIS</asp:ListItem>
        <asp:ListItem>OTHERS</asp:ListItem>
    </asp:DropDownList></label>
        
        <label for="field1"><span>Reference Name <span class="required">*</span></span> 
    <asp:TextBox ID="reference_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Address <span class="required">*</span></span> 
    <asp:TextBox ID="reference_address" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label> 
        
        <label for="field1"><span>Reference Phone <span class="required">*</span></span> 
    <asp:TextBox ID="reference_phone" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label>  

<label for="field1"><span>User Name <span class="required">*</span></span> 
    <asp:TextBox ID="user_name" runat="server" class="input-field" 
        name="field1" value="" ></asp:TextBox></label>         
   
<label for="field1"><span>Password <span class="required">*</span></span> 
    <asp:TextBox ID="password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" ></asp:TextBox></label>         

<label for="field1"><span>Confirm Password <span class="required">*</span></span> 
    <asp:TextBox ID="confirm_password" runat="server" class="input-field" name="field1" 
        value="" TextMode="Password" ></asp:TextBox></label>   
       
        
        <font style=" font-family: Times New Roman; font-size: 16px; color:deeppink;">Work Experience</font> <br/>
        <asp:TextBox ID="comp1" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Company & Location"></asp:TextBox>
        <asp:TextBox ID="duration1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Period of  Employment"></asp:TextBox>
        <asp:TextBox ID="positionheld1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox>
        <asp:TextBox ID="salary_range1" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary"></asp:TextBox>
         <br/><br/>

        <asp:TextBox ID="comp2" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Company & Location"></asp:TextBox>
        <asp:TextBox ID="duration2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Period of  Employment"></asp:TextBox>
        <asp:TextBox ID="positionheld2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox> 
          <asp:TextBox ID="salary_range2" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary"></asp:TextBox>
        <br/><br/>

        <asp:TextBox ID="comp3" runat="server" class="input-field" name="field1" value="" style=" width:150px;" placeholder="Company & Location"></asp:TextBox>
        <asp:TextBox ID="duration3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;"  placeholder="Period of  Employment"></asp:TextBox>
        <asp:TextBox ID="positionheld3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Position Held"></asp:TextBox>
          <asp:TextBox ID="salary_range3" runat="server" class="input-field" name="field1" value="" style=" width:100px; margin-left: 2px;" placeholder="Salary"></asp:TextBox>
         <br/><br/>

       

 <font style=" font-family: Times New Roman; font-size: 16px; color:deeppink;">Additional Work Experience</font> <br/>
    <asp:TextBox ID="work_experience" runat="server" name="field1" 
        class="input-field" Height="79px" TextMode="MultiLine" Width="463px" ForeColor="DeepPink"
          ></asp:TextBox>  

         <asp:TextBox ID="TextBox1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
        <asp:TextBox ID="work_experience1" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience2" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>
         <asp:TextBox ID="work_experience3" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;" Visible="False"></asp:TextBox>

        <!-- <label for="field1" style=" width: 600px;"><span>Enter Verification Code Received <span class="required">*</span></span>
    <asp:TextBox ID="v_code" runat="server" class="input-field" 
        name="field1" value="" style=" width: 100px;"></asp:TextBox> <font style=" color: deeppink;">Verification Code Sent to your Phone</font> </label>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>-->
    </div>

    <div></div>

</div>
       
        
        <br/><br/>
    </asp:Panel>
    </form>
</body>
</html>
