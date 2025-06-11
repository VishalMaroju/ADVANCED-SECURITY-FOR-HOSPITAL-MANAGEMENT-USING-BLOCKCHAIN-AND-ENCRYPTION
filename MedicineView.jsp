<%@ page import="java.sql.*" %>
<%@page import="com.dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="com.servlets.UploadMedicineServlet"%>
<%@page import="java.util.List"%>
<%@ page import="java.io.IOException" %>


<%@page import="java.util.Iterator"%>
<%@ page import="java.io.InputStream" %>

<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<%-- <%@ page import="org.apache.commons.lang3.StringEscapeUtils" %><!-- Import for escaping HTML --> --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Medicine Image</title>
</head>
<body>
    <h1>Medicine Details</h1>
    <%
        String medicineName = request.getParameter("medicineName");
        String jdbcURL = "jdbc:mysql://localhost:3306/BlockchainHealth-2024"; // Update with your database URL
        String dbUser   = "root"; // Update with your database username
        String dbPassword = "root"; // Update with your database password

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
        	Class.forName("com.mysql.jdbc.Driver"); // Ensure you're using the correct JDBC driver for MySQL 8+
            con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            
            // SQL Query to get the image from the database
            String sql = "SELECT * dataimage FROM medical WHERE medicinename = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, medicineName);
            rs = ps.executeQuery();

            if (rs.next()) {
                Blob blob = rs.getBlob("dataimage"); // Retrieve the BLOB (image data)
                if (blob != null) { // Check if image exists
                	InputStream in = blob.getBinaryStream();
                    if (in == null) {
                        throw new Exception("InputStream is null. The BLOB data might be empty.");
                    }

                    // Set content type for image
                    response.setContentType("image/jpeg"); // Assuming the image is JPEG

                   /*  // Write the image data to the response output stream
                    while ((bytesRead = in.read(buffer)) != -1) {
                        response.getOutputStream().write(buffer, 0, bytesRead);
                    }
                    in.close(); // Close InputStream after writing */
                    // Read the file and write it to the response output stream
                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    while ((bytesRead = in.read(buffer)) != -1) {
                        response.getOutputStream().write(buffer, 0, bytesRead);
                    }
                } else {
                
                    out.println("<h2>Image not found for medicine: " + medicineName + "</h2>");
                }
            } else {
                out.println("<h2>No data found for medicine: " + medicineName + "</h2>");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } catch (IOException e) {
            e.printStackTrace();
            out.println("<h2>File error: " + e.getMessage() + "</h2>");
        } finally {
            // Close database resources
        	 try {
                 if (rs != null) rs.close();
                 if (ps != null) ps.close();
                 if (con != null) con.close();
             } catch (SQLException e) {
                 e.printStackTrace();
             }
         }
     %>
</body>
</html>