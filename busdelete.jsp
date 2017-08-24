<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="mycasestudy.DetailConn" %>   
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="theme.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete bus</title>
</head>
<%!
		DetailConn print =new DetailConn();
		ResultSet rs =null;
%>
<body background="Images/126.jpg">
<div class="container">
<header>
   <h1 align="right">RAMINENI travels.com</h1>
</header>
  
<nav>
  <ul>
	<li><a href="admin_home.jsp">Home</a></li>
    <li><a href="logout.jsp">Log out</a></li>
    <li><a href="Contact_us.html">Contact Us</a></li>
  </ul>
</nav>
<article>

	<h1 align="CENTER">BUS DETAILS</h1>
	<table border=2>
	<tr>
		<th>bus_id
		<th>route_name
		<th>one_way_ticket_rate
		<th>start_times
		<th>vehicle_no
		<th>service_no <%
          rs=print.get_bus_Details();
          while(rs.next()){
           %>
		<tr>
			<td width=1000><%= rs.getString(1) %></td>
			<td width=1000><%= rs.getString(2) %></td>
			<td width=1000><%= rs.getString(3) %></td>
			<td width=1000><%= rs.getString(4) %></td>
			<td width=1000><%= rs.getString(5) %></td>
			<td width=1000><%= rs.getString(6) %></td>
		</tr>
		<%} %>
	</table>
	<script type="text/javascript">
   function validateForm() {
    var x = document.forms["myForm"]["id"].value;
    if(isNaN(x))
 	{
 	alert("Enter only number in bus_id");
 	document.myform.id.focus();
 	return false;
	 }
   }
   </script>
	
<center>	
	<form method="post" action="BusDelete">
	<br>
				<font color="red" size="05">Delete Bus</font>
				<table>
				 <tr>
					<td>Bus Id</td>
					<td><input type="text" name="id" onblur="return validateForm()" required></td>
				</tr>
			</table>
			<input type="submit" value="Delete" />
</form>
</center>
</article>
</div>
<footer>Copyright &copy; RAMINENI travels.com</footer>


</body>
</html>