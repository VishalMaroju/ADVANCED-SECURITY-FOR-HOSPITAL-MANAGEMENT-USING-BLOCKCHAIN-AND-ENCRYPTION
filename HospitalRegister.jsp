<!DOCTYPE html>
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
			   <li class="nav-item"><a class="nav-link active" href="HospitalLogin.jsp">Hospital</a></li>
			    <li class="nav-item"><a class="nav-link" href="Medical.jsp">Medical Staff</a></li>

			    <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="department.html" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Patient <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown02">
						<li><a class="dropdown-item" href="PatientRegister.jsp">Register</a></li>
						<li><a class="dropdown-item" href="PatientLogin.jsp">Login</a></li>
					</ul>
			  	</li>

			  	<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="doctor.html" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Doctors <i class="icofont-thin-down"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						
						<li><a class="dropdown-item" href="DoctorRegister.jsp">Register</a></li>
						<li><a class="dropdown-item" href="DoctorLogin.jsp">Login</a></li>
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
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fa;
    color: #333;
}

.section {
    padding: 60px 0;
}

.registration-form {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    width: 100%; /* Set the width to 100% of the parent container */
    max-width: 800px; /* Set a maximum width for larger screens */
    margin: 0 auto; /* Center the form horizontally */
}

.registration-form h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #007bff;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block; /* Ensure labels take full width */
    margin-bottom: 5px;
    font-weight: bold;
    text-align: left; /* Align labels to the left */
}

.form-group input[type="text"],
.form-group input[type="password"] {
    width: 100%; /* Full width for input fields */
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: border-color 0.3s;
}

.form-group input[type="text"]:focus,
.form-group input[type="password"]:focus {
    border-color: #007bff;
    outline: none;
}

.button-group {
    display: flex; /* Use flexbox for button layout */
    justify-content: center; /* Center the buttons */
}

.btn-submit {
    padding: 10px 20px; /* Add padding for better appearance */
    margin: 0 5px; /* Add margin to space out buttons */
    background-color: #007bff;
    color: #ffffff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
}

.btn-submit:hover {
    background-color: #0056b3;
}
.btn-login {
    display: inline-block; /* Make the link behave like a button */
    padding: 10px 20px; /* Add padding for better appearance */
    background-color: #28a745; /* Green background color */
    color: #ffffff; /* White text color */
    text-align: center; /* Center the text */
    text-decoration: none; /* Remove underline from the link */
    border-radius: 4px; /* Rounded corners */
    font-size: 16px; /* Font size */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover effects */
    margin-top: 20px; /* Add some space above the button */
}

.btn-login:hover {
    background-color: #218838; /* Darker green on hover */
    transform: translateY(-2px); /* Slight lift effect on hover */
}
</style>

<section class="section awards">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 mx-auto">
                <div class="registration-form">
                    <h1>Hospital Registration</h1>
                    <form action="HospitalRegister" method="post">
                        <div class="form-group">
                            <label for="HospitalName">Hospital Name</label>
                            <input type="text" id="HospitalName" name="HospitalName" placeholder="Enter Hospital Name" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalID">Hospital ID</label>
                            <input type="text" id="HospitalID" name="HospitalID" placeholder="Enter Hospital ID" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalPassword">Hospital Password</label>
                            <input type="password" id="HospitalPassword" name="HospitalPassword" placeholder="Enter Hospital Password" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalMobile">Hospital Contact</label>
                            <input type="text" id="HospitalMobile" name="HospitalMobile" placeholder="Enter Hospital Contact" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalCountry">Hospital Country</label>
                            <input type="text" id="HospitalCountry" name="HospitalCountry" placeholder="Enter Hospital Country" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalCity">Hospital City</label>
                            <input type="text" id="HospitalCity" name="HospitalCity" placeholder="Enter Hospital City" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalAddress">Hospital Address</label>
                            <input type="text" id="HospitalAddress" name="HospitalAddress" placeholder="Enter Hospital Address" required>
                        </div>
                        <div class="form-group">
                            <label for="HospitalPincode">Hospital Pincode</label>
                            <input type="text" id="HospitalPincode" name="HospitalPincode" placeholder="Enter Hospital Pincode" required>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Register" class="btn-submit">
                             <input type="Reset" value="Reset" class="btn-submit">
                        </div>
                    </form>
                <a href="HospitalLogin.jsp" class="btn-login">Hospital Login</a>
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