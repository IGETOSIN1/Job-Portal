<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Study-Abroad.aspx.cs" Inherits="Web_Trupurpose.Study_Abroad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <h2> Overseas student Placement</h2>

<h3>We recruit students for some Universities in Republic of Benin and Cyprus.</h3>

<h4>STUDY IN BENIN REPUBLIC OR CYPRUS</h4>

<div>
<img src="images/c1.jpg" style="float: left; width:250px; height:220px; margin-left: 50px;">
    <img src="images/g1.jpeg" style="float: right; width:250px; height:220px; margin-right: 50px;">
    
</div>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>

<h5 style=" margin-bottom: 2px;">About Benin Republic</h5>
Benin is a West African country officially known as the Republic of Benin. Benin borders Nigeria to the east, Burkina Faso and Niger to the north, and Togo to the west. The country has a small coastal area on the Bight of Benin, where most of the population resides. Its capital is Porto-Novo, but Cotonou, the largest city, is the government seat.To Study in Benin Republic involves Just O’level Result and Tuition Fee is more affordable compared to private universities in Nigeria.<br/>
<br/>
<div>
<img src="images/c2.jpg" style="float: left; width:250px; height:220px; margin-left: 50px;">
    <img src="images/g2.jpg" style="float: right; width:250px; height:220px; margin-right: 50px;">
    
</div>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>


<h5 style=" margin-bottom: 2px;">About Cyprus</h5>
Cyprus is a country island with exquisite beauty and a remarkably rich past. Thousands of tourists visit Cyprus every year during the summer to enjoy the warmth of the ample sunshine and the healing, rejuvenating power of the crystal-clear Cypriot seas.Different universities in Cyprus are offering multiple courses at affordable fees.Student will get world class degree recognized around the world, no matter you want to work in Europe, Middle East or elsewhere.
<br/><b>Admission Requirements</b>
<ul>
<li>(a)  5 credits O'level Onlne or Certificate (WAEC, NECO or NABTEB)</li>
<li>(b)  O'level scratch card details to check result online by the university</li>
<li>(c)  Data-page of International Passport or Ecowas passport</li>
<li>(d). Birth Certificate</li>
    </ul>



