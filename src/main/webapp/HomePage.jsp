<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Job Portal</title>
<link rel="shortcut icon"
	href="http://www.iconarchive.com/download/i47277/avosoft/warm-toolbar/user.ico">
<style>
@import
	url("https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900")
	;

*, ::before, ::after {
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0.5em 0.5em 0.5em 0;
	height: 100vh;
	overflow: hidden;
	font-family: 'Montserrat', sans-serif;
	font-size: 62.5%;
	color: #fff;
	background-color: #1d1e22;
}

::-webkit-scrollbar {
	width: 8px;
	height: 6px;
}

::-webkit-scrollbar-track {
	background-color: #1d1e22;
}

::-webkit-scrollbar-thumb {
	border-radius: 1em;
	background-color: #b3b3b3;
}

::-webkit-scrollbar-thumb:hover {
	background-color: #df2359;
}

a {
	text-decoration: none;
	color: #fff;
}

a:hover {
	color: #df2359;
}

h1, h2, header a {
	text-transform: uppercase;
}

.smooth {
	margin: 0 auto;
	height: 100%;
	overflow-x: hidden;
	overflow-y: scroll;
	scroll-behavior: smooth;
}

header, footer {
	position: relative;
	padding: 2em 3em;
	display: flex;
	align-items: center;
	font-size: 1rem;
}

header {
	position: -webkit-sticky;
	position: sticky;
	top: 0;
	z-index: 2;
	height: 10vh;
	background-color: #1d1e22;
}

header h3 {
	position: relative;
	margin: 0;
	font-size: 2rem;
	color: #df2359;
}

header ul {
	list-style-type: none;
	padding: 0;
	margin: 1em 0;
	display: flex;
	width: 100%;
	justify-content: flex-end;
	align-items: center;
}

header ul li {
	position: relative;
	margin: 0 1em;
	transition: all 0.2s linear;
}

header ul li a {
	font-weight: 500;
	color: #fff;
}

header ul li::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

header ul li:hover::before {
	width: 100%;
	background-color: #df2359;
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
	background-color: #191a1d;
}

section:nth-child(odd) {
	background-color: #1d1e22;
}

section#one {
	background-image:
		url("https://www.snapphotography.co.nz/wp-content/uploads/New-Zealand-Landscape-Photography-prints-26.jpg");
	background-position: center;
	background-size: cover;
	color: #fff;
}

section#one::after {
	position: absolute;
	content: '';
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-image: linear-gradient(0deg, rgba(29, 30, 34, 0.3), #1d1e22);
}

section#two .blocks, section#four .blocks {
	padding: 2em 0;
	display: flex;
	width: 100%;
	flex-flow: row wrap;
	justify-content: space-around;
	align-items: center;
}

section#two .blocks .block, section#four .blocks .block {
	margin: 0 auto;
	display: flex;
	width: 23%;
	height: 150px;
	justify-content: center;
	align-items: center;
	border-radius: 1em;
	background-color: #191a1d;
	transition: transform 0.2s linear;
}

section#two .blocks .block:hover, section#four .blocks .block:hover {
	transform: translateY(-10px);
}

section#four .blocks .block {
	padding: 0.25em 1em;
	width: 49%;
	height: auto;
	flex-flow: column wrap;
	background-color: #191a1d;
}

section#four .dots {
	margin-top: 1em;
	display: flex;
	width: 25%;
	align-items: center;
	justify-content: space-around;
}

section#four .dot {
	width: 12px;
	height: 12px;
	cursor: pointer;
	border-radius: 50%;
	background-color: #fff;
}

section#four .dot:hover {
	background-color: #df2359;
}

section h2 span {
	color: #df2359;
}

.content {
	position: relative;
	z-index: 1;
	display: flex;
	align-items: center;
}

.content h1 {
	position: relative;
	font-size: 3rem;
}

.content h1::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 10%;
	height: 2px;
	background-color: #fff;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

.content p.lead {
	font-size: 1.25rem;
}

.content .blur {
	position: relative;
	overflow: hidden;
	margin: auto;
	padding: 1em;
	width: 100%;
	height: 350px;
	border-radius: 0.35em;
}

.content .blur::before {
	position: absolute;
	content: '';
	top: -25%;
	left: -25%;
	width: 150%;
	height: 150%;
	box-shadow: inset 0 0 0 600px rgba(255, 255, 255, 0.3);
	filter: blur(10px);
}

form {
	position: relative;
	z-index: 3;
	padding: 1em;
	display: flex;
	width: 100%;
	height: 100%;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
	border: 2px solid #fff;
	border-radius: 0.35em;
}

