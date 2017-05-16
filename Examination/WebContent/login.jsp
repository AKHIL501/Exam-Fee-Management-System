<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CSS Portal - Layout</title>
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="./css/6762.css" />
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
 <li ><a href="index.html">Home</a></li>
 <li class="active"><a href="login.jsp">Login</a>
 
 </li>
 <li><a href="#">News</a>
 </li>
 <li><a href="#">About</a></li>
 <li><a href="#">Contact Us</a></li>
</ul>
        </div>
        <div id="contentwrap">
        <div id="content">
        <center> <img src="./images/logo.jpg" height="300" width="400" alt="college logo"></center>
          
          <table  border="0">
              <tr>
                <td>
				
				<form method="post" name="form1" action="">
    <fieldset  background-color:#ff3300 ;">
      <legend><strong><span style="color:#ff3300">Login Panel</span></strong></legend>
      <table width="100%" border="0">
        <tr>
          <td width="49%" align="right"><b><span style="color:#ff3300">UserName* :</span></b></td>
          <td width="51%"><input type="text" name="uname" required="required"/></td>
        </tr>
        <tr>
          <td align="right"><b><span style="color:#ff3300">Password* : </span></b></td>
          <td><input name="pwd" type="password" id="pwd" required="required"/></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
          
          <%@ page import="java.sql.*" %>
          
<%
try
{
String username=request.getParameter("uname");
String password=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ssitexam","root","");

Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
String position="";
while(rs.next())
{
	
	session.setAttribute("username",username);
	
	position=rs.getString(7);
		
}
if(position.equals("admin"))
{
	response.sendRedirect("admin/index.jsp");
}
else if(position.equals("principal"))
{
	response.sendRedirect("principal/index.jsp");
}
else if(position.equals("user"))
{
	response.sendRedirect("user/index.jsp");
}



}

catch(Exception e)

{
out.print("Exception::"+e);
            }

%>
                  
            </td>
          </tr>
        <tr>
          <td align="right"><input type="submit" value="Login" name="login"/></td>
          <td><input name="Reset" type="reset" id="Reset" value="Reset"/></td>
        </tr>
        
      </table>
          
          
          
          
          
         
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
