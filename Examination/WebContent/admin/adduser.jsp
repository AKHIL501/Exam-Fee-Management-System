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
       
          <%@include file="adminheader.jsp" %>       
        

        <div id="contentwrap">
        <div id="content">
        
        <form action="" method="post">
					<table width="100%" border="0">
						<tr>
							<td colspan="2" align="center"></td>
						</tr>
						<tr>
							<td width="51%" align="right"><b><span
									style="color: #ff3300">FirstName *:</span></b></td>
							<td width="49%"><label> <input name="firstname"
									type="text" id="firstname" required="required">
							</label></td>
						</tr>
						<tr>
							<td width="51%" align="right"><b><span
									style="color: #ff3300">LastName *:</span></b></td>
							<td width="49%"><label> <input name="lastname"
									type="text" id="lastname" required="required">
							</label></td>
						</tr>
						<tr>
							<td width="51%" align="right"><b><span
									style="color: #ff3300">Email *:</span></b></td>
							<td width="49%"><label> <input name="email"
									type="text" id="email" required="required">
							</label></td>
						</tr>
						<tr>
							<td width="51%" align="right"><b><span
									style="color: #ff3300">Phone *:</span></b></td>
							<td width="49%"><label> <input name="phone"
									type="text" id="phone" required="required">
							</label></td>
						</tr>
						<tr>
							<td width="51%" align="right"><b><span
									style="color: #ff3300">UserName *:</span></b></td>
							<td width="49%"><label> <input name="username"
									type="text" id="username" required="required">
							</label></td>
						</tr>

						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>





						<tr>
							<td align="right"><b><span style="color: #ff3300">Password
										*:</span></b></td>
							<td><input name="password" type="password" id="password"
								required="required"></td>
						</tr>

						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>



						<tr>
						<tr>
							<td align="right"><b><span style="color: #ff3300">Position
										*:</span></b></td>
							<td><select name="position">
									<option>admin</option>
									<option>principal</option>
									<option>user</option>
							</select></td>
						</tr>

						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>



						<tr>



							<td colspan="2" align="center"><label> <input
									type="submit" name="Submit" value="Submit">
							</label></td>
						</tr>
					</table>
				</form>
				 <%@ page import ="java.sql.*" %>
           
             <%
             
             try{
            	 String firstname = request.getParameter("firstname"); 
            	 String lastname = request.getParameter("lastname"); 
            	 String email = request.getParameter("email"); 
            	 String phone = request.getParameter("phone"); 
                 String user = request.getParameter("username");    
                 String pwd = request.getParameter("password");
                 String pos = request.getParameter("position");
                 if(user.equals(null)||pwd.equals(null))
                 {
                	 
                 }else
                 {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ssitexam","root", "");
                 Statement st = cn.createStatement();
                 int i=st.executeUpdate("insert into login values ('"+firstname+"','"+lastname+"','"+email+"','"+phone+"','" + user+ "','" + pwd + "','" + pos + "')");
                 if (i > 0) 
                 {
                 	out.println("User added successfully");
                 }
                 else{
                 	out.println("User insertion failed try again");
                 }
                 } 
             }
             catch(Exception e)
             {
             	
             }
              
             %>

        
        
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