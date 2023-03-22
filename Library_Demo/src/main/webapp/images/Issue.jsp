<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="Issue.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>Issue-Book</title>
</head>
<body>

		<%
			String userMail=(String)session.getAttribute("userMail");
			if(userMail==null)
			{
				response.sendRedirect("Login.html");
			}
		%>

	<nav class=" fixed-top ">
		<div class="header upbar" id="topheader"
			style="background-color: #77FFFF">
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
						<li class="nav-item"><a class="nav-link"
							href="User-Home.jsp" style="color: black;">Home </span></a></li>
						<li class="nav-item"><a class="nav-link"
							href="About_us.html" style="color: black;">About</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="User-Home.jsp#category" style="color: black;">Books</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="Login.html" style="color: black;">Login</a>
						</li>
						<li class="nav-item"><a class="nav-link" href='Logout.jsp'
								style="color: black;">LogOut</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</nav>
	<br>
	<br>
	
	<form action="Payment_confirm.html" method="get">
		<section class="h-100 h-custom">
			<div class="container h-100 py-5">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">

						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" class="h5">
											<h2>Issue Your Books</h2>
										</th>
										<th scope="col">
											<h3>Format</h3>
										</th>
										<th scope="col">
											<h3>Quantity</h3>
										</th>
										<th scope="col">
											<h3>Price</h3>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">
											<div class="d-flex align-items-center">
												<img src="./book.png" class="img-fluid rounded-3"
													style="width: 120px;" alt="Book">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="flex-column ms-4">
													<p>
														<label class="form-label" for="typeText">Your
													Email</label> <input type="email" id="typeText" name="umail"
													class="form-control" placeholder="arpit@gmail.com" required>
													</p>

													<p>
														<label class="form-label" for="typeText">Enter
															Book ID</label> <input type="number" id="typeText" siez="4"
															placeholder="1234" minlength="4" maxlength="4"
															name="bookid" >
													</p>
													<p>
														<label class="form-label" for="typeText">Issue Date
															</label> <input type="date" id="typeText" siez="4"
															placeholder="1234" minlength="4" maxlength="4"
															name="issuedate" >
													</p>
												</div>
											</div>
										</th>
										<td class="align-middle">
											<p class="mb-0" style="font-weight: 500;">Digital</p>
										</td>
										<td class="align-middle">
											<div class="d-flex flex-row">
												<button class="btn btn-link px-2"
													onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
													<i class="fas fa-minus"></i>
												</button>

												<input id="form1" min="0" name="quantity" value="2"
													type="number" class="form-control form-control-sm"
													style="width: 50px;" />

												<button class="btn btn-link px-2"
													onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
													<i class="fas fa-plus"></i>
												</button>
											</div>
										</td>
										<td class="align-middle">
											<p class="mb-0" style="font-weight: 500;">Rs 60</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="card shadow-2-strong mb-5 mb-lg-0"
							style="border-radius: 16px;">
							<div class="card-body p-4">

								<div class="row">
									<div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
										<form>
											<div class="d-flex flex-row pb-3">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio"
														name="radioNoLabel" id="radioNoLabel1v" value=""
														aria-label="..." checked />
												</div>
												<div class="rounded border w-100 p-3">
													<p class="d-flex align-items-center mb-0">
														<i class="fab fa-cc-mastercard fa-2x text-dark pe-2"></i>Debit
														Card
													</p>
												</div>
											</div>
											<div class="d-flex flex-row">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio"
														name="radioNoLabel" id="radioNoLabel3v" value=""
														aria-label="..." />
												</div>
												<div class="rounded border w-100 p-3">
													<p class="d-flex align-items-center mb-0">
														<i class="fab fa-cc-paypal fa-2x fa-lg text-dark pe-2"></i>PayPal
													</p>
												</div>
											</div>
										</form>
									</div>
									<div class="col-md-6 col-lg-4 col-xl-6">
										<div class="row">
											<div class="col-12 col-xl-6">
												<div class="form-outline mb-4 mb-xl-5">
													<input type="text" id="typeName"
														class="form-control form-control-lg" siez="17"
														placeholder="Arpit Chavan" /> <label class="form-label"
														for="typeName">Name on card</label>
												</div>

												<div class="form-outline mb-4 mb-xl-5">
													<input type="text" id="typeExp"
														class="form-control form-control-lg" placeholder="MM/YY"
														size="7" id="exp" minlength="7" maxlength="7" /> <label
														class="form-label" for="typeExp">Expiration</label>
												</div>
											</div>
											<div class="col-12 col-xl-6">
												<div class="form-outline mb-4 mb-xl-5">
													<input type="text" id="typeText"
														class="form-control form-control-lg" siez="17"
														placeholder="1111 2222 3333 4444" minlength="19"
														maxlength="19" /> <label class="form-label"
														for="typeText">Card Number</label>
												</div>

												<div class="form-outline mb-4 mb-xl-5">
													<input type="password" id="typeText"
														class="form-control form-control-lg"
														placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3"
														maxlength="3" /> <label class="form-label" for="typeText">Cvv</label>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-xl-3">
										<div class="d-flex justify-content-between"
											style="font-weight: 500;">
											<p class="mb-2">Subtotal</p>
											<p class="mb-2">Rs 60</p>
										</div>



										<hr class="my-4">

										<div class="d-flex justify-content-between mb-4"
											style="font-weight: 500;">
											<p class="mb-2">Total (tax included)</p>
											<p class="mb-2">Rs 65</p>
										</div>

										<input type="submit" class="btn btn-primary btn-lg"
												value="pay"></input>

									</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</form>
	
	<div class="footer my-footer">
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
			<div class="col-sm-2">
				<p>
					OUR STORY<br> <br>OUR PRODUCTS<br> <br>FOUNDER'S
					STORY<br> <br>CUSTOM ORDERS
				</p>
			</div>
			<div class="col-sm-2">
				<p>
					FAQs<br> <br>CAREERS<br> <br>PRIVACY POLICY<br>
					<br>DISCLAIMER
				</p>
			</div>
			<div class="col-sm-2">
				<p>
				<h5>
					<img src="./telephone.png" alt="Call" width="30" height="30">
					9420348535</span>
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
						size="50" required><br> <br> </b> 
						
						<input class="transIp" type="password" id="Password"
						placeholder="Password" name="AdPass" maxlength="52" size="50"
						required><br> </b> <br> 
						
						<input type="submit"
						class="button button5" value="submit"></input>
				</form>
			</div>
		</div>
	</div>
	</div>



</body>

</html>