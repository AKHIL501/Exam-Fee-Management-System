<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("../index.html");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CSS Portal - Layout</title>
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="../css/6762.css" />
</head>
<body>
    <div id="wrapper">
        <div id="headerwrap">
        <div id="header">
           <center> <h1>WELCOME TO SSIT EXAM FEE MANAGEMENT SYSTEM</h1> </center>
        </div>
        </div>
        

        <div id="contentwrap">
        <div id="content">
        
        <table>
        <tr>
        <td>
       <a href="btech.jsp"> <img src="../images/b.tech.png" height="300" width="400" alt="b.tech logo"></a>
        </td>
        
        <td>
      <a href="diploma.jsp">  <img src="../images/diploma.jpg" height="300" width="400" alt="diploma logo"></a>
        </td>
        
        <td>
       <a href="mba.jsp"> <img src="../images/mba.jpg" height="300" width="400" alt="mba logo"></a>
        </td>
        
        </tr>
        </table>
        
        
          <center> </center>
        </div>
        </div>
        <div id="footerwrap">
        <div id="footer">
            <p> Copyright &copy; <a href="http://www.saiapurthi.ac.in" > SSIT</a>--Guided By:K.V.PANDURANGARAO</p>
        </div>
        </div>
    </div>
</body>
</html>