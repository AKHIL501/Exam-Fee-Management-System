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
         <div id="navigationwrap">
	<ul id="menu-bar">
 <li ><a href="index.jsp">Home</a>
 
 
 </li>
 <li><a href="manageusers.jsp">Manage Users</a>
 <ul>
   <li><a href="adduser.jsp">Add User</a></li>
   <li><a href="removeuser.jsp">Remove User</a></li>
  </ul>
 </li>
 <li><a href="#">Accounts</a>
 <ul>
   <li><a href="#">Edit</a></li>
   <li><a href="reportgeneration.jsp">Generate Report</a></li>
   
  </ul>
 
 </li>
 <li><a href="#">Profile</a></li>
<li><a href="../logout.jsp">Logout</a></li>
</ul>
        </div>
        
        

        <div id="contentwrap">
        <div id="content">
        
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