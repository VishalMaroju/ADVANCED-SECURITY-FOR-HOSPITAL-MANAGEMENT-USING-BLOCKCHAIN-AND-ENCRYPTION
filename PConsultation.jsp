<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Dao"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Novena - Health & Care Medical template">
    <meta name="author" content="themefisher.com">
    <title>Doctor Registration - Novena Health</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .form-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }

        .form-container label {
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-container input, .form-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-container input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .form-container .form-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }

    </style>
    <style>
        input[type="password"] {
            border: none;
            padding: 5px 0;
            width: 100%;
            outline: none;
            position: relative; /* To position the pseudo-elements */
        }

        input[type="password"]::before,
        input[type="password"]::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            border-style: dotted;
            pointer-events: none; /* Make sure it doesn't interfere with user interaction */
        }

        input[type="password"]::before {
            border-color: red; /* First dotted line in red */
            border-width: 2px;
        }

        input[type="password"]::after {
            border-color: orange; /* Second dotted line in orange */
            border-width: 2px;
            bottom: -5px; /* Position it slightly below the first line */
        }

        /* Adding a third dotted line using another pseudo-element */
        input[type="password"]::after {
            border-color: green; /* Third dotted line in green */
            bottom: -10px; /* Move it lower */
        }
    </style>
</head>

<body id="top">

<header>
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
				<a class="nav-link" href="DoctorHome.jsp">Home</a>
			  </li>
			     <a class="nav-link" href="DoctorHome.jsp">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link active" href="PatientRequest.jsp">Patient Appointment</a></li>
			    <li class="nav-item"><a class="nav-link" href="ViewUploadReports.jsp">Patient Upload Report</a></li>
			    <li class="nav-item"><a class="nav-link" href="PatientHistory.jsp">Patient History</a></li>
			     <li><a class="nav-link scrollto" href="PConsultation.jsp">LIVE Message</a></li>
			      <li><a class="nav-link scrollto" href="Availablemedicine.jsp">Medicines</a></li>
			     
                 <li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
			     
                 <li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
			   
					</ul>
			  	</li>
			   

			 
		  </div>
		</div>
	</nav>
</header>
</header>

<section class="page-title bg-1">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block text-center">
                    <h1 class="text-capitalize mb-5 text-lg">Doctor</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
  function validateMobileNumber(input) {
    var mobileNumber = input.value;
    
    if (mobileNumber.length > 10) {
      alert("Mobile number should not exceed 10 characters!");
      input.value = mobileNumber.slice(0, 10); // Truncate the input to 10 characters
    }
  }
  function validatePasswordStrength(input) {
	    var password = input.value;

	    // Define your password strength conditions
	    var hasUpperCase = /[A-Z]/.test(password);
	    var hasLowerCase = /[a-z]/.test(password);
	    var hasDigit = /\d/.test(password);
	    var hasSpecialChar = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/.test(password);

	    // Check if all conditions are met
	    if (hasUpperCase && hasLowerCase && hasDigit && hasSpecialChar && password.length >= 8) {
	      updatePasswordStrengthIcon('strong');
	      input.setCustomValidity(""); // Reset the validation message
	    } else if ((hasUpperCase || hasLowerCase || hasDigit || hasSpecialChar) && password.length >= 6) {
	      updatePasswordStrengthIcon('medium');
	      input.setCustomValidity("");
	    } else {
	      updatePasswordStrengthIcon('weak');
	      input.setCustomValidity("Password must be at least 8 characters long and include uppercase, lowercase, digit, and special character.");
	    }
	  }

  function updatePasswordStrengthIcon(strength) {
	    var iconElement = document.getElementById('passwordStrengthIcon');
	    iconElement.innerHTML = ''; // Clear previous icons

	    if (strength === 'weak') {
	      iconElement.innerHTML = '\uD83D\uDD34'; // Unicode escape sequence for 🔴
	      iconElement.style.color = 'red'; // Set the color
	    } else if (strength === 'medium') {
	      iconElement.innerHTML = '\uD83D\uDFE0'; // Unicode escape sequence for 🟠
	      iconElement.style.color = 'orange'; // Set the color
	    } else if (strength === 'strong') {
	      iconElement.innerHTML = '\uD83D\uDFE2'; // Unicode escape sequence for 🟢
	      iconElement.style.color = 'green'; // Set the color
	    }
  }
	</script>
 <style>
        .form-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }

        .form-container label {
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-container input, .form-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-container input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .form-container .form-title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>


<section class="container">
    <div class="form-container">
        <h3 class="form-title">Live Message</h3>
       
                <br><br>
              <a href="Compose2.jsp" class="button-lg bg-indigo-lightest-20 indigo-lightest focus-black fw-300 fs-s3 mr-0 br-l-0">INBOX</a>
              <br><br><br>
              <a href="Inbox2.jsp" class="button-lg bg-indigo-lightest-20 indigo-lightest focus-black fw-300 fs-s3 mr-0 br-l-0">RECEIVED MESSAGE</a>
    </div>
</section>

<style>
    .form-container {
        max-width: 1150px;
        margin: 30px auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        background-color: #f9f9f9;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ddd; /* Add border to each cell */
    }

    th {
        background-color: #007bff;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e0e0e0;
    }

    .button-lg {
        padding: 10px 15px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .button-lg:hover {
        background-color: #0056b3;
    }
</style>
<footer class="footer section gray-bg">
    <!-- Existing footer structure from the original code -->
</footer>

<!-- Essential Scripts -->
<script src="plugins/jquery/jquery.js"></script>
<script src="plugins/bootstrap/js/popper.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/counterup/jquery.easing.js"></script>
<script src="plugins/slick-carousel/slick/slick.min.js"></script>
<script src="plugins/counterup/jquery.waypoints.min.js"></script>
<script src="plugins/counterup/jquery.counterup.min.js"></script>
<script src="plugins/google-map/map.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>
<script src="js/script.js"></script>
<script src="js/contact.js"></script>

</body>
</html>
