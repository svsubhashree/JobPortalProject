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
<title>View Added Jobs</title>
<style>

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
	width: 10%;
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
</head>
<body>
	<h1>
		<strong><center>List of Jobs</center></strong>
	</h1>
	<hr>
	<form action="./getJobs?company=<%=request.getParameter("company")%>"
		method="get">
		<input type="text" id="company" name="company"
			value="<%=request.getParameter("company")%>" readonly
			style="display: none"> <input type="submit" value="Load">
	</form>
	<hr>
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width: 30%;"><b>Location</b></th>
			<th style="width: 30%;"><b>Functional Area</b></th>
			<th style="width: 30%;"><b>Job Post</b></th>
			<th style="width: 30%;"><b>Experience</b></th>
			<th style="width: 30%;"><b>Contact</b></th>
			<th style="width: 30%;"><b>Vacancies</b></th>
			<th style="width: 30%;"><b>Skills</b></th>
			<th style="width: 30%;"><b>Salary</b></th>
			<th style="width: 30%;"><b>Interview date</b></th>
			<th style="width: 30%;"><b>Interview time</b></th>
			<th style="width: 30%;"><b>Interview place</b></th>
		</tr>
		<%
		List<Job> list = (List<Job>) request.getAttribute("jobsList");
		if (list != null) {
			Iterator<Job> iter = list.iterator();
			while (iter.hasNext()) {
				Job j = iter.next();
		%>
		<tr>
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
		</tr>
		<%
		}
		}
		%>
	</table>
</body>
</html>