<%@ page import="java.sql.Blob, java.util.Base64" %>
<html lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
    <meta name="author" content="themefisher.com">
    <title>Novena- Health & Care Medical template</title>
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/icofont/icofont.min.css">
    <link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
    <link rel="stylesheet" href="plugins/slick-carousel/slick/slick-theme.css">
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
                        <li class="list-inline-item"><i class="icofont-location-pin mr-2"></i>Address Ta-134/A, New York, USA</li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <div class="text-lg-right top-right-bar mt-2 mt-lg-0">
                        <a href="tel:+23-345-67890">
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
                    <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="AddMedicine.jsp">Add Medicines</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewMedicine1.jsp">View Medicines</a></li>
                   <!--  <li class="nav-item"><a class="nav-link" href="#">Doctor Prescription</a></li> -->
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
                    <h1 class="text-capitalize mb-5 text-lg">Medicine Details</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="container">
    <div class="form-container">
        <h1>Medicine Details</h1>
        <form method="GET" action="viewMedicine">
            <input type="text" name="medicineName" placeholder="Enter Medicine Name" class="form-control" />
            <br>
             <% 
            // Fetch data
            String medicineName = (String) request.getAttribute("medicineName");
            String category = (String) request.getAttribute("category");
            String diseases = (String) request.getAttribute("diseases");
            String symptoms = (String) request.getAttribute("symptoms");
            Blob imageBlob = (Blob) request.getAttribute("imageBlob");
            String error = (String) request.getAttribute("error");

            if (error != null) {
                out.println("<h2>" + error + "</h2>");
            } else {
        %>
            <input type="submit" value="View Medicine" class="btn btn-primary" />
        </form>

       <%--  <% 
            // Fetch data
            String medicineName = (String) request.getAttribute("medicineName");
            String category = (String) request.getAttribute("category");
            String diseases = (String) request.getAttribute("diseases");
            String symptoms = (String) request.getAttribute("symptoms");
            Blob imageBlob = (Blob) request.getAttribute("imageBlob");
            String error = (String) request.getAttribute("error");

            if (error != null) {
                out.println("<h2>" + error + "</h2>");
            } else {
        %> --%>
        
        <h3>Medicine Name: <%= medicineName %></h3>
        <h4>Category: <%= category %></h4>
        <p><strong>Diseases:</strong> <%= diseases %></p>
        <p><strong>Symptoms:</strong> <%= symptoms %></p>
        
        <h3>Medicine Image:</h3>
        <%
            if (imageBlob != null) {
                byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                String encodedImage = java.util.Base64.getEncoder().encodeToString(imageBytes);
                out.println("<img src='data:image/jpeg;base64," + encodedImage + "' alt='Medicine Image' />");
            } else {
                out.println("<p>No image available.</p>");
            }
        %>
        
        <% 
            } 
        %>
    </div>
</section>

<footer class="footer section gray-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mr-auto col-sm-6">
                <div class="widget mb-5 mb-lg-0">
                    <div class="logo mb-4">
                        <img src="images/logo.png" alt="" class="img-fluid">
                    </div>
                    <p>These focus on specific areas of medicine, such as cardiology, oncology, orthopedics, or pediatrics.</p>
                    <ul class="list-inline footer-socials mt-4">
                        <li class="list-inline-item"><a href="https://www.facebook.com/themefisher"><i class="icofont-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="https://twitter.com/themefisher"><i class="icofont-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="https://www.pinterest.com/themefisher/"><i class="icofont-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- Additional footer content -->
        </div>
    </div>
</footer>

<!-- Essential Scripts -->
<script src="plugins/jquery/jquery.js"></script>
<script src="plugins/bootstrap/js/popper.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/slick-carousel/slick/slick.min.js"></script>
<script src="js/script.js"></script>

</body>
</html>
