<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="R1.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS files/AdRegistration.css">
<title>Admin Registration</title>
</head>
<body>


	<nav class=" fixed-top ">
		<div class="header upbar" id="topheader"style="background: rgba(127, 91, 91, 0.3);">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand nav-item" href="#">
				<h1>Cosmos Library</h1>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="Home.html"
							style="color: black;">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="About_us.html"
							style="color: black;">About</a></li>
						<li class="nav-item"><a class="nav-link"
							href="Home.html#category" style="color: black;">Books</a></li>
						<li class="nav-item"><a class="nav-link" href="#adlogin"
							style="color: black;">Login</a></li>
						<li class="nav-item"><a class="nav-link"
							href="AdRegistration.jsp" style="color: black;">Register</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	


	<section class="vh-100" style="background-color: #ffffff;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Admin
										Register</p>


									<form class="mx-1 mx-md-4" action="AdRegistrationController"
										method="post">


										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Your
													Email</label> <input type="email" id="form3Example1c" name="adMail"
													class="form-control" required>

											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Your
													Name</label> <input type="text" id="form3Example3c" name="adName"
													class="form-control" required>

											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Mobile
													Number</label> <input type="number" id="form3Example3c"
													name="adMob" class="form-control" required>

											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-key fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4cd">Admin
													ID</label> <input type="number" id="form3Example4cd" name="adId"
													class="form-control" required>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Password</label>
												<input type="password" id="form3Example4c" name="adPass"
													class="form-control" required> <input
													type="checkbox" onclick="myFunction()"> Show
												Password
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-key fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4cd">Confirm
													password</label> <input type="password" id="form3Example4cd"
													class="form-control" required>
											</div>
										</div>

										<div class="form-check d-flex justify-content-xl-start mb-5">
											<input class="form-check-input me-2" type="checkbox" value=""
												id="form2Example3c" required> <label
												class="form-check-label" for="form2Example3"> I
												agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
											</label>
										</div>

										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">

											<input type="submit" class="btn btn-primary btn-lg"
												value="submit"></input>
										</div>
									</form>

									<label class="form-check-label" for="form2Example3">
										For Admin Login<a href="#adlogin" class="text-body"> <u>Click Here</u></a>
									</label>


								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img src="./undraw_account_re_o7id.svg" class="img-fluid"
										alt="Sample image">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
	</section>



	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="footer my-footer" id="adlogin">
		<div class="d-flex justify-content-around">
			<div class="p-2">
				<center>
					<img src="./call-center-agent.png" class="center" width="50"
						height="50">
				</center>
				<br>
				<center>
					<p>
						<b>DEDICATED HELP CENTER</b><br>Call us +91 9420348535 |
						8:00AM-10:30PM
					</p>
				</center>
			</div>
			<div class="p-2">
				<center>
					<img src="./protection.png" class="payment" width="50" height="50">
				</center>
				<br>
				<center>
					<p>
						<b>100% SAFE & SECURE PAYMENTS</b><br>Pay using secure
						payment methods
					</p>
				</center>
			</div>
			<div class="p-2">
				<center>
					<img src="./download.png" class="app" width="50" height="50">
				</center>
				<br>
				<center>
					<p>
						<b>SHOP ON THE GO</b><br>Download mobile app
					</p>
				</center>
			</div>
		</div>

		<br> <br> <br>

		<div class="row">
			<div class="col-sm-2">
				<img src="./open-book (1).png" class="center" alt="logo"
					style="width: 200px; height: 200px;">
			</div>
			<div class="col-sm-2" >
        <p><a style="color: black" href="">OUR STORY</a><br><br><a style="color: black" href="">OUR PRODUCTS</a><br><br><a style="color: black" href="">FOUNDER'S STORY</a><br><br><a style="color: black" href="">CUSTOM ORDERS</a><br><br></p>
      </div>
      <div class="col-sm-2" >
        <p><a style="color: black" href="">FAQs</a><br><br><a style="color: black" href="">CAREERS</a><br><br><a style="color: black" href="">PRIVACY POLICY</a><br><br><a style="color: black" href="">DISCLAIMER</a><br><br></p>
      </div>
			<div class="col-sm-2">
				<p>
				<h5>
					<img src="./telephone.png" alt="Call" width="30" height="30">
					+91 9420348535</span>
				</h5>
				</p>
				<p>
				<h5>
					<img src="./gmail.png" alt="Mail" mail.png width="30" height="30">
					cosmoslib@gmail.in</span>
				</h5>
				</p>
				<img src="./facebook.png" width="40" height="40">&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="./instagram.png" width="40" height="40">&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="./linkedin.png" width="40" height="40">
			</div>
			
			<div class="col-sm-4">
				<p>Admin Login</p>
				
				  <form action="AdLoginController" method="post">
					
					<input class="transIp" type="email" id="Username"
						placeholder="Enter your email.." name="AdMail" maxlength="52"
						size="50"  Name="AdMail"  required><br> <br> </b> 
						
						<input class="transIp" type="password" id="Password"
						placeholder="Password" name="AdPass" maxlength="52" size="50" Name="AdPass"
						required><br> </b> <br> 
						
						<input type="submit"
						class="button button5" value="submit"></input>
						<a href="AdRegistration.jsp" style="color: black">click here to register</a>
				</form>
			
			</div>
		</div>
	</div>
	</div>

</body>
</html>