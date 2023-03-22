<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="CSS files/Return.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>Return Book</title>

</head>
<body>

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
						<li class="nav-item"><a class="nav-link" href="User-Home.jsp"
							style="color: black;">Home </span></a></li>
						<li class="nav-item"><a class="nav-link" href="About_us.html"
							style="color: black;">About</a></li>
						<li class="nav-item"><a class="nav-link"
							href="User-Home.jsp#category" style="color: black;">Books</a></li>
						<li class="nav-item"><a class="nav-link" href=""
							style="color: black;">Return</a></li>
						<li class="nav-item"><a class="nav-link" href='Logout.jsp'
							style="color: black;">LogOut</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="form">
		<br>
		<center>
			<p>
			<h2>Return Book</h2>
			</p>
		</center>
		<br>
		<div class="formin">

			<form action="ReturnController" method="post">
				<label>Registered Email</label> <input class="transIp" type="email"
					placeholder="Enter your email.." name="UMail" maxlength="52"
					size="50" required><br> <br>
					 
				<label>Book ID</label> <input class="transIp" type="number" placeholder="Enter Book ID"
					name="BookId" maxlength="52" size="50" required><br> <br>

				<label>Return Date</label> <input class="transIp" type="date"
					placeholder="Return Date" name="ReDate" maxlength="52" size="50"
					required><br> <br> <input type="submit"
					class="button button5" value="submit"></input>
					
			</form>
		</div>
	</div>


</body>
</html>