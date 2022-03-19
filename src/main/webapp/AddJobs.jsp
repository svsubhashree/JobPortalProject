<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

input {
	padding: 15px;
	margin: 8px 0;
	border-radius: 5px;
}

input[type=text] {
  width: 65%; 
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #e6ffff;
}

#company {
background-color:  #cccccc;
outline: none ! important;
}

input[type=submit] {
	background-color: #33adff;
	border: none;
	cursor: pointer;
	color: #1a1a1a;
	width: 25%;
}

input[type=date] , input[type=time] {
width: 25%;
} 

@media screen and (max-width: 300px) {
.submitbtn {
     width: 100%;
  }
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


.container {
  padding: 16px;
}

section#one {
	background-image:
		url("https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ");
	background-position: center;
	background-size: cover;
	color: #ffffff;
}

section {
	position: relative;
	display: flex;
	min-height: 100vh;
	padding: 2em 3em;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-size: 1rem;
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
</head>
<body>
<section id ="one" >
        <div>
            <h2><strong><center>FILL UP THE FORM TO POST JOB</center></strong></h2>
            <hr/>
        </div>
        
        <form action="./addJob?company=${username}"  method="post" modelAttribute = "job">
            <div class="container">
             <label for="company"><b>Company</b></label><br>
           	 <input type="text" id="company" name="company" value="<%= request.getParameter("company")%>" readonly><br>
            
                <label for="location" class="required"><b>Location</b></label>
                <select name="location" style="width: 200px" required><option>
								- Select -</option>
							<option>DELHI</option>
							<option>BENGALURU</option>
							<option>CHENNAI</option>
							<option>COIMBATORE</option>
							<option>GURGAON</option>
							<option>HYDERABAD</option>
							<option>MUMBAI</option>
							<option>KOLKATA</option>
							<option>PUNE</option>
							<option>NOIDA</option>
							<option>KANPUR</option> 
							<option>OTHER(REMOTE)</option></select>             
          
                <label for="functionalarea" class="required"><b>Functional Area</b></label>
                <select name="functionalarea" style="width: 200px" id="industry" required><option>- Select -</option>
						<option>Training</option>
						<option>Development</option>
						<option>Testing</option>
						<option>BPO</option>
						<option>DevOps</option>
						<option>Analyst</option>
						</select>

                <label for="post" class="required"><b>Job Post</b></label>
				<select name="post" style="width: 200px" required><option>-
							Select -</option>
						<option>Java/C/C++/.NET/Python Trainer</option>
						<option>Software Developer</option>
						<option>Tester</option>
						<option>Data Analyst</option>
						<option>Business Analyst</option>
						<option>Support Engineer</option>
						<option>Project Manager</option>
						<option>HR</option>
						<option>IT Professional</option></select>
						<br><br>
				 <label for="experience" class="required"><b>Total Experience required</b></label>
				<select name="experience" style="width: 200px" required><option>-
							Select -</option>
						<option>0-2</option>
						<option>3-6</option>
						<option>7-9</option>
						<option>10-12</option>
						<option>12-15</option>
						<option>Above 15</option></select>
						<br><br>
                <label for="contact" class="required"><b>Contact:</b></label><br>
                <input type="tel" name="contact" placeholder="+91xxxxxxxxxx" required><br><br>
			
                <label for="vacancy"><b>Vacancy:</b></label><br>
                <input type="text" name="vacancy" placeholder="enter no. of vacancies"><br><br>

                <label for="skills" class="required"><b>Skills Required</b></label><br>
                <input type="text" name="skills" placeholder="Enter skills required" required><br><br>

                <label for="salary"><b>Salary</b></label><br>
                <input type="text" name="salary" ><br><br>

                <label for="interviewdate" class="required"><b>Interview Date</b></label><br>
				<input type="date" name="interviewdate">
				<br><br>
                <label for="interviewtime" class="required"><b>Interview Time</b></label><br>
                <input type="time" name="interviewtime"><br><br>
               
                <label for="interviewplace" class="required"><b>Interview Place</b></label><br>
                <input type="text" name="interviewplace"><br><br>
			   
                <input type="submit" class="submitbtn" value="Submit" />
            </div>
        </form>
        </section>
</body>
</html>