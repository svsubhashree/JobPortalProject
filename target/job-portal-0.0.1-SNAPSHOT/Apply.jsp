<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.job.portal.seeker.model.User"%>
<%-- <%@page import="com.niit.JobBean.Job"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Page</title>
</head>
<style>
body {font-family: Calibri, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

input {
	padding: 15px;
	margin: 8px 0;
	border-radius: 5px;
}

/* Full-width input fields */
input[type=text] {
  width: 50%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #e6ffff;
}

#company,#post {
background-color:  #cccccc;
 outline: none ! important;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.applybtn {
  background-color: #33adff;
	border: none;
	cursor: pointer;
	color: #1a1a1a;
	width: 25%;
}
input[type="submit"]:hover {
    background: rgb(254,193,81);
    background: -moz-linear-gradient(top,  rgba(254,193,81,1) 0%, rgba(254,231,154,1) 100%);
    background: -webkit-linear-gradient(top,  rgba(254,193,81,1) 0%,rgba(254,231,154,1) 100%);
    background: -o-linear-gradient(top,  rgba(254,193,81,1) 0%,rgba(254,231,154,1) 100%);
    background: -ms-linear-gradient(top,  rgba(254,193,81,1) 0%,rgba(254,231,154,1) 100%);
    background: linear-gradient(top,  rgba(254,193,81,1) 0%,rgba(254,231,154,1) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fec151', endColorstr='#fee79a',GradientType=0 );
  }
  
.registerbtn:hover {
  opacity:1;
}

@media screen and (max-width: 300px) {
.submitbtn {
     width: 100%;
  }
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

section#one {
	background-image:
		url("https://i.picsum.photos/id/366/4000/3000.jpg?hmac=zphhHOH9ofToN2jNHd8z-nc98NrBd8y2okWXEXetLDg");
	background-position: center;
	background-size: cover;
	color: #ffffff;
}

section {
	position: relative;
	min-height: 100vh;
	padding: 2em 3em;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-size: 1.25rem;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.required:after {
    content:" *";
    color: red;
}

</style>

<body>
<section id ="one" >
<div>
<h1><strong><center>Apply Job</center></strong></h1>
    <hr>
    </div>
<form action="./applyJob" method="post" modelAttribute = "application">
  <div class="container">
    
    <input type="text" id="jobid" name="jobid" value="<%= request.getParameter("jobId")%>" style="display: none;"><br>
  
    <label><b>Company</b></label><br>
    <input type="text" id="company" name="company"  value="<%= request.getParameter("company")%>" readonly><br>
    
     <label><b>Job Post</b></label><br>
    <input type="text" id="post" name="post" value="<%= request.getParameter("post")%>" readonly><br>
    
    <label for="email" class="required"><b>Email</b></label><br>
    <input type="text" name="email" placeholder="Enter email" required ><br>

    <label class="required"><b>Full Name</b></label><br>
    <input type="text" name="name" placeholder="Enter Full name " required ><br>

     <label class="required"><b>Total Experience</b></label><br>
    <input type="text" name="experience" placeholder="Enter total yrs of exp "  required ><br>
    
    <label class="required"><b>Skills Matched</b></label><br>
    <input type="text" name="skills"  placeholder="Enter skills matched " required ><br>

    <label class="required" ><b>Mobile Number</b></label><br>
    <input type="txt" name="contact" placeholder="Enter Mobile.No " required><br>
    
    <label class="required"><b>Expected CTC</b></label><br>
    <input type="txt" name="ectc" placeholder="Enter expected CTC" required><br>
    
     <label for="availability"><b>Available for interview on specified date and time</b></label>
    <input name="availability" type="radio" value="Yes"><b>Yes</b>&nbsp;&nbsp;&nbsp; 
    <input name="availability" type="radio" value="No"><b>No</b>
   <br><br>
    
    <input type="submit" class="applybtn"><br>
  </div>
</form>
</section>
</body>
</html>