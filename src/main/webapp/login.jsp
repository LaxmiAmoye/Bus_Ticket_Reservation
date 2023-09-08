<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
    <script src="./bootstrap/js/bootstrap.bundle.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=ADLaM+Display&family=Rock+Salt&display	=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital@1&display=swap" rel="stylesheet">
<title>Login Page</title>
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
	<section>
        <div class="container mt-4">
            <div class="row d-flex justify-content-end align-items-center">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-lg" style="border-radius: 1rem; width: 400px;">
                        <div class="card-body text-center">      
                            <div class="mb-md-3 mt-md-2 pb-3">      
                                <h2 class="fw-bold mb-2 text-uppercase header-name">Login</h2>
                                <p class="mb-3">Please enter your login and password!</p>
                                <form method="post" action="login" class="login-form">
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="mobile">Mobile Number</label>
                                        <input type="number" name="mobile" class="form-control login-input" placeholder="Enter your mobile number" required/>                      
                                    </div>
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" name="password" class="form-control login-input" placeholder="password" required/>                      
                                    </div>      
                              
                                    <button class="btn btn-outline-danger btn-lg px-5 mb-2 gradient-custom-4" type="submit">Login</button>
                                </form>
                                <div class="d-flex justify-content-evenly text-center mt-2 pt-2">
                                    <a href="https://www.facebook.com" class="text-primary"><i class="bi bi-facebook"></i></a>
                                    <a href="https://www.twitter.com" class="text-bg-primary" style="border-radius: 50%;"><i class="bi bi-twitter"></i></a>
                                    <a href="https://www.youtube.com" class="text-danger"><i class="bi bi-youtube"></i></a>
                                    <a href="https://www.instagram.com" class="text-bg-danger" style="border-radius: 20%;"><i class="bi bi-instagram"></i></a>
                                    <a href="https://www.linkedin.com" class="text-primary"><i class="bi bi-linkedin"></i></a>
                                </div>      
                            </div>      
                            <div>
                                <p class="mb-0">Don't have an account? <a href="register.jsp" class="fw-bold">Sign Up</a>
                                </p>
                            </div>      
                        </div>
                    </div>
                </div>
            </div>
        </div>	
    </section>
</body>
</html>