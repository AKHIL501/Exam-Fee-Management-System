<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("../index.html");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
    <div id="wrapper">
        <div id="headerwrap">
        
         <%@include file="adminheader.jsp" %>
        
        </div>

        <div id="contentwrap">
        <div id="content">
        <center><img src="../images/logo.jpg" height="200" widyh="200"></center>
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