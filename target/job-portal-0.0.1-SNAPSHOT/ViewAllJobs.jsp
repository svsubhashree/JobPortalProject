<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.job.portal.recruiter.model.Job"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Jobs</title>
<style>
#myInput {
	background-image: url('https://img.icons8.com/color/search');
	/* Add a search icon to input */
	background-repeat: no-repeat; /* Do not repeat the icon image */
	width: 95%;
	font-size: 16px; /* Increase font-size */
	padding: 12px 20px 12px 40px; /* Add some padding */
	border: 1px solid #ddd; /* Add a grey border */
	margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
	border-collapse: collapse; /* Collapse borders */
	width: 100%; /* Full-width */
	border: 1px solid #ddd; /* Add a grey border */
	font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
	text-align: left; /* Left-align text */
	padding: 12px; /* Add padding */
}

#myTable tr {
	/* Add a bottom border to all table rows */
	border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
	/* Add a grey background color to the table header and on hover */
	background-color: #f1f1f1;
}

input[type=submit] {
	position: relative;
	background-color: #33adff;
	cursor: pointer;
	color: #1a1a1a;
	font-weight: bold;
	height: 10%;
}

input[type="submit"]:hover {
	background: rgb(254, 193, 81);
	background: -moz-linear-gradient(top, rgba(254, 193, 81, 1) 0%,
		rgba(254, 231, 154, 1) 100%);
	background: -webkit-linear-gradient(top, rgba(254, 193, 81, 1) 0%,
		rgba(254, 231, 154, 1) 100%);
	background: -o-linear-gradient(top, rgba(254, 193, 81, 1) 0%,
		rgba(254, 231, 154, 1) 100%);
	background: -ms-linear-gradient(top, rgba(254, 193, 81, 1) 0%,
		rgba(254, 231, 154, 1) 100%);
	background: linear-gradient(top, rgba(254, 193, 81, 1) 0%,
		rgba(254, 231, 154, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fec151',
		endColorstr='#fee79a', GradientType=0);
}
</style>
<script>
	function myFunction() {
		// Declare variables 
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");

		// Loop through all table rows, and hide those who don't match the search query
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[7];
			if (td) {
				txtValue = td.textContent || td.innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}

	function select() {
	}
</script>
</head>
<body>
	<h1>
		<strong><center>List of all Jobs</center></strong>
	</h1>


	<input type="text" id="myInput" onkeyup="myFunction()"
		placeholder="Search for Skills..">
	<form action="./getAllJobs" method="get">
		<input type="submit" value="Load" style="width: 10%">
	</form>
	<hr>
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width: 10%;"><b>Company</b></th>
			<th style="width: 10%;"><b>Location</b></th>
			<th style="width: 10%;"><b>Functional Area</b></th>
			<th style="width: 10%;"><b>Job Post</b></th>
			<th style="width: 10%;"><b>Experience</b></th>
			<th style="width: 10%;"><b>Contact</b></th>
			<th style="width: 10%;"><b>Vacancies</b></th>
			<th style="width: 10%;"><b>Skills</b></th>
			<th style="width: 10%;"><b>Salary</b></th>
			<th style="width: 10%;"><b>Interview date</b></th>
			<th style="width: 10%;"><b>Interview time</b></th>
			<th style="width: 10%;"><b>Interview place</b></th>
			<th style="width: 10%;"><b>Action</b></th>
		</tr>
		<%
		List<Job> list = (List<Job>) request.getAttribute("allJobsList");
		if (list != null) {
			Iterator<Job> iter = list.iterator();
			while (iter.hasNext()) {
				Job j = iter.next();
		%>
		<tr>
			<td><%=j.getCompany()%></td>
			<td><%=j.getLocation()%></td>
			<td><%=j.getFunctionalarea()%></td>
			<td><%=j.getPost()%></td>
			<td><%=j.getExperience()%></td>
			<td><%=j.getContact()%></td>
			<td><%=j.getVacancy()%></td>
			<td><%=j.getSkills()%></td>
			<td><%=j.getSalary()%></td>
			<td><%=j.getInterviewdate()%></td>
			<td><%=j.getInterviewtime()%></td>
			<td><%=j.getInterviewplace()%></td>
			<td><a
				href="Apply.jsp?jobId=<%=j.getJobId()%>&company=<%=j.getCompany()%>&post=<%=j.getPost()%>">Apply</a></td>
		</tr>
		<%
		}
		}
		%>
	</table>
</body>
</html>