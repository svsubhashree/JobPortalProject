<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Job Applications</title>
<style >

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

input[type=submit]{
	position:relative;
	background-color: #33adff;
	cursor: pointer;
	color: #1a1a1a;
	font-weight: bold;
	height: 10%;
}

#rejectBtn {
	background-color: #ff6666;
	width: 100%;
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
 
h4 {
  position: absolute;
  bottom: 10px;
  left: 550px;
}

</style>

</head>
<body>
<h1><strong><center>Job applications</center></strong></h1>
	<form action="./getJobApplications?company=<%=request.getParameter("company")%>" method="get" >
	<input type="text" id="company" name="company" value="<%= request.getParameter("company")%>" readonly style="display:none">
	<input type="submit" value="Load" style="width: 10%">
	</form>
	<hr>
	<table border="1" width="500" align="center" id="myTable">
		<tr class="header">
			<th style="width:10%;"><b>Post</b></th>
			<th style="width:10%;"><b>Name</b></th>
			<th style="width:10%;"><b>Email</b></th>
			<th style="width:10%;"><b>Contact</b></th>
			<th style="width:10%;"><b>Expected CTC</b></th>
			<th style="width:10%;"><b>Interview availability</b></th>
			<th style="width:10%;"><b>Relevant experience</b></th>
			<th style="width:10%;"><b>Matched skills</b></th>
			<th style="width:10%;"><b>Total experience</b></th>
			<th style="width:10%;"><b>KeySkills</b></th>
			<th style="width:10%;"><b>Status</b></th>
			<th style="width:10%;"><b>Action</b></th>
		</tr>
		<%
			
		List<HashMap<String, String>> jobApplicationsList = (List<HashMap<String, String>>)request.getAttribute("applicationsList");
 			if(jobApplicationsList != null) {
				Iterator<HashMap<String, String>> iter = jobApplicationsList.iterator();
				while(iter.hasNext()){
					HashMap<String, String> applicationsMap = iter.next();
		%>
		<tr>
			<td><%=applicationsMap.get("post")%></td>
			<td><%=applicationsMap.get("name")%></td>
			<td><%=applicationsMap.get("email")%></td>
			<td><%=applicationsMap.get("contact")%></td>
			<td><%=applicationsMap.get("expectedctc")%></td>
			<td><%=applicationsMap.get("availability")%></td>
			<td><%=applicationsMap.get("relevantexp")%></td>
			<td><%=applicationsMap.get("skillsmatched")%></td>
			<td><%=applicationsMap.get("totalexp")%></td>
			<td><%=applicationsMap.get("keyskills")%></td>
			<td><%=applicationsMap.get("applicationstatus")%></td>
			<td>
			<form action="./updateJobStatus?jobid=<%=applicationsMap.get("jobid")%>&company=<%=applicationsMap.get("company")%>&post=<%=applicationsMap.get("post")%>&name=<%=applicationsMap.get("name")%>&status=Approved" method="get">
			<input type="text" id="jobid" name="jobid" value="<%=applicationsMap.get("jobid")%>" readonly style="display:none">
			<input type="text" id="company" name="company" value="<%=applicationsMap.get("company")%>" readonly style="display:none">
			<input type="text" id="post" name="post" value="<%=applicationsMap.get("post")%>" readonly style="display:none">
			<input type="text" id="name" name="name" value="<%=applicationsMap.get("name")%>" readonly style="display:none">
			<input type="text" id="status" name="status" value="Approved" readonly style="display:none">			
			<input type="submit" value="Approve"></form><br>
			<form action="./updateJobStatus?jobid=<%=applicationsMap.get("jobid")%>&company=<%=applicationsMap.get("company")%>&post=<%=applicationsMap.get("post")%>&name=<%=applicationsMap.get("name")%>&status=Rejected" method="get">
			<input type="text" id="jobid" name="jobid" value="<%=applicationsMap.get("jobid")%>" readonly style="display:none">
			<input type="text" id="company" name="company" value="<%=applicationsMap.get("company")%>" readonly style="display:none">
			<input type="text" id="post" name="post" value="<%=applicationsMap.get("post")%>" readonly style="display:none">
			<input type="text" id="name" name="name" value="<%=applicationsMap.get("name")%>" readonly style="display:none">
			<input type="text" id="status" name="status" value="Rejected" readonly style="display:none">	
			<input type="submit" value="Reject" id="rejectBtn"></form>
			</td>
		</tr>
		<%}}%>
	</table>
	<br><br>
	<h4><strong><center>${message}</center></strong></h4>
</body>
</html>