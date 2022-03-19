<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Company Registration</title>
<style>    
body {
	background: url("https://www.snapphotography.co.nz/wp-content/uploads/Commercial-architectural-photography-christchurch-09-800x508.jpg");
	background-size: cover;
}
#signup {
	padding-top: 20px;
}
h1, p {
	text-align: center;
	color: #ffffff;
}
h1 {
	font-family: 'Calibri', sans-serif;
	font-size: 40px;
	line-height: 10px;
}
p {
	font-family:'Calibri', sans-serif;
	font-size: 30px;
}
 #content {
    background: -moz-linear-gradient(top,  rgba(248,248,248,1) 0%, rgba(249,249,249,1) 100%);
    background: -o-linear-gradient(top,  rgba(248,248,248,1) 0%,rgba(249,249,249,1) 100%);
    background: -ms-linear-gradient(top,  rgba(248,248,248,1) 0%,rgba(249,249,249,1) 100%);
    background: linear-gradient(top,  rgba(248,248,248,1) 0%,rgba(249,249,249,1) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8f8f8', endColorstr='#f9f9f9',GradientType=0 );
    -webkit-box-shadow: 0 1px 0 #fff inset;
    -moz-box-shadow: 0 1px 0 #fff inset;
    -ms-box-shadow: 0 1px 0 #fff inset;
    -o-box-shadow: 0 1px 0 #fff inset;
    box-shadow: 0 1px 0 #fff inset;
    border: 1px solid #c4c6ca;
    margin: auto;
    padding: 25px 0 0;
    position: relative;
    text-align: center;
    text-shadow: 0 1px 0 #fff;
    width: 400px;
    border-radius: 10px; 
  }
  
form {
	width: 100%;
	display: inline-block;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 10px;
}
input {
	width: 75%;
	padding: 15px;
	margin: 8px 0;
	border-radius: 5px;
}
input[type=submit] {
	width: 50%;
	background-color: #33adff;
	border: none;
	cursor: pointer;
	color: #1a1a1a;
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

</style>
</head>
<body>

<div id="signup">
<h1>Company Registration</h1>
<p>Welcome</p>
<section id = "content">
<div id="container">
	<form action="./registerCompanyUser" method="post" modelAttribute="company">
			<input type="email" placeholder="E-mail Id" name="email" required><br />
			<input type="text" placeholder="Company" name="companyname"   required><br />
			<input type="text" placeholder="Web-Address" name="webaddress" required><br />
			<input type="password" placeholder="Password" name="password" required><br />
			<input type="submit" value="Submit">
	</form>
</div>
</section>
</div>
</body>
</html>