<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("../index.html");
	}
%>
<%@ page import="java.sql.*" %>
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
        

        <div id="contentwrap">
        <div id="content">
        
       <center>
        <form action="" method="post">
        <table>
        <tr>
        <td>SELECT BRANCH:<select name="branch">
        <option value="CSE">CSE</option>
        <option value="ECE">ECE</option>
        <option value="EEE">EEE</option>
        <option value="MECH">MECH</option>
        <option value="AGRI">AGRI</option>
        </select> </td>
         <td>YEAR:<select name="year">
        <option value="I">I</option>
        <option value="II">II</option>
        <option value="III">III</option>
        <option value="IV">IV</option>
         </select>
        </td>
         <td><input type="submit" value="GENERATE REPORT"></td>
        </tr>
        </table>
        </form>
        </center>
        				
<table align="center" cellpadding="" cellspacing="" border="1">
<tr>

</tr>
	<tr bgcolor="#f77422">
		<td><b style="color:#ffffff";>Receipt Id</b></td>
		<td><b style="color:#ffffff";>HALLTICKET NUMBER</b></td>
		<td><b style="color:#ffffff";>YEAR</b></td>
		<td><b style="color:#ffffff";>APPLIED SUBJECTS</b></td>
		<td><b style="color:#ffffff";>AMOUNT</b></td>
		<td><b style="color:#ffffff";>TYPE</b></td>
		<td><b style="color:#ffffff";>DATE</b></td>
		
			</tr>
   <%
   
	try{
		
		String branch=request.getParameter("branch");
		String year=request.getParameter("year");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/ssitexam", "root", "");
		
		Statement st = cn.createStatement();
		ResultSet rs = st.executeQuery("select * from view_firstyear where branch='"+branch+"' and yr='"+year+"'");

		
		while(rs.next()){
	%>
		<tr bgcolor="#ede1eb">
			
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("htno") %></td>
			<td><%=rs.getString("firstyear") %></td>
			<td><%=rs.getString("fiapnos") %></td>
			<td><%=rs.getString("fiamount") %></td>
			<td><%=rs.getString("fitype") %></td>
			
					<td><%=rs.getString("date") %></td>
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
          <%@ include file="footer.jsp" %>
        </div>
        </div>
    </div>
</body>
</html>