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

<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="../css/6762.css" />
</head>
<body>
    <div id="wrapper">
        <div id="headerwrap">
       
        </div>
         
        <%@include file="adminheader.jsp" %>
        

        <div id="contentwrap">
        <div id="content">
        
                </div>
        </div>
        <div id="footerwrap">
        <div id="footer">
             <%@include file="footer.jsp" %>
        </div>
        </div>
    </div>
</body>
</html>