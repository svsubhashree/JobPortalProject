<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Company - HOME</title>
<link rel="shortcut icon"
	href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">JobPortal</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="ViewAddedJobs.jsp?company=${username}">Jobs</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="CompanyLogin.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="AddJobs.jsp?company=${username}">Add Job</a>
				</p>
				<p>
					<a href="">Remove Job</a>
				</p>
				<p>
					<a href="ViewApplications.jsp?company=${username}">View Job
						Application</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<h1>Welcome ${username} !</h1>
				<hr>
				<h3>INDIAN ECONOMY - IT Business Latest News 2022</h3>
				<br>
				<p>
				<ol>
					<li><a
						href="https://www.business-standard.com/article/companies/indian-it-players-to-hire-360-000-freshers-for-fy22-unearthinsight-study-122021700904_1.html">
							Indian IT Players To Hire 360,000 Freshers For FY22:
							Unearthinsight Study</a></li>
					<br>
					<li><a
						href="https://www.business-standard.com/article/companies/indian-it-crosses-200-bn-revenue-mark-hits-227-bn-in-fy22-nasscom-122021500828_1.html">
							Indian IT Crosses $200-Bn Revenue Mark, Hits $227 Bn In FY22:
							Nasscom</a></li>
					<br>
					<li><a
						href="https://www.business-standard.com/article/companies/indian-it-revenues-grow-fastest-in-a-decade-to-227-bn-in-pandemic-hit-fy22-122021500665_1.html">
							Indian IT Revenues Grow Fastest In A Decade To $227 Bn In
							Pandemic-Hit FY22</a></li>
					<br>
					<li><a
						href="https://www.business-standard.com/article/companies/global-it-spending-to-reach-4-5-trillion-in-2022-says-gartner-report-122011900982_1.html">
							Global IT Spending To Reach $4.5 Trillion In 2022, Says Gartner
							Report</a></li>
					<br>
				</ol>
				</p>
			</div>
			<div class="col-sm-2 sidenav"></div>
			<p>
				<strong>${message}</strong>
			</p>
		</div>
	</div>
</body>
</html>
