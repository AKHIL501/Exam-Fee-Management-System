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
        <%@ page import="java.sql.*"%>
    	<%
		try {
			String id = "";
			String uid = request.getParameter("uid");
		    String htno = request.getParameter("htno");
			String branch = request.getParameter("branch");
			String year = request.getParameter("year");
			String fiy = request.getParameter("fiy");
			String fnos = request.getParameter("fnos");
			String famt = request.getParameter("famt");
			String ffir = request.getParameter("ffir");
			String sf = request.getParameter("sf");
			String tonos = request.getParameter("tonos");
			String toamt = request.getParameter("toamt");
			String sfs = request.getParameter("sfs");
			String ss = request.getParameter("ss");
			String ttnos = request.getParameter("ttnos");
			String ttamt = request.getParameter("ttamt");
			String sss = request.getParameter("sss");
			String tf = request.getParameter("tf");
			String thonos = request.getParameter("thonos");
			String thoamt = request.getParameter("thoamt");
			String tfs = request.getParameter("tfs");
			String ts = request.getParameter("ts");
			String thtnos = request.getParameter("thtnos");
			String thtamt = request.getParameter("thtamt");
			String tss = request.getParameter("tss");
			String ff = request.getParameter("ff");
			String fonos = request.getParameter("fonos");
			String foamt = request.getParameter("foamt");
			String ffs = request.getParameter("ffs");
			String fs = request.getParameter("fs");
			String ftnos = request.getParameter("ftnos");
			String ftamt = request.getParameter("ftamt");
			String fss = request.getParameter("fss");
			String date = request.getParameter("date");
			String reg = request.getParameter("reg");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ssitexam", "root", "");
			
			Statement st = cn.createStatement();

			st.executeUpdate("insert into fee values('" + id+ "','" + uid + "','"+ htno + "','" + branch + "','"+year+"','"+reg+"','" + fiy + "','" + fnos+ "','" + famt + "','" + ffir + "','" + sf + "','"+ tonos + "','" + toamt + "','" + sfs + "','" + ss+ "','" + ttnos + "','" + ttamt + "','" + sss + "','"+ tf + "','" + thonos + "','" + thoamt + "','" + tfs+ "','" + tf + "','" + thtnos + "','" + thtamt + "','"+ tss + "','" + ff + "','" + fonos + "','" + foamt+ "','" + ffs + "','" + fs + "','" + ftnos + "','"+ ftamt + "','" + fss + "','" + date + "')");

			ResultSet rs = st.executeQuery("select * from fee where htno='"
					+ htno + "' and date='" + date + "'");

			while (rs.next()) {
				String rcid = rs.getString(1);
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
				<table align="center">
				<tr>
				<th colspan="3">Student Copy (To be retained by the student for reference)</th>
				</tr>
				
				<tr>
				<td>Hall Ticket No<%=rs.getString("htno") %></td>
				<td>Receipt No<%=rs.getString("id") %></td>
				<td>Payment Date<%=rs.getString("date") %></td>
				</tr>
				
				
				
				
				
				<td>Year</td>
				<td>No Of Subjects Applied</td>
				<td>Type</td>
				
				<tr>
				<td>1</td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(9) %></td>
				</tr>
				<tr>
				<td>2-1</td>
				<td><%=rs.getString(11) %></td>
				<td><%=rs.getString(13) %></td>
				</tr>
				<tr>
				<td>2-2</td>
				<td><%=rs.getString(15) %></td>
				<td><%=rs.getString(17) %></td>
				<tr>
				<td>3-1</td>
				<td><%=rs.getString(19) %></td>
				<td><%=rs.getString(21) %></td>
				</tr>
				<tr>
				<td>3-2</td>
				<td><%=rs.getString(23) %></td>
				<td><%=rs.getString(25) %></td>
				</tr>
				<tr>
				<td>4-1</td>
				<td><%=rs.getString(27) %></td>
				<td><%=rs.getString(29) %></td>
				</tr>
				<tr>
				<td>4-2</td>
				<td><%=rs.getString(31) %></td>
				<td><%=rs.getString(33) %></td>
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
				<tr>
				<td>
				<input type="button" value="PRINT" onclick="javascipt:window.print()" /></td>
				<td>
<a href="btech.jsp">BACK</a></td>
				</tr>
				</table>			
				
				
				
				
				
				
				
				<% 

			}
		} catch (Exception e) {
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