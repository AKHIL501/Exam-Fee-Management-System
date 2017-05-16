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
		<center>
           <form action="" method="post">
           <table>
           <tr>
          <td>Enetr Recipt Id</td>
          <td><input type="text" size="4" name="id"></td>
          <td><input type="submit" value="VIEW DETAILS" name="VWD"></td>
     
          
          </tr>
           </table>
           </form>
           </center>
        <%@ page import="java.sql.*" %>
        <% 
        try{
        	
        
        String id=request.getParameter("id");
          session.setAttribute("id",id);
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ssitexam","root","");
        Statement st=cn.createStatement();
        ResultSet rs=st.executeQuery("select * from fee where id='"+id+"'");
       
        while(rs.next())
        {
        	
        	String rcid = rs.getString(1);
			String stname = rs.getString(4);
			String fy = rs.getString(9);
			String ssf = rs.getString(13);
			String ssss = rs.getString(17);
			String stf = rs.getString(21);
			String sts = rs.getString(25);
			String sff = rs.getString(29);
			String ssts = rs.getString(33);

			int fy1 = Integer.parseInt(fy);
			int sf1 = Integer.parseInt(ssf);
			int ss1 = Integer.parseInt(ssss);
			int tf1 = Integer.parseInt(stf);
			int ts1 = Integer.parseInt(sts);
			int ff1 = Integer.parseInt(sff);
			int fs1 = Integer.parseInt(ssts);

			int total = (fy1) + (sf1) + (ss1) + (tf1) + (ts1) + (ff1)
					+ (fs1);

			
			
			

			%>
			<center><table>
			<tr>
			<th colspan="3">Student Copy (To be retained by the student for reference)</th>
			</tr>
			
			<tr>
			<td>Hall Ticket No<%=rs.getString("htno") %></td>
			<td>Receipt No<%=rs.getString("id") %></td>
			<td>Payment Date<%=rs.getString("date") %></td>
			</tr>
			
			
			
			
			<tr>
			<td>Year</td>
			<td>No Of Subjects Applied</td>
			<td>Type</td>
			</tr>
			
			<tr>
			<td>1</td>
			<td><%=rs.getString(8) %></td>
			<td><%=rs.getString(10) %></td>
			</tr>
			<tr>
			<td>2-1</td>
			<td><%=rs.getString(12) %></td>
			<td><%=rs.getString(14) %></td>
			</tr>
			<tr>
			<td>2-2</td>
			<td><%=rs.getString(16) %></td>
			<td><%=rs.getString(18) %></td>
			<tr>
			<td>3-1</td>
			<td><%=rs.getString(20) %></td>
			<td><%=rs.getString(22) %></td>
			</tr>
			<tr>
			<td>3-2</td>
			<td><%=rs.getString(24) %></td>
			<td><%=rs.getString(26) %></td>
			</tr>
			<tr>
			<td>4-1</td>
			<td><%=rs.getString(28) %></td>
			<td><%=rs.getString(30) %></td>
			</tr>
			<tr>
			<td>4-2</td>
			<td><%=rs.getString(32) %></td>
			<td><%=rs.getString(34) %></td>
			</tr>
			
			
			</table>	
			
			<table align="center">
			<tr>
			<th colspan="3">Office Copy</th>
			</tr>
			
			<tr>
			<td>Hall Ticket No<%=rs.getString("htno") %></td>
			<td>Receipt No<%=rs.getString("id") %></td>
			</tr>
			
			<tr>
			<td>Total amount</td>
			<td><%=total %></td>
			
			</table>	
			</center>		
			
						
			
			
			
			
			
		
 		
 		
 		<center>				<form action="R13editaction.jsp" method="post">
 		
 		<input type="hidden" name="idd" value=" <%out.println(session.getAttribute("id"));%> ">

					<table>
<tr>
<td>UserId</td>
<td><input type="text" name="uid" size="10" readonly required value="<%out.println(session.getAttribute("username"));%>" ></td>
</tr>

<tr>
<td>Student HT No:</td>
<td><input type="text" name="htno" value="<%=rs.getString(3) %>" size="10" required></td>
<td>Branch:</td>
<td><select name="branch" required>
									<option value="CSE">CSE</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="MECH	">MECH</option>
									<option value="AGRI">AGRI</option>
							</select></td>
							<td>Year:</td>
<td><select name="year" required>
									<option value="I">I</option>
									<option value="II">II</option>
									<option value="III">III</option>
									<option value="IV">IV</option>
									
							</select></td>

</tr>
<tr>

							<td> <input
								type="text" name="fiy" id="fiy" value="FIRST YEAR"
								required="required" readonly="readonly" /></td>

							<td>Apply no.of subjects:</td>
							<td>
							
							<input type="text" name="fnos" size="3" value="<%=rs.getString(8) %>">
							
							</td>
						
								
								
								
								
								
								

							<td>Amount:</td>
							<td> <input
								type="text" name="famt" id="famt" value="<%=rs.getString(9) %>" size="4"></td>
								
								
							<td>Type</td>	
							<td><select name="ffir">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						
						</tr>
<tr>

						<td >   <input
							type="text" name="sf" id="sf" value="TWO_ONE" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >   
							<input type="text" name="tonos" size="3" value="<%=rs.getString(12) %>">
							</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="toamt" id="toamt" value="<%=rs.getString(13) %>" required="required"
							size="4"></td>

							<td >Type</td>	
							<td><select name="sfs">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
							</tr>
							<tr>

						<td >   <input
							type="text" name="ss" id="ss" value="TWO_TWO" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >   
						<input type="text" name="ttnos" size="3" value="<%=rs.getString(16) %>">
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="ttamt" id="ttamt" value="<%=rs.getString(17) %>" required="required"
							size="4"></td>

						<td >Type</td>	
							<td><select name="sss">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						</tr>
						
						<tr>

						<td >   <input
							type="text" name="tf" id="tf" value="THREE_ONE" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >   
						
						<input type="text" name="thonos" size="3" value="<%=rs.getString(20) %>">
												
						
						
						
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="thoamt" id="thoamt" value="<%=rs.getString(21) %>"
							required="required" size="4"></td>
							
							<td >Type</td>	
							<td><select name="tfs">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						</tr>
						<tr>
						<td >   <input
							type="text" name="ts" id="ts" value="THREE_TWO" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >
						
						<input type="text" name="thtnos" size="3" value="<%=rs.getString(24) %>">
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="thtamt" id="thtamt" value="<%=rs.getString(25) %>"
							required="required" size="4"></td>

						<td >Type</td>	
							<td><select name="tss">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						</tr>
<tr>
						<td >   <input
							type="text" name="ff" id="ff" value="FOUR_ONE" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >  
						<input type="text" name="fonos" size="3" value="<%=rs.getString(28) %>">
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="foamt" id="foamt" value="<%=rs.getString(29) %>" required="required"
							size="4"></td>

						<td >Type</td>	
							<td><select name="ffs">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						</tr>


<tr>						<td >   <input
							type="text" name="fs" id="fs" value="FOUR_TWO" required="required"
							readonly="readonly" /></td>

						<td >Apply no.of subjects:</td>
						<td >   
						<input type="text" name="ftnos" size="3" value="<%=rs.getString(32) %>"></td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="ftamt" id="ftamt" value="<%=rs.getString(33) %>" required="required"
							size="4"></td>

						<td >Type</td>	
							<td><select name="fss">
							<option value="none">NONE</option>
							<option value="regular">REGULAR</option>
							<option value="supply">SUPPLY</option>
							</select></td>
						</tr>
						<tr>

							<td >Date:</td>
							<td><input type="text" name="date" id="out_date"
								required="required" /></td>

						</tr>
						<tr>
							<td ><label for="Submit"></label>
								<input type="submit" name="Submit" value="Submit" id="Submit" />
							</td>
						</tr>




</table>



				</form></center>
					<% 

        }
        
        }
        catch(Exception e)
        {
        	out.println(e);
        }
        
        
        
        
        %>
            
		
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