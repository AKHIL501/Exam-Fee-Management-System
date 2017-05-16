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
        <%@ include file="btechheader.jsp" %>

        <div id="contentwrap">
        <div id="content">
        <center>				<form action="R13action.jsp" method="post">
<input type="hidden" name="reg" value="R13">
					<table>
<tr>
<td>UserId</td>
<td><input type="text" name="uid" size="10" readonly required value="<%out.println(session.getAttribute("username"));%>" ></td>
</tr>

<tr>
<td>Student HT No:</td>
<td><input type="text" name="htno" size="10" required></td>
<td>Branch:</td>
<td><select name="branch" required>
									<option value="CSE">CSE</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="MECH	">MECH</option>
									<option value="AGRI">AGRI</option>
							</select></td>
							<td>Current Year:</td>
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
							<select name="fnos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							</select>
							</td>
						
								
								
								
								
								
								

							<td>Amount:</td>
							<td> <input
								type="text" name="famt" id="famt" value="0" size="4"></td>
								
								
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
							
							<select name="tonos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select>
							
							
							
							
							
							
							</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="toamt" id="toamt" value="0" required="required"
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
						<select name="ttnos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select>
						
						
						
						
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="ttamt" id="ttamt" value="0" required="required"
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
						
						
						<select name="thonos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select>
						
						
						
						
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="thoamt" id="thoamt" value="0"
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
						<select name="thtnos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select></td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="thtamt" id="thtamt" value="0"
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
						<select name="fonos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select>
						</td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="foamt" id="foamt" value="0" required="required"
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
						<select name="ftnos">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							
							</select></td>

						<td >Amount:</td>
						<td >   <input
							type="text" name="ftamt" id="ftamt" value="0" required="required"
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