Are you interested in any University in the two countries i.e. Benin Republic or Cyprus? Please complete the form below to enable our Client Service Officer get in touch with you:<br/><br/>

    <div style="margin: auto; width: 50%;">
        <asp:Label ID="result" runat="server" style=" color: deeppink;"></asp:Label><br/>
    <label for="field1"><span>First Name <span class="required">*</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="first_name" runat="server" class="input-field" 
        name="field1" value="" Width="200px"></asp:TextBox></label> <br/><br/>

        <label for="field1"><span>Last Name <span class="required">*</span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="last_name" runat="server" class="input-field" 
        name="field1" value="" Width="200px"></asp:TextBox></label> <br/><br/>

    <label for="field4"><span>Gender</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="gender" 
        runat="server" name="field4" class="select-field" Width="100px" Height="26px">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList></label><br/><br/>

     <label for="field1"><span>Age <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="age" runat="server" class="input-field" 
        name="field1" value="" Width="100px" TextMode="Number"></asp:TextBox></label><br/><br/>

        <label for="field1"><span>Date of Birth <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="date_of_birth" runat="server" class="input-field" 
        name="field1" value="" TextMode="Date"></asp:TextBox></label> <br/><br/>

     <label for="field1"><span>Email <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="email" runat="server" class="input-field" 
        name="field1" value="" Width="200px" TextMode="Email"></asp:TextBox></label><br/><br/>

     <label for="field1"><span>Phone <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="phone" runat="server" class="input-field" 
        name="field1" value="" TextMode="Phone"></asp:TextBox></label><br/><br/>

    <label for="field1"><span>Course <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="course" runat="server" name="field4" 
        class="select-field" Width="300px" Height="26px">
       <asp:ListItem> Available Programmes in Benin Republic.</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Management Sciences</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Sc. Business Administration & Management</asp:ListItem>
         <asp:ListItem>  - B.Sc. Accounting & Finance</asp:ListItem>
         <asp:ListItem>  - B.Sc. Banking & Finance</asp:ListItem>
          <asp:ListItem> - B.Sc. Marketing</asp:ListItem>
          <asp:ListItem> - B.Sc. Human Resource Management</asp:ListItem>
          <asp:ListItem> - B.Sc. Transport & Logistics Management</asp:ListItem>
              <asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Social Sciences</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Sc. International Relations & Diplomacy</asp:ListItem>
          <asp:ListItem> - B.Sc. Political Science</asp:ListItem>
          <asp:ListItem> - B.Sc. Economics</asp:ListItem>
          <asp:ListItem> - B.Sc. Agricultural Economics</asp:ListItem>
          <asp:ListItem> - B.Sc. Public Administration</asp:ListItem>
          <asp:ListItem> - B.Sc. Sociology</asp:ListItem>
          <asp:ListItem> - B.Sc. Mass Communication</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Environmental Sciences</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Sc. Estate Management</asp:ListItem>
          <asp:ListItem> - B.Sc. Project Management</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Education</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Edu. Biology Education</asp:ListItem>
          <asp:ListItem> - B.Edu. Chemistry Education</asp:ListItem>
          <asp:ListItem> - B.Edu. Computer Education</asp:ListItem>
          <asp:ListItem> - B.Edu. Mathematics Education</asp:ListItem>
          <asp:ListItem> - B.Edu. French Education</asp:ListItem>
          <asp:ListItem> - B.Edu. Early Adult Education</asp:ListItem>
           <asp:ListItem>- B.Edu. Curriculum Education</asp:ListItem>
           <asp:ListItem>- B.Edu. Adult Education</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Arts</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Sc. Communication Arts</asp:ListItem>
              <asp:ListItem></asp:ListItem>
<asp:ListItem>Faculty of Pure & Applied Science</asp:ListItem>
    <asp:ListItem></asp:ListItem>
          <asp:ListItem> - B.Sc. Computer Science </asp:ListItem>
          <asp:ListItem> - B.Sc. Computer Engineering</asp:ListItem>
          <asp:ListItem> - B.Sc. Management Information Technology</asp:ListItem>
          <asp:ListItem> - B.Sc. Agronomy</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Others</asp:ListItem>
	<asp:ListItem>- Pharmacy</asp:ListItem>
	<asp:ListItem>- Law</asp:ListItem>
	<asp:ListItem>- International Relations  </asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>Available programmes in Cyprus</asp:ListItem>
        <asp:ListItem></asp:ListItem>
