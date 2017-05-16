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

<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="../css/6762.css" />
<script language="javascript">
function fncSubmit()
{

	if(document.ChangePasswordForm.OldPassword.value == "")
	{
		alert('Please input old password');
		document.ChangePasswordForm.OldPassword.focus();
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value == "")
	{
		alert('Please input Password');
		document.ChangePasswordForm.newpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.conpassword.value == "")
	{
		alert('Please input Confirm Password');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
	{
		alert('Confirm Password Not Match');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

		document.ChangePasswordForm.submit();
}
</script>
</head>
<body>
    <div id="wrapper">
        <%@ include file="btechheader.jsp" %>
        

        <div id="contentwrap">
        <div id="content">
         

<form name="ChangePasswordForm" method="post" action="" OnSubmit="return fncSubmit();">
 
  <table border="1"  align="center" >
    
     <tr>
        <td>USER NAME</td>
       <TD><input name="username" type="text" id="uname" value="<%out.println(session.getAttribute("username"));%>" size="20" readonly></td>
      </tr>
      <tr>
        <td>OLD PASSWORD</td>
       <TD><input name="OldPassword" type="password" id="OLDpwd" size="20"></td>
      </tr>
      <tr>
        <td>NewPassword</td>
        <td><input name="newpassword" type="password" id="newpassword">
        </td>
      </tr>
      <tr>
        <td>Confirm Password</td>
        <td><input name="conpassword" type="password" id="conpassword">
        </td>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Update"></td>
      </tr>
   
  </table>
  </form>
  <%@page import="java.sql.*"%>

<%
	String username = request.getParameter("username");
	String OldPassword = request.getParameter("OldPassword");
	String Newpass = request.getParameter("newpassword");
	String conpass = request.getParameter("conpassword");
	
	
   
	String pass = "";
	int id = 0;
	try {
		 
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/ssitexam", "root", "");
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from login where username= '"+ username + "' and password='"+OldPassword+"'");
		if (rs.next()) {			
			pass = rs.getString("password");
		}		
		if(Newpass.equals(conpass))
		{
		if (pass.equals(OldPassword)) {
			st = con.createStatement();
			int i = st.executeUpdate("update login set password='"+ Newpass + "' where username='"+username+"'");
			out.println("Password changed successfully");
			st.close();
			con.close();
		} else {
			out.println("Old Password doesn't match");
		}
		
	}
         
	} catch (Exception e) {
		out.println(e);
	}
%>
      
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