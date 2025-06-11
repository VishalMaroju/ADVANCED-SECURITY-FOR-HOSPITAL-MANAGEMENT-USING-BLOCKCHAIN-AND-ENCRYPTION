<!DOCTYPE html>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
                    <h1 class="text-capitalize mb-5 text-lg">Patient</h1>
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
    <style>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f3f7fc;
        }

        /* .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
        } */

        .form-title {
            text-align: center;
            margin-bottom: 25px;
            font-size: 24px;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"],
        a.button-link {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            background-color: #e1e546;
            color: white;
            border: none;
            border-radius: 6px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        a.button-link:hover {
            background-color: #4338ca;
        }

        .links {
            margin-top: 20px;
            text-align: center;
        }

        .links a {
            display: block;
            margin-top: 8px;
            color: #4f46e5;
            text-decoration: none;
        }

        .error-message {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
    </style>
    
    
    </style>

<section class="container">
    <div class="form-container">
        <h2>Forgot Password</h2>
    <form action="PatientfotgotPassword" method="post">
    
        <table>
            <tr>
                <td>Email Id</td>
                <td><input type="text" name="email" value="" required></td>
            </tr>
            <br>
            <tr>
                <td><input type="submit" value="Submit"></td>
                <td><input type="reset" value="Reset"></td>
            </tr>
        </table>
    </form>
        <!-- Error messages will be displayed here -->
        <div id="errorMessages" class="error-message"></div>
    </div>
</section>

<script>

function validateForm() {
    var password = document.getElementsByName("password")[0].value;
    var confirmPassword = document.getElementsByName("cpassword")[0].value;

    if (password !== confirmPassword) {
        alert("Passwords do not match.");
        return false; // Prevent form submission
        if (password !== confirmPassword) {
            errorMessages.innerHTML = '<p style="color: red;">Passwords do not match!</p>';
            return false; // Prevent form submission
        }

        return true; // Allow form submission
    }

    function validatePasswordStrength(input) {
        // Add your password strength validation logic here
    }

    function validateMobileNumber(input) {
        // Add your mobile number validation logic here
    }
    }

    var pincode = document.getElementById("HospitalPincode").value;
    if (pincode.length > 6) {
        alert("Pincode cannot be more than six digits.");
    }

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
        if (password !== confirmPassword) {
            errorMessages.innerHTML = '<p style="color: red;">Passwords do not match!</p>';
            return false; // Prevent form submission
        }

        return true; // Allow form submission
    }

    function validatePasswordStrength(input) {
        // Add your password strength validation logic here
    }

    function validateMobileNumber(input) {
        // Add your mobile number validation logic here
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

function validatePincode(input) {
    var pincode = input.value;
    
    if (pincode.length > 6) {
        alert("Pincode should not exceed 6 characters!");
        input.value = pincode.slice(0, 6); // Truncate the input to 6 characters
    }
}
</script>





</script>
<script>
document.getElementById('DoctorRegister').addEventListener('submit', function(event) {
    let errorMessages = '';
    const password = this.password.value;
    const confirmPassword = this.cpassword.value;
    const mobile = this.mobile.value;

    if (password !== confirmPassword) {
        errorMessages += '<p>Password and Confirm Password do not match!</p>';
    }

    if (!/^\d{10}$/.test(mobile)) {
        errorMessages += '<p>Mobile number must be exactly 10 digits long!</p>';
    }

    if (errorMessages) {
        event.preventDefault();
        document.getElementById('errorMessages').innerHTML = errorMessages;
    } else {
        document.getElementById('errorMessages').innerHTML = '';
    }
});
</script>


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
