<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="bootstrap/js/bootstrap.bundle.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=ADLaM+Display&family=Rock+Salt&display	=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital@1&display=swap" rel="stylesheet">
<title>Registration</title>
<style type="text/css">
	*{
    	padding: 0;
    	margin: 0;
    	box-sizing: border-box;
	}
	body{
    	font-family: 'Josefin Sans', sans-serif;
    	background-image: url(./images/bus-login.avif);
    	background-repeat: no-repeat;
    	background-position: center;
    	background-size: cover;
	} 
	.header-name{
		font-family: 'ADLaM Display', cursive;
	}
	.login-form{
    	text-align: center;
	}
	.login-input{
    	border-radius: 50px;
	}
</style>
</head>
<body>
	<!-- SignUp Page -->
    <section>
  		<div class="d-flex align-items-center">
    		<div class="container mt-3">
      			<div class="row d-flex justify-content-end align-items-center">
        			<div class="col-12 col-md-9 col-lg-7 col-xl-6">
          				<div class="card shadow-lg" style="border-radius: 15px;">
            				<div class="card-body">
              					<h4 class="text-uppercase text-center mb-3 header-name">Create an account</h4>
              					<form method="post" action="register" class="login-form">
                					<div class="form-outline mb-2">
                    					<label class="form-label" for="fullname">Full Name</label>
                    					<input type="text" name="fullname" class="form-control login-input" placeholder="Enter your Full Name" required/>                  
                					</div>
                					<div class="form-outline mb-2">
                    					<label class="form-label" for="email">Email</label>
                    					<input type="email" name="email" class="form-control login-input" placeholder="Enter your Email" required/>        
                					</div>
                					<div class="form-outline mb-2">
                    					<label class="form-label" for="mobile">Mobile Number</label>
                    					<input type="number" name="mobile" class="form-control login-input" placeholder="mobile number" min="0" required/>                    
                  					</div>
                					<div class="form-outline mb-2">
                    					<label class="form-label" for="password">Password</label>
                    					<input type="password" name="password" class="form-control login-input" placeholder="password" required/>                  
                					</div>
                					<div class="d-flex justify-content-center"> 
                						<button class="btn btn-outline-danger btn-lg px-5 mb-2 gradient-custom-4" type="submit">Register</button>                 
                					</div>
                					<p class="text-center mt-3 mb-0">Have already an account? <a href="login.jsp"
                    					class="fw-bold text-primary">Login here</a></p>
              					</form>
            				</div>
          				</div>
        			</div>
      			</div>
    		</div>
  		</div>
	</section> 
</body>
</html>