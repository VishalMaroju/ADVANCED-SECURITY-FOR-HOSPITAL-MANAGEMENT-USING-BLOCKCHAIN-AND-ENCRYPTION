<!DOCTYPE html>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.ResultSet"%>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
  <meta name="author" content="themefisher.com">

  <title>Novena- Health & Care Medical template</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
  <!-- Slick Slider  CSS -->
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="top">

<header>
	<div class="header-top-bar">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<ul class="top-bar-info list-inline-item pl-0 mb-0">
						<li class="list-inline-item"><a href="mailto:support@gmail.com"><i class="icofont-support-faq mr-2"></i>support@novena.com</a></li>
						<li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address Ta-134/A, New York, USA </li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="text-lg-right top-right-bar mt-2 mt-lg-0">
						<a href="tel:+23-345-67890" >
							<span>Call Now : </span>
							<span class="h4">9581022022</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navigation" id="navbar">
		<div class="container">
		 	 <a class="navbar-brand" href="index.html">
			  	<img src="images/logo.png" alt="" class="img-fluid">
			  </a>

		  	<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarmain" aria-controls="navbarmain" aria-expanded="false" aria-label="Toggle navigation">
			<span class="icofont-navigation-menu"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarmain">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="index.html">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link " href="DoctorRequests.jsp">Add Doctors</a></li>
			   <li class="nav-item"><a class="nav-link " href="DoctorsList.jsp">All Doctor List</a></li>
			   
			  <li class="nav-item"><a class="nav-link " href="index.jsp">Logout</a></li>

			</ul>
		  </div>
		</div>
	</nav>
</header>
	


<section class="page-title bg-1">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
         
          <h1 class="text-capitalize mb-5 text-lg">Hospital</h1>

          <!-- <ul class="list-inline breadcumb-nav">
            <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">About Us</a></li>
          </ul> -->
        </div>
      </div>
    </div>
  </div>
</section>
  <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fa;
    color: #333;
}
.footer {
    background-color: #343a40; /* Dark background */
    color: white; /* White text */
    padding: 20px 0; /* Padding for spacing */
    position: relative; /* Ensure it stays in place */
    bottom: 0; /* Align to the bottom */
    width: 100%; /* Full width */
}

.footer h5 {
    color: #ffffff; /* White color for headings */
}

.footer p {
    margin: 0; /* Remove default margin */
}

.footer .social-media {
    list-style: none; /* Remove bullet points */
    padding: 0; /* Remove padding */
}

.footer .social-media li {
    display: inline; /* Display items inline */
    margin-right: 10px; /* Space between items */
}

.footer .social-media a {
    color: #ffffff; /* White color for links */
    text-decoration: none; /* Remove underline */
}

.footer .social-media a:hover {
    text-decoration: underline; /* Underline on hover */
}

/* .registration-form {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
} */

.btn-login, .btn-new-hospital {
    display: inline-block; /* Make the links behave like buttons */
    padding: 10px 20px; /* Add padding for better appearance */
    background-color: #007bff; /* Blue background color for the login button */
    color: #ffffff; /* White text color */
    text-align: center; /* Center the text */
    text-decoration: none; /* Remove underline from the link */
    border-radius: 4px; /* Rounded corners */
    font-size: 16px; /* Font size */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover effects */
    margin: 10px; /* Add some space around the buttons */
}

.btn-login:hover {
    background-color: #0056b3; /* Darker blue on hover */
    transform: translateY(-2px); /* Slight lift effect on hover */
}

.btn-new-hospital {
    background-color: #28a745; /* Green background color for the new hospital button */
}

.btn-new-hospital:hover {
    background-color: #218838; /* Darker green on hover */
}
</style>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fa; /* Light background for contrast */
    color: #333; /* Default text color */
}

.section {
    padding: 60px 0; /* Spacing around the section */
}

/* .registration-form {
    background-color: #ffffff; /* White background for the form */
    padding: 30px;
    border-radius: 8px; /* Rounded corners */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Subtle shadow */
} */

h2.blue {
    color: #007bff; /* Blue color for the heading */
    text-align: center; /* Center the heading */
    margin-bottom: 20px; /* Space below the heading */
}

.doctor-table {
    width: 100%; /* Full width */
    border-collapse: collapse; /* Remove space between borders */
    margin-top: 20px; /* Space above the table */
}

.doctor-table th, .doctor-table td {
    padding: 12px; /* Padding inside cells */
    text-align: center; /* Center text */
    border: 1px solid #ddd; /* Light border */
}

.doctor-table th {
    background-color: #007bff; /* Bootstrap primary color */
    color: white; /* White text for headers */
}

