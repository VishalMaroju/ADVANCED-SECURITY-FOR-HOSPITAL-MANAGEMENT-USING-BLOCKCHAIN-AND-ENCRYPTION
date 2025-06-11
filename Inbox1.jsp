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
            max-width: 900px;
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

        .custom-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            display: inline-block;
        }

        .custom-btn:hover {
            background-color: #218838;
            transition: background-color 0.3s;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .table-container {
            margin-top: 30px;
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
        <h2 class="form-title">Messages from Doctors</h2>

        <%
            session = request.getSession(false);
            String name = (String) session.getAttribute("email");
            String sql = "select * from compose1 where Did='"+name+"'";
            List<String> lt = Dao.getPMessages1(sql);
            Iterator<String> itr = lt.iterator();
        %>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Message ID</th>
                        <th>From Doctor ID</th>
                        <th>Patient Message</th>
                        <th>Message Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (itr.hasNext()) {
                            String messageId = itr.next();
                            String doctorId = itr.next();
                            String patientMessage = itr.next();
                            String messageDate = itr.next();
                    %>
                    <tr>
                        <td><a href="Compose1.jsp"><%= messageId %></a></td>
                        <td><%= doctorId %></td>
                        <td><%= patientMessage %></td>
                        <td><%= messageDate %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>

    </div>
</section>

<script>
    function validateMobileNumber(input) {
        var mobileNumber = input.value;
        if (mobileNumber.length > 10) {
            alert("Mobile number should not exceed 10 characters!");
            input.value = mobileNumber.slice(0, 10);
        }
    }

    function validatePincode(input) {
        var pincode = input.value;
        if (pincode.length > 6) {
            alert("Pincode should not exceed 6 characters!");
            input.value = pincode.slice(0, 6);
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
            input.setCustomValidity("");
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
        iconElement.innerHTML = ''; 

        if (strength === 'weak') {
            iconElement.innerHTML = '\uD83D\uDD34'; 
            iconElement.style.color = 'red'; 
        } else if (strength === 'medium') {
            iconElement.innerHTML = '\uD83D\uDFE0'; 
            iconElement.style.color = 'orange';
        } else if (strength === 'strong') {
            iconElement.innerHTML = '\uD83D\uDFE2'; 
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
