<!DOCTYPE html>
<%@ page import="com.dao.Dao" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
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

        input[type="password"] {
            border: none;
            padding: 5px 0;
            width: 100%;
            outline: none;
            position: relative;
        }

        input[type="password"]::before,
        input[type="password"]::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            border-style: dotted;
            pointer-events: none;
        }

        input[type="password"]::before {
            border-color: red;
            border-width: 2px;
        }

        input[type="password"]::after {
            border-color: orange;
            border-width: 2px;
            bottom: -5px;
        }

        input[type="password"]::after {
            border-color: green;
            bottom: -10px;
        }
        .custom-btn {
    background-color: #28a745; /* Green color for the button */
    color: white; /* White text color */
    padding: 10px 20px; /* Padding for button */
    border-radius: 5px; /* Rounded corners */
    text-decoration: none; /* Remove underline */
    font-size: 16px; /* Font size */
    display: inline-block; /* Make it an inline-block element */
}

.custom-btn:hover {
    background-color: #218838; /* Darker green color when hovered */
    text-decoration: none; /* Ensure no underline on hover */
    transition: background-color 0.3s; /* Smooth color transition */
}
    </style>
</head>

<body id="top">

<header>
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
                   <a class="nav-link" href="PatientHome.jsp">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link active" href="UploadReports.jsp">Patient Upload Reports</a></li>
			 <!--    <li class="nav-item"><a class="nav-link" href="####">View Prescription</a></li> -->
			     <li class="nav-item"><a class="nav-link" href="Consultation.jsp">Live Message</a></li>
			      <li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
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
                    <h1 class="text-capitalize mb-5 text-lg">Patient</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="container">
    <div class="form-container">
        <form action="Compose1" method="post">
                <div>
                  <label for="doctorname">DOCTOR NAME :</label>
                        <select name="doctorname" class="button-lg bg-indigo-lightest-20 indigo-lightest focus-white fw-300 fs-s3 mr-0 br-l-0">
					<option value="null">----select----</option>
					<%
		String pid = (String)session.getAttribute("email");
		String sql = "select doctorname from patients where status2='Approved'";
		List<String> lt = Dao.getVMName3(sql);
		Iterator<String> itr = lt.iterator();
		%>
					<%
					while(itr.hasNext()){
						String vm = itr.next();
					%>
					<option value="<%=vm %>"><%=vm %></option>
					<%} %>
					</select>
					<br><br>
					   <label for="message">PATIENT MESSAGE :</label>
                    <textarea name="message" rows="4" cols="50"
                    class="input-lg half bw-0 fw-200 bg-indigo-lightest-10 white ph-indigo-lightest focus-white opacity-80 fs-s3 py-5 min-w-25vw br-r-0"
                    placeholder="Enter Patient Info" > </textarea>
                    <br><br>
                    <input type="submit" class="button-lg bg-indigo-lightest-20 indigo-lightest focus-white fw-300 fs-s3 mr-0 br-l-0"
                         placeholder="Send"/>
                    </div>
                </form>
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

    function validatePincode(input) {
        var pincode = input.value;
        if (pincode.length > 6) {
            alert("Pincode should not exceed 6 characters!");
            input.value = pincode.slice(0, 6); // Truncate the input to 6 characters
        }
    }

    function validatePasswordStrength(input) {
        var password = input.value;
        var hasUpperCase = /[A-Z]/.test(password);
        var hasLowerCase = /[a-z]/.test(password);
        var hasDigit = /\d/.test(password);
        var hasSpecialChar = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]/.test(password);

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
            iconElement.innerHTML = '\uD83D\uDD34'; // Red Circle
            iconElement.style.color = 'red'; 
        } else if (strength === 'medium') {
            iconElement.innerHTML = '\uD83D\uDFE0'; // Orange Circle
            iconElement.style.color = 'orange';
        } else if (strength === 'strong') {
            iconElement.innerHTML = '\uD83D\uDFE2'; // Green Circle
            iconElement.style.color = 'green';
        }
    }
</script>

<footer class="footer section gray-bg">
    <!-- Footer Content -->
</footer>

<script src="plugins/jquery/jquery.js"></script>
<script src="plugins/bootstrap/js/popper.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
<script src="js/contact.js"></script>

</body>
</html>