.doctor-table tr:nth-child(even) {
    background-color: #f2f2f2; /* Light gray for even rows */
}

.doctor-table tr:hover {
    background-color: #e9ecef; /* Light hover effect */
}

.doctor-table td {
    color: #333; /* Default text color for table cells */
}
</style>

<section class="section awards">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 mx-auto">
                <div class="registration-form">
                    <h2 class="blue fs-l3 lh-2 md-fs-xl1 md-lh-1 fw-900">ALL DOCTORS LISTS</h2>
                    <table class="doctor-table">
                        <thead>
                            <tr>
                                <th>NAME</th>
                                <th>EMAIL ID</th>
                                <th>MOBILE NO</th>
                                <th>CITY</th>
                                <th>DOCTOR SPECIALIZATION</th>
                                <th>DOCTOR EXPERIENCE</th>
                                <th>DOCTOR REGISTRATION NUMBER</th>
                                <th>STATE MEDICAL COUNCIL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String uid = (String) session.getAttribute("email");
                                String sname = (String) session.getAttribute("sname");
                                ResultSet r = Dao.getDoctorsList(uid);
                                while (r.next()) {
                            %>
                            <tr>
                                <td><%= r.getString("name") %></td>
                                <td><%= r.getString("email") %></td>
                                <td><%= r.getString("mobile") %></td>
                                <td><%= r.getString("City") %></td>
                                <td><%= r.getString("DSpecialization") %></td>
                                <td><%= r.getString("DExperience") %></td>
                                <td><%= r.getString("DRegistrationNumber") %></td>
                                <td><%= r.getString("StateMedicalCouncil") %></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- footer Start -->
<footer class="footer section gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 mr-auto col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<div class="logo mb-4">
						<img src="images/logo.png" alt="" class="img-fluid">
					</div>
					<p>These focus on specific areas of medicine, such as cardiology, oncology, orthopedics, or pediatrics..</p>

					<ul class="list-inline footer-socials mt-4">
						<li class="list-inline-item"><a href="https://www.facebook.com/themefisher"><i class="icofont-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://twitter.com/themefisher"><i class="icofont-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://www.pinterest.com/themefisher/"><i class="icofont-linkedin"></i></a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Department</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="#">Surgery </a></li>
						<li><a href="#">Wome's Health</a></li>
						<li><a href="#">Radiology</a></li>
						<li><a href="#">Cardioc</a></li>
						<li><a href="#">Medicine</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="widget mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Support</h4>
					<div class="divider mb-4"></div>

					<ul class="list-unstyled footer-menu lh-35">
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Company Support </a></li>
						<li><a href="#">FAQuestions</a></li>
						<li><a href="#">Company Licence</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget widget-contact mb-5 mb-lg-0">
					<h4 class="text-capitalize mb-3">Get in Touch</h4>
					<div class="divider mb-4"></div>

					<div class="footer-contact-block mb-4">
						<div class="icon d-flex align-items-center">
							<i class="icofont-email mr-3"></i>
							<span class="h6 mb-0">Support Available for 24/7</span>
						</div>
						<h4 class="mt-2"><a href="tel:+23-345-67890">Support@email.com</a></h4>
					</div>

					<div class="footer-contact-block">
						<div class="icon d-flex align-items-center">
							<i class="icofont-support mr-3"></i>
							<span class="h6 mb-0">Mon to Sat : 08:30 - 18:00</span>
						</div>
						<h4 class="mt-2"><a href="tel:+23-345-67890">+919581022022</a></h4>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-btm py-4 mt-5">
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-6">
					<div class="copyright">
						&copy; Copyright Reserved to <span class="text-color">Blockchain Hospital</span> by <a href="" target="_blank">Ahmed</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="subscribe-form text-lg-right mt-5 mt-lg-0">
						<form action="#" class="subscribe">
							<input type="text" class="form-control" placeholder="Your Email address">
							<a href="#" class="btn btn-main-2 btn-round-full">Subscribe</a>
						</form>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<a class="backtop js-scroll-trigger" href="#top">
						<i class="icofont-long-arrow-up"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</footer>
   

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.js"></script>
    <!-- Bootstrap 4.3.2 -->
    <script src="plugins/bootstrap/js/popper.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/counterup/jquery.easing.js"></script>
    <!-- Slick Slider -->
    <script src="plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="plugins/counterup/jquery.waypoints.min.js"></script>
    
    <script src="plugins/shuffle/shuffle.min.js"></script>
    <script src="plugins/counterup/jquery.counterup.min.js"></script>
    <!-- Google Map -->
    <script src="plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    
    
    <script src="js/script.js"></script>
    <script src="js/contact.js"></script>

  </body>
  </html>