<asp:ListItem>•		Political Science and Public Administration</asp:ListItem>
<asp:ListItem>•		International Relation</asp:ListItem>
<asp:ListItem>•		Emergency Aid and Disaster Management</asp:ListItem>
<asp:ListItem>•		Emergency Aid and Disaster Management (Turkish)</asp:ListItem>
<asp:ListItem>•		Health Care Management</asp:ListItem>
<asp:ListItem>•		Nutrition and Dietetics</asp:ListItem>
<asp:ListItem>•		Occupational Therapy</asp:ListItem>
<asp:ListItem>•		Automotive Engineering</asp:ListItem>
<asp:ListItem>•		Civil Engineering</asp:ListItem>
<asp:ListItem>•		Computer Engineering</asp:ListItem>
<asp:ListItem>•		Computer Engineering (Turkish)</asp:ListItem>
<asp:ListItem>•		Electrical-Electronics Engineering</asp:ListItem>
<asp:ListItem>•		Electrical-Electronics Engineering (Turkish)</asp:ListItem>
<asp:ListItem>•		Energy Systems Engineering</asp:ListItem>
<asp:ListItem>•		Industrial Engineering</asp:ListItem>
<asp:ListItem>•		Mechanical Engineering</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>•		Digital Marketing and Social Media (Turkish)</asp:ListItem>
<asp:ListItem>•		Journalism and Broadcasting</asp:ListItem>
<asp:ListItem>•		Public Relations</asp:ListItem>
<asp:ListItem>•		Radio, Television & Cinema</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>•		Chinese Language & Literature (Chinese)</asp:ListItem>
<asp:ListItem>•		English Language & Literature</asp:ListItem>
<asp:ListItem>•		Psychology</asp:ListItem>
<asp:ListItem>•		Psychology (Turkish)</asp:ListItem>
<asp:ListItem>•		Translation & Interpreting (Turkish – English)</asp:ListItem>
<asp:ListItem>•		Turkish Language and Literature (Turkish)</asp:ListItem>
<asp:ListItem>•		American Culture and Literature</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>•		Common Law</asp:ListItem>
<asp:ListItem>•		Law (Turkish)</asp:ListItem>
<asp:ListItem></asp:ListItem>
<asp:ListItem>•		Accounting</asp:ListItem>
<asp:ListItem>•		Banking and Finance</asp:ListItem>
<asp:ListItem>•		Business Management</asp:ListItem>
<asp:ListItem>•		Business Management (Turkish)</asp:ListItem>
<asp:ListItem>•		Economics</asp:ListItem>
<asp:ListItem>•		International Business Management</asp:ListItem>
<asp:ListItem>•		Management Information Systems</asp:ListItem>
<asp:ListItem>•		Marketing</asp:ListItem>
    <asp:ListItem></asp:ListItem>
<asp:ListItem>•		Pharmacy</asp:ListItem>
<asp:ListItem></asp:ListItem>	
<asp:ListItem>•		Computer and Instructional Technology Teaching</asp:ListItem>
<asp:ListItem>•		Early Childhood Education (Pre School Teaching) (Turkish)</asp:ListItem>
<asp:ListItem>•		English Language Teaching</asp:ListItem>
<asp:ListItem>•		Music Education (Turkish)</asp:ListItem>
<asp:ListItem>•		Primary School Teaching (Turkish)</asp:ListItem>
<asp:ListItem>•		Psychological Counseling and Guidance (Turkish)</asp:ListItem>
<asp:ListItem>•		Special Education Teaching (Mentally Disabled) (Turkish)</asp:ListItem>
<asp:ListItem>•		Turkish Language and Literature Teaching (Turkish)</asp:ListItem>
<asp:ListItem>•		Turkish Teaching (Turkish)</asp:ListItem>
<asp:ListItem></asp:ListItem>	
<asp:ListItem>•		Architecture</asp:ListItem>
<asp:ListItem>•		Architecture (Turkish)</asp:ListItem>
<asp:ListItem>•		Graphic Design</asp:ListItem>
<asp:ListItem>•		Interior Architecture</asp:ListItem>
<asp:ListItem>•		Interior Architecture (Turkish)</asp:ListItem>
<asp:ListItem>•		Plastic Arts</asp:ListItem>
<asp:ListItem>•		Visual Arts (Painting)</asp:ListItem>
        </asp:DropDownList></label><br/><br/>

     <label for="field1"><span>Country <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="country" runat="server" name="field4" 
        class="select-field" Width="300px" Height="26px">
      <asp:ListItem>  •	Benin Republic</asp:ListItem>
      <asp:ListItem>•	Cyprus</asp:ListItem>
        </asp:DropDownList></label><br/><br/>

     <label for="field1"><span>Study Type <span class="required">*</span></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="type" runat="server" name="field4" 
        class="select-field" Width="300px" Height="26px">
         <asp:ListItem>•	B.Sc </asp:ListItem> 
         <asp:ListItem> •	M.Sc</asp:ListItem>		  		
         <asp:ListItem>•	Ph.D</asp:ListItem>
        </asp:DropDownList></label><br/><br/>

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" 
        Text=" Submit Enquiry " type="submit" value="Submit" 
        style=" color: Window; background-color: deeppink; height: 36px; font-family: 'Trebuchet MS';" OnClick="Button2_Click" />
        <br/><br/>
        </div>


</asp:Content>
