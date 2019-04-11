<jsp:include page="Header.jsp"/>
<link rel="stylesheet" href="css/SignUp.css"/>

<div class="login-wrap">
		<div class="login-html">
		<div class="box">
		<label for="tab-2" class="tab">Sign Up</label>
	<div class="login-form">
		<div class="sign-up-htm">

		<form action="User" method="post">
			<div class="group">
			<label for="email" class="label">Email Id</label>
			<input id="email" type="email" class="input" name="email">
			</div>
			<div class="group">
			<label for="pwd" class="label">Password</label>
			<input id="pwd" type="password" class="input" data-type="password" name="pwd">
			</div>
			<div class="group">
		<label for="fname" class="label">First Name</label>
		<input id="fname" type="text" class="input" name="fName">
		</div>
		
		<div class="group">
		<label for="lname" class="label">Last Name</label>
		<input id="lname" type="text" class="input" name="lName">
		</div>
		
		<div class="group">
		<label for="gender" class="label">Gender</label>
		<input id="gender" type="text" class="input" name="gender">
		</div>
		
		<div class="group">
		<label for="dob" class="label">Date of Birth</label>
		<input id="dob" type="text" class="input" name="dob">
		</div>
		<div class="group">
		<input type="submit" class="button" value="Sign Up">
		</div>
			<div class="hr"></div>
			<div class="foot-lnk">
			<a style="margin-top:-30px;" href="Login.jsp">Already Member?</a>	
			</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div style="margin-bottom:25px">
	</div>
<jsp:include page="Footer.jsp"/>	