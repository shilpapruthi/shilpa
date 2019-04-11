<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="UserHeader.jsp"/>

<c:if test="${not empty msg}">
<div class="alert alert-warning">
	 ${msg} 
</div>
</c:if>

<link rel="stylesheet" href="css/login.css"/>
<div class="login-wrap">
		<div class="login-html">
		<div class="box">
		<label for="tab-1" class="tab">Change Password</label>
	<div class="login-form">
		<div class="sign-in-htm">
		<form action="UserChangePassword" method="post">
			<div class="group">
			<label for="npass" class="label">New Password</label>
			<input id="npass" type="password" class="input" name="npwd" data-type="password" required/>
			</div>
				<div class="group">
				<label for="cpass" class="label">Confirm Password</label>
			<input id="cpass" type="password" class="input" name="cpwd" data-type="password" required/>
				</div>
			<div class="group">
			<input type="submit" class="button" value="Submit"/>
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