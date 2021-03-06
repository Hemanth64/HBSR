<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>HBSR_Login</title>


<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
	
	

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="resources/styles/style1.css">
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>


<body>

<div class="container">
	<jsp:include page="include/title.jsp" />

<nav class="navbar navbar-expand-sm bg-light">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index">Home</a>
    </li>
   
  </ul>
</nav>
<br>

	<div class="login-container">
		<div class="login-card">
			<div class="login-form">
				<c:url var="loginUrl" value="/login" />
				<form action="${loginUrl}" method="post" class="form-horizontal">

					<div
						class="login-wrap customscroll d-flex align-items-center flex-wrap justify-content-center pd-20">
						<div class="login-box bg-white box-shadow pd-30 border-radius-5">
							<img src="resources/images/login-img.png" alt="login"
								class="login-img">
							<h2 class="text-center mb-30">Login</h2>
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>Logged-out successfully.</p>
								</div>
							</c:if>
							<div class="input-group custom input-group-lg">
								<input name="ssoId" type="text" class="form-control"
									placeholder="Username" />

								<div class="input-group-append custom">
									<span class="input-group-text"><i class="fa fa-user"
										aria-hidden="true"></i></span>
								</div>
							</div>
							<div class="input-group custom input-group-lg">
								<input name="password" type="password" class="form-control"
									placeholder="**********" />

								<div class="input-group-append custom">
									<span class="input-group-text"><i class="fa fa-lock"
										aria-hidden="true"></i></span>
								</div>
							</div>
						<!-- 	<label><input type="checkbox" id="rememberme"
								name="remember-me"> Remember Me</label> -->
							<div class="row">
								<div class="col-sm-6">
									<div class="input-group">


										<input class="btn btn-outline-primary btn-lg btn-block"
											type="submit" value="Sign In">



									</div>
								</div>
								<div class="col-sm-6">
									<div class="forgot-password padding-top-10">
										<a href="/HBSR/register">Register</a>

									</div>

								</div>


							</div>


						</div>
						
							<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}" />

					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	</div>

</body>
<script src="resources/scripts/Hbsr_Registration.js"></script>
<script src="resources/scripts/script.js"></script>
</html>