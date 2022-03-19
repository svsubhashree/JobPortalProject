<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New seeker registration</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

input[type=text], input[type=password] {
  width: 50%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
}

section#one {
	background-image:
		url("https://i.picsum.photos/id/1031/5446/3063.jpg?hmac=Zg0Vd3Bb7byzpvy-vv-fCffBW9EDp1coIbBFdEjeQWE");
	background-position: center;
	background-size: cover;
	color: #fff;
}

section {
	position: relative;
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

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

.cancelbtn, .signupbtn {
  float: left;
  width: 20%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}

.required:after {
    content:" *";
    color: red;
}
</style>
</head>
<body>

<section id ="one" >
<form id="regForm" action="./registerUser" method="post" modelAttribute="user" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email" class="required"><b>Email</b></label><br>
    <input type="text" placeholder="Enter Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  required><br>
    
    <label for="firstname" class="required"><b>First name</b></label><br>
    <input type="text" placeholder="Enter First Name" name="firstname" required><br>
    
    <label for="lastname" class="required"><b>Last name</b></label><br>
    <input type="text" placeholder="Enter Last Name" name="lastname" required><br>
    
    <label for="desiredusername" class="required"><b>Desired UserName</b></label><br>
    <input type="text" placeholder="Enter UserName" name="desiredusername" required><br>
    
    <label for="password" class="required"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="password" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>

    <label for="Gender" class="required"><b>Gender</b> </label>
    <input name="gender" type="radio" value="male" onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');"><b>Male&nbsp;&nbsp;&nbsp; 
    <input name="gender" type="radio" value="female" onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');"> Female
   <br><br>
    <label class="required"><b>Total experience</b></label>
    <select name="totalexp" required>
										<option value="">- Select -</option>
										<option value="0">0</option>
										<option value="1">1</option>

										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>

										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>

										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>

										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>

										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

										<option value="32">32</option>
										<option value="33">33</option>
										<option value="34">34</option>
										<option value="35">35</option>
										<option value="36">36</option>
										<option value="37">37</option>

										<option value="38">38</option>
										<option value="39">39</option>
										<option value="40">40</option>
										<option value="41">41</option>
										<option value="42">42</option>
										<option value="43">43</option>

										<option value="44">44</option>
										<option value="45">45</option>
										<option value="46">46</option>
										<option value="47">47</option>
										<option value="48">48</option>
										<option value="49">49</option>

										<option value="50">50</option>
								</select>&nbsp;Years <select name="totalexp" class="Form_fields"
									onFocus="hintEvent('WORK_EXP');"
									onBlur="hintEvent('WORK_EXP', 'HIDE');">
										<option value="">- Select -</option>
										<option value="00">0</option>
										<option value="01">1</option>
										<option value="02">2</option>

										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>

										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
								</select>&nbsp;Months<br><br>
    
    <label class="required"><b>Current / Preferred industry:</b> </label><div class="custom-select" style="width:200px;">
      <select name="jobprefer" size="8" id="industry"  multiple="multiple" required><option
											value=''>- Select -</option>
										<option value='Any'>Any</option>
										<option value='Devops'>Devops</option>
										<option value='Trainer'>Trainer</option>
										<option value='Developer'>Developer</option>
										<option value='Software Testing'>Software Testing</option>
										<option value='UI/Ux Designer'>UI/Ux Designer</option>
										<option value='FullStack Developer'>FullStack Developer</option>
										<option value='DB Admin'>DB Admin</option>
										<option value='Animator'>Animator</option>
										<option value='Other'>Other</option></select></div><br><br>
										
										
		<label for="keyskills" class="required"><b>KeySkills</b></label><br>
    <input type="text" placeholder="Enter Key Skills" name="keyskills"  required><br>
   
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
</section>

</body>
</html>