form img {
	width: 64px;
	height: 64px;
}

form input {
	margin-bottom: 1em;
	min-height: 3em;
	font-size: 1em;
	color: #fff;
	border: 0;
	border-bottom: 2px solid #fff;
	background: none;
}

form input::placeholder {
	position: relative;
	top: 0;
	color: inherit;
	transition: all 0.2s linear;
}

form input:focus {
	outline: none;
}

form input:focus::placeholder {
	top: -1.25em;
	font-size: 0.825rem;
}

form .button {
	position: relative;
	margin-top: 1em;
	padding: 1em 3em;
	text-transform: uppercase;
	display: block;
	font-size: 1rem;
	cursor: pointer;
	color: #fff;
	border: 0;
	border-radius: 0.35em;
	background-color: #df2359;
}

form .button:hover {
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

footer {
	padding-bottom: 1em;
	width: 100%;
	min-height: 35vh;
	flex-direction: column;
	justify-content: space-around;
	background-color: #191a1d;
}

footer h3 {
	position: relative;
}

footer h3::before {
	position: absolute;
	content: '';
	top: calc(100% + 4px);
	left: 0;
	width: 20px;
	height: 2px;
	background-color: #df2359;
	transform-origin: 0 100%;
	transform: rotate(-5deg);
	transition: all 0.2s ease-out;
}

footer h5 {
	text-transform: uppercase;
}

footer h5.follow {
	color: #df2359;
}

footer ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

footer ul li {
	line-height: 1.5;
	transition: transform 200ms ease-in;
	will-change: transform;
}

footer ul li:hover {
	transform: translateX(5px);
}

footer .widgets, footer .copy {
	display: flex;
	width: 100%;
	justify-content: space-between;
	align-items: center;
}

footer .widgets .widget, footer .copy .widget {
	display: flex;
	flex-direction: column;
	align-items: center;
}

footer .copy {
	margin-top: 1em;
	border-top: 2px solid #666;
}

footer .copy p {
	margin: 0.75em 0 0;
}

footer .copy span {
	position: relative;
	display: inline-block;
	color: #df2359;
	animation: hearts 0.6s cubic-bezier(0.18, 0.89, 0.29, 1.05) infinite;
}

@media ( max-width : 991px) {
	.blur {
		display: none;
	}
	.content {
		text-align: center;
	}
	.content h1::before {
		display: none;
	}
}
</style>
</head>
<body>


	<div class="smooth">
		<header>
			<h3>JobPortal</h3>
			<ul>
				<li><a href="#one">Home</a></li>
				<li><a href="#two">About Us</a></li>
				<li><a href="CompanyLogin.jsp">Company Login</a></li>
				<li><a href="NewRegister.jsp">Job Seeker Registration</a></li>
				<li><a href="#bottom">Contact US</a></li>
			</ul>
		</header>
		<section id="one">
			<div class="content">
				<div>
					<h1>
						<span> Job Seekers</span>
					</h1>
					<p class="lead">Technology has changed the way job seekers
						search for jobs and employers find qualified employees. While
						employers still advertise job openings through traditional
						advertising mediums, such as local newspapers and magazines, today
						employers and job seekers turn to online job portals to find
						employment matches. Job seekers can advertise their skills and
						search for available positions, and employers can announce
						employment openings through job portals such as Monster, Career
						Builders and USA Jobs, for federal government positions.</p>
				</div>
				<div class="blur">
					<form action="./validateUser" method="get" modelAttribute="login">
						<img
							src="data:image/png;base64,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"
							alt="Avatar" class="avatar"> <input type="text"
							placeholder="Email:" name="email" /> <input type="password"
							placeholder="Password:" name="password" /> <input class="button"
							type="submit" value="Login" />
					</form>

				</div>
			</div>
		</section>
		<section id="two">
			<h2>
				<span> About Us</span>
			</h2>
			<p>
				<strong>WHO WE ARE</strong><br>JobPortal is a global online
				employment solution for people seeking jobs and the employers who
				need great people. We've been doing this for more than 20 years, and
				have expanded from our roots as a "job board" to a global provider
				of a full array of job seeking, career management, recruitment and
				talent management products and services. At the heart of our success
				and our future is innovation: We are changing the way people think
				about work, and we're helping them actively improve their lives and
				their workforce performance with new technology, tools and practices
			</p>
			<div class="blocks">
				<div class="block">
					<p>JobPortal Announces 2021 Best Companies for Veterans List</p>
				</div>
				<div class="block">
					<p>JobPortal Strengthens Staffing Leadership Team Ahead of
						Staffing World 2021</p>
				</div>
				<div class="block">
					<p>JobPortal Announces Subhashree as Chief Technology Officer</p>
				</div>
				<div class="block">
					<p>JobPortal returns to HR Tech to preview new and improved
						offerings</p>
				</div>
			</div>
			<p>
				WHY JOBPORTAL?<br> We've designed an integrated approach that
				focuses our more innovative technology and expertise into powerful,
				easy to use solutions. Why? To help you find not only the best
				quality candidates, but more of them. To streamline the process so
				you can save time and money. And to help you make smarter decisions
				to improve your return on investment. Basically, we want to give you
				the ability to hire like no one else can.
			</p>
		</section>
		<section id="three">
			<h2>
				<span> Services</span>
			</h2>
			<p>
				Jobs by Skill-Call Center Jobs | Mechanical Engineering Jobs |
				Biotechnology Jobs | Nursing Jobs | BPO Jobs | Networking Jobs | MBA
				Jobs | Java Jobs | SEO Jobs | SAP Jobs<br> Jobs by
				Location-Jobs in Delhi | Jobs in Bangalore | Jobs in Mumbai | Jobs
				in Chennai | Jobs in Hyderabad | Jobs in Kolkata | Jobs in Pune |
				Jobs in Chandigarh | Jobs in Lucknow | Jobs in Coimbatore<br>
				Jobs by Function-Banking Jobs | Biotech Jobs | Airlines Jobs | HR
				Jobs | Accounts Jobs | Supply Chain Jobs | Legal Jobs | Marketing
				Jobs | Telecom Jobs | Hotels Jobs<br> Jobs by Industry-IT Jobs
				| Pharmaceuticals Jobs | Travel Jobs | Oil and Gas Jobs | FMCG Jobs
				| Construction Jobs | Chemicals Jobs | Media Jobs | Retailing Jobs |
				PR Jobs<br> Career Courses-Technology Courses | Management
				Courses | Accounting Courses | Marketing Courses | Law & Security
				Courses | Quality Testing Courses | Recruitment Course<br>
				Career Center-Career Management Tips | Interview Tips | Work Life
				Balanace Tips | Resume Cover & Letters | Salary Negotiation | How to
				Job Search | Career Tips for Women | How to Save Tax<br> Govt.
				Jobs-Teaching Jobs | Defence Jobs | Bank Jobs | Railway Jobs | UPSC
				Jobs | SSC Jobs | Law Jobs | Engineering Jobs | Post Graduate Jobs |
				Ph.D Jobs<br> Career Services-Xpress Resume+ | Right Resume |
				Career Booster | Resume Highlighter<br> All Jobs-Walkin Jobs |
				Contract Jobs | Placement Jobs | Jobs for Women | Startup Jobs |
				International Jobs
			</p>
		</section>

		<footer id="bottom">
			<div class="widgets">
				<h3>JOB PORTAL</h3>
				<div class="widget">
					<h5 class="follow">Follow me</h5>
					<ul>
						<li><a href="" target="blank">Facebook</a></li>
						<li><a href="" target="blank">Instagram</a></li>
						<li><a href="" target="blank">Twitter</a></li>
						<li><a
							href="https://github.com/svsubhashree?tab=repositories"
							target="blank">GitHub</a></li>
					</ul>
				</div>
				<div class="widget">
					<h5>Toll Free</h5>
					<ul>
						1-800-4915555
						</li>
						<li>
						<li>+91-40-55115511</li>

					</ul>
				</div>
				<div class="widget">
					<h5>Mail-Id</h5>
					<ul>
						<li>info@JobPortal.com</li>
						<li>report@JobPortal.com</li>
						<li>contact@JobPortal.com</li>
						<li>complain@JobPortal.com</li>
					</ul>
				</div>
				<div class="widget">
					<h5>Beware of Fraudsters:</h5>
					<ul>
						<li>JobPortal does not authorize any agency/partner<br>
							to collect fees against job offers.
						</li>
						<li>Report any suspicious activity to</li>
						<li>info@JobPortal.com</li>
						<li>spam@JobPortal.com</li>
					</ul>
				</div>
			</div>
			<div class="copy">
				<p>
					&copy; 2022 with <span>&#9829;</span> <a
						href="https://github.com/svsubhashree?tab=repositories"
						target="_blank">Subhashree</a>
				</p>
				<a href="#one">Scroll top &#x2191;</a>
			</div>
		</footer>
	</div>
</body>
</html>