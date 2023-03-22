<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Account Settings</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link href="R1.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="CSS files/AdMy-Account.css">

</head>
<body>


	<nav class=" fixed-top ">
		<div class="header upbar" id="topheader" style="background: #77FFFF">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class=" navbar-brand nav-item" href="#"><h1>Cosmos
						Library</h1></a>
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
						<li class="nav-item"><a class="nav-link"
							href="AdMy-Account.jsp" style="color: black;">My Account</a></li>
						<li class="nav-item"><a class="nav-link" href="About_us.html"
							style="color: black;">About</a></li>
						<li class="nav-item"><a class="nav-link"
							href="Home.html#category" style="color: black;">Books</a></li>
						<li class="nav-item"><a class="nav-link" href="AdLogout.jsp"
							style="color: black;">LogOut</a></li>

					</ul>
				</div>
			</nav>
		</div>
	</nav>

	<%
	String AdMail = (String) session.getAttribute("AdMail");

	PrintWriter pw = response.getWriter();

	if (AdMail == null) {
		response.sendRedirect("Home.html");
	}

	String AdName = (String) session.getAttribute("AdName");
	String AdMob = (String) session.getAttribute("AdMob");
	%>




	<section class="py-5 my-5">
		<div class="container">
			<h1 class="mb-5">Welcome Admin</h1>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="./arpit.pdf.jpg" alt="Image" class="shadow">
							<h4 class="text-center"><%=AdName%></h4>
						</div>
						<h4 class="text-center"></h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">
						<a class="nav-link" id="account-tab" data-toggle="pill"
							href="#account" role="tab" aria-controls="account"
							aria-selected="false"> <i class="fa fa-home text-center mr-1"></i>
							Account
						</a> <a class="nav-link" id="password-tab" data-toggle="pill"
							href="#password" role="tab" aria-controls="password"
							aria-selected="false"> <i class="fa fa-key text-center mr-1"></i>
							Password
						</a> <a class="nav-link" id="password-tab" data-toggle="pill"
							href="#addBook" role="tab" aria-controls="password"
							aria-selected="false"> <img
							src="./117199341543238913-128.png" alt="addBook"
							style="width: 16px; height: 16px;">&nbsp;&nbsp; Add Book
						</a> <a class="nav-link" id="security-tab" data-toggle="pill"
							href="#security" role="tab" aria-controls="security"
							aria-selected="false"> <i class="fa fa-user text-center mr-1"></i>
							Security
						</a> <a class="nav-link active show" id="notification-tab"
							data-toggle="pill" href="#notification" role="tab"
							aria-controls="notification" aria-selected="true"> <i
							class="fa fa-bell text-center mr-1"></i> Notification
						</a>
					</div>
				</div>
				<!--Account  -->

				<form action="UpdateAdController" >

						<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					
						<div class="tab-pane fade" id="account" role="tabpanel"
							aria-labelledby="account-tab">
							<h3 class="mb-4">Account Settings</h3>

							<div class="row">


								<div class="col-md-6">
									<div class="form-group">
										<label>Admin ID</label> <input type="number"
											class="form-control" placeholder="Enter Admin ID" name="AdID"
											required>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label>Name : <%=AdName%></label> <input type="text"
											class="form-control" name="AdName"
											placeholder="Enter New Name">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label>Email ID : <%=AdMail%></label> <input type="email"
											class="form-control" name="AdMail"
											placeholder="Enter new Mail" required>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label>Mob No : <%=AdMob%></label><br> <input
											type="number" class="form-control" name="AdMob"
											placeholder="Enter New Mob No">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label>Company</label> <input type="text" class="form-control"
											value="Arpit's Workspace">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Designation</label> <select id="designation-selection"
											name="designation_preference" required>
											<option value="">Select</option>
											<option value="Student">Admin</option>

										</select>
									</div>
								</div>
							</div>
							<div>
								<input class="btn btn-primary" type="submit"></input>
								<button class="btn btn-light">Cancel</button>
								<a href="AdLogout.jsp" class="link-danger">Re-login to see
									updated data</a>
							</div>
							<!-- </div> -->
						</div>
						
				</form>

				<!-- Password -->

				<div class="tab-pane fade" id="password" role="tabpanel"
					aria-labelledby="password-tab">
					<h3 class="mb-4">Password Settings</h3>

					<form action="UpdateAdPassController" method="post">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Old password</label> <input type="password"
										class="form-control" name="AdOldPass">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>New password</label> <input type="password"
										class="form-control" name="AdNewPass">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Confirm new password</label> <input type="password"
										class="form-control">
								</div>
							</div>
						</div>
						<div>
							<input class="btn btn-primary" type="submit"></input>
							<button class="btn btn-light">Cancel</button>
						</div>
					</form>
				</div>

				<!-- Add New Book -->


				<div class="tab-pane fade" id="addBook" role="tabpanel"
					aria-labelledby="password-tab">
					<h3 class="mb-4">Add Book</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Book ID</label> <input type="number" class="form-control">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Category</label> <select id="designation-selection"
									name="designation_preference" required>
									<option value="">Select</option>
									<option value="Education">Education</option>
									<option value="Fiction">Fiction</option>
									<option value="Non-Fiction">Non-Fiction</option>
									<option value="Self-Help">Self-Help</option>
									<option value="Compitative-Examination">Compitative-Examination</option>
									<option value="Kids-Libaray">Kids-Libaray</option>
									<option value="Kids-Libaray">Others</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Book Title</label> <input type="text"
									class="form-control">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Charges per month</label> <input type="number"
									class="form-control">
							</div>
						</div>
					</div>
					<div>
						<label>Status</label><br> <input class="form-check-input"
							type="checkbox" value="" id="notification1"> <label
							class="form-check-label" for="notification1"> Available </label><br>
						<input class="form-check-input" type="checkbox" value=""
							id="notification1"> <label class="form-check-label"
							for="notification1"> Unavailable </label>
					</div>
					<br>
					<div class="col-md-12">
						<div class="form-group">
							<label>About Book</label>
							<textarea class="form-control" rows="4" placeholder="Book Summary"></textarea>
						</div>
					</div>
					<div>
						<button class="btn btn-primary">Update</button>
						<button class="btn btn-light">Cancel</button>
					</div>

				</div>


				<div class="tab-pane fade" id="security" role="tabpanel"
					aria-labelledby="security-tab">
					<h3 class="mb-4">Security Settings</h3>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Login</label> <input type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Password</label> <input type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="recovery"> <label class="form-check-label"
										for="recovery"> Recovery </label>
								</div>
							</div>
						</div>
					</div>
					<div>
						<button class="btn btn-primary">Update</button>
						<button class="btn btn-light">Cancel</button>
					</div>
				</div>

				<div class="tab-pane fade active show" id="notification"
					role="tabpanel" aria-labelledby="notification-tab">
					<h3 class="mb-4">Notification Settings</h3>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="notification1"> <label class="form-check-label"
								for="notification1"> Allow Notifications on your
								registered Email </label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="notification2"> <label class="form-check-label"
								for="notification2"> Allow Notifications on your mobile
								number </label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="notification3"> <label class="form-check-label"
								for="notification3"> Agree to all Terms & Conditions </label>
						</div>
					</div>
					<div>
						<button class="btn btn-primary">Update</button>
						<button class="btn btn-light">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<div class="footer my-footer">
		<br>
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
				<p>
				<h4>Admin Logout</h4>
				<a href="AdLogout.jsp" class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-log-out"></span> Log out
				</a>
			</div>
		</div>
	</div>
	</div>


</body>
</html>