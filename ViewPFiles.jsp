<%@ page import="java.sql.Blob, java.util.Base64" %>
<%@page import="model.FileModel"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Dao"%>
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
                   <a class="nav-link" href="DoctorHome.jsp">Home</a>
			  </li>
			   <li class="nav-item"><a class="nav-link active" href="PatientRequest.jsp">Patient Appointment</a></li>
			    <li class="nav-item"><a class="nav-link" href="ViewUploadReports.jsp">Patient Upload Report</a></li>
			    <li class="nav-item"><a class="nav-link" href="PatientHistory.jsp">Patient History</a></li>
			     <li><a class="nav-link scrollto" href="PConsultation.jsp">LIVE Message</a></li>
			      <li><a class="nav-link scrollto" href="Availablemedicine.jsp">Medicines</a></li>
			     <!--  <li><a class="nav-link scrollto" href="EmergencyAppointment.jsp">EMERGENCY PATIENT REQUEST</a></li> -->
			    <!--   <li><a class="nav-link scrollto" href="PConsultation.jsp">LIVE CHARTS</a></li>  -->
                 <li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
  <%
                
                List<FileModel> files=Dao.getPatientList();
                
                %>

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
      <table class="w3-table w3-black" style="width:1150px;text-align: center;font-size: 16px;" border="1";"><thead>
<tr style="color:black;">

<th>File Id</th>
<th>User Id</th>
<th>Encrypt Download</th>
<th>Decrypt Download</th>

</tr></thead>

                
                <%
                
               for(FileModel f: files){%>
            	   <tr>
            	   <tr style="color: black;">
            	   <td><%=f.getFileId() %></td>
            	<td><%=f.getUid() %>
            	<td><a href="FileDownload?fid=<%=f.getFileId()%>">Download</a></td>
            		<td><a href="FileDecryptDownload?fid=<%=f.getFileId()%>&&userid=<%=session.getAttribute("email")%>">Download Decypted File</a></td>
            	   </tr>
             <% }
                
                %>
              
                
                
                </table>
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
