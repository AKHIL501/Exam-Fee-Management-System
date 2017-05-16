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
        
         <%@include file="adminheader.jsp" %>
        
        

        <div id="contentwrap">
        <div id="content">
        <%@ page import="java.sql.*" %>
        
				
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#f77422">
		<td><b style="color:#ffffff";>UserName</b></td>
		<td><b style="color:#ffffff";>FirstName</b></td>
		<td><b style="color:#ffffff";>LastName</b></td>
		<td><b style="color:#ffffff";>Email</b></td>
		<td><b style="color:#ffffff";>Password</b></td>
		<td><b style="color:#ffffff";>Edit</b></td>
	</tr>
   <%
	try{	
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/ssitexam", "root", "");
		
		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("select * from login");

		
		while(rs.next()){
	%>
		<tr bgcolor="#ede1eb">
			
			<td><%=rs.getString("username") %></td>
			<td><%=rs.getString("firstname") %></td>
			<td><%=rs.getString("lastname") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("password") %></td>
			
		</tr>
		            
	<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</table>
        
        
        
        
        
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