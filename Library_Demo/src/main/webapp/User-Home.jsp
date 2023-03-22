<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="R1.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS files/User-Home.css">

<title>User Home Page</title>

 <style>
  #mybg{
  background-image: url("Library.jpeg");
   
}
  </style>

</head>
<body>

	<div class="bgphoto" id="mybg">
    <nav class=" fixed-top">
      <div class="header upbar" id="topheader" style="background: rgba(127, 91, 91, 0.3);">
        <nav class="navbar navbar-expand-lg navbar-light ">
        <a class=" navbar-brand nav-item" ><h1>Cosmos Library</h1></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="User-Home.jsp" style="color:black;">Home </span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="My-Account.jsp" style="color:black;">My Account</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="About_us.html" style="color:black;">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="User-Home.jsp#category" style="color:black;">Books</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Logout.jsp" style="color:black;">LogOut</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </nav>
    
		<%
			String userMail=(String)session.getAttribute("userMail");
			String userName=(String)session.getAttribute("userName");
			
			if(userMail==null)
			{
				response.sendRedirect("Login.html");
			}
		%>


		<div class="search-box">
			<i><h1 style="color: black; font-weight: 1000; font-size: 40px;">Welcome  <%=userName%></h1></i>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search"
					placeholder="Search Your Book Here" aria-label="Search"
					style="height: 50px;">
				<button class="btn btn-outline-success "
					style="color: black; background-color: blanchedalmond"
					type="submit">Search</button>
			</form>
		</div>
		<div></div>
		<div class="quote">
			<p>
			<h1 style="font-size: 60px;">
				<i>Your <br>Library Is <br>Your Paradise...
				</i>
			</h1>
			</p>
		</div>

		<div>

			<div class="d-flex justify-content-around container flex"
				style="margin-left: 90px;">
				<div class="p-2 A4">
					<h3>100+Jornals</h3>
				</div>
				<div class="p-2 A4">
					<h3>120+ref.Books</h3>
				</div>
				<div class="p-2 A4">
					<h3>100+Novels</h3>
				</div>
			</div>
		</div>
	</div>

	<div style="background-color: rgb(247, 217, 186); width: 100vw;"
		id="category">
		<br> <br>
		<h2 style="color: black; margin-left: 670px;">&nbsp;&nbsp;&nbsp;&nbsp;Our
			Domain</h2>
		<br> <br>
		<div class="d-flex justify-content-around container2">
			<div class="p-2 ">
				<a href="Education.jsp"><img class="border-radius"
					src="education.jpeg" alt="education"></a>
			</div>
			<div class="p-2 ">
				<a href="Fiction.jsp"><img class="border-radius"
					src="fiction.jpeg" alt="fiction"></a>
			</div>
			<div class="p-2 ">
				<a href="Self-Help.jsp"><img class="border-radius"
					src="selfhelp.webp" alt="selfhelp"></a>
			</div>
		</div>
		<br> <br>
		<div class="d-flex justify-content-around container2">
			<div class="p-2 ">
				<a href="Kids.jsp"><img class="border-radius"
					src="./kidsCorner.jpeg" alt="kidsCorner"></a>
			</div>
			<div class="p-2 ">
				<a href="Non-Fiction.jsp"><img class="border-radius"
					src="./nonfiction.jpeg" alt="nonfiction"></a>
			</div>
			<div class="p-2 ">
				<a href="Compitative-Exam.jsp"><img class="border-radius"
					src="./compitativeExam.jpeg" alt="compitativeExam"></a>
			</div>
		</div>
		<br> <br> <br>
	</div>

	<div class="footer my-footer">
		<br>
		<div class="d-flex justify-content-around">
			<div class="p-2">
				<center>
					<img src="call-center-agent.png" class="center" width="50"
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
					<img src="protection.png" class="payment" width="50" height="50">
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
					<img src="download.png" class="app" width="50" height="50">
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
					<img src="telephone.png" alt="Call" width="30" height="30">
					9420348535</span>
				</h5>
				</p>
				<p>
				<h5>
					<img src="gmail.png" alt="Mail" mail.png width="30" height="30">
					cosmoslib@gmail.in</span>
				</h5>
				</p>
				<img src="facebook.png" width="40" height="40">&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="instagram.png" width="40" height="40">&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="linkedin.png" width="40" height="40">
			</div>

			<div class="col-sm-4">
				<p>LogOut</p>

				<a href="AdLogout.jsp" class="btn btn-info btn-lg"> <span
					class="glyphicon glyphicon-log-out"></span> Log out
				</a>

			</div>
		</div>
	</div>
	</div>
	

	


</body>
</html>