<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Evigilants-Login</title>


<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Images/icons/evi.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Views/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/util.css">
	<link rel="stylesheet" type="text/css" href="Views/login.css">
<!--===============================================================================================-->


</head>
<body>

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Images/evi.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action = "AdminLogin" method = "POST">
					

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	<!--===============================================================================================-->	
	<script src="components/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="components/popper.js"></script>
	<script src="components/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="components/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="components/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="components/login.js"></script>
	



</body>
</html>