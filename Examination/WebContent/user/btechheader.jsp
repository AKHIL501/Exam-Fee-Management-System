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
<title>SSIT EXAM FEE MANAGEMENT SYSTEM</title>
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
        <div id="navigationwrap">
	<ul id="menu-bar">
 <li ><a href="index.jsp">Course:B.TECH</a>
 
 
 </li>
 <li><a href="#">Regulation</a>
 <ul>
   <li><a href="#">R16</a></li>
   <li><a href="R13.jsp">R13</a></li>
   <li><a href="#">R09 </a></li>
   <li><a href="#">R07 </a></li>
  </ul>
 </li>
 <li><a href="#">Accounts</a>
 <ul>
   <li><a href="R13edit.jsp">Edit</a></li>
   <li><a href="reportgeneration.jsp">Generate Report</a></li>
   
  </ul>
 
 </li>
 <li><a href="profile.jsp">Profile</a></li>
<li><a href="../logout.jsp">Logout</a></li>
</ul>
      
</body>
</html>