<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="UserHeader.jsp"/>
<link rel="stylesheet" href="css/SignUp.css"/>

<c:if test="${not empty msg}">
<div class="alert alert-warning">
	 ${msg} 
	
</div>
</c:if>

<div class="login-wrap">
		<div class="login-html">
		<div class="box">
		<label for="tab-2" class="tab">Update Profile</label>
	<div class="login-form">
		<div class="sign-up-htm">

		<form action="updateUser" method="post">
			<div class="group">
			<label for="email" class="label">Email Id</label>
			<input id="email" type="email" class="input" name="email" value="${sessionScope.user1.email}" readonly="readonly">
			</div>
			<div class="group">
		<label for="fname" class="label">First Name</label>
		<input id="fname" type="text" class="input" name="fName" value="${sessionScope.user1.firstName}">
		</div>
		
		<div class="group">
		<label for="lname" class="label">Last Name</label>
		<input id="lname" type="text" class="input" name="lName" value="${sessionScope.user1.lastName}">
		</div>
		
		<div class="group">
		<label for="gender" class="label">Gender</label>
		<input id="gender" type="text" class="input" name="gender" value="${sessionScope.user1.gender}">
		</div>
		
		<div class="group">
		<label for="dob" class="label">Date of Birth</label>
		<input id="dob" type="text" class="input" name="dob" value="${sessionScope.user1.dateOfBirth }">
		</div>
		<div class="group">
		<input type="submit" class="button" value="Update">
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