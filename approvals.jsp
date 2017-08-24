<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="mycasestudy.DetailConn" %>   
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ramineni Travels</title>
  		<meta charset="utf-8">
 		<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="theme.css">
</head>
<body id="myPage">
	<nav class="navbar navbar-default navbar-fixed-top">
  		<div class="container">
    		<div class="navbar-header">
      			<a  href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    		</div>
    		<ul class="nav navbar-nav navbar-right">
        		<li><a href="logout.jsp">LOGOUT</a></li>
         		<li><a href="admin_home.jsp">BACK</a></li>
      		</ul> 
  		</div>
	</nav>

	<div class="jumbotron text-center">
  		<h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  		<p>We'll drive you happy!</p> 
  	</div>
	<h2><font face="cambria"></font>Pending Agents Approval</h2>
	<%
		DetailConn print=new DetailConn();
        ResultSet rs =null;
     %>
	
	<table border=2 width="100%">
		<th>Agn_id</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Date of Birth</th>
		<th>Email_id</th>
		<th>Phone_no</th>
		<th>Address</th>
		<th>Location</th>
		<th>Commission(%)</th>
		<th>Password</th>
		<th width="15%">Approve/Reject</th>
		<!-- ---------------------------------------------------------------------------- -->
		 <%
          	rs=print.get_agent_Details_pending();
          	while(rs.next()){
          %>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getLong(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>
			<td><%=rs.getInt(9) %></td>
			<td><%=rs.getString(10) %></td>
			<td>
			<form name="approve_form" action="apprej.jsp">
				<input type="hidden" name="agn_id" value="<%=rs.getString(1) %>">
				<input type="submit" name="actn" value="Approve" class="btn btn-success">
				<input type="submit" name="actn" value="Reject" class="btn btn-danger">
			</form>
			</td>
		</tr>
		<%} %>
		</table>
		<br><br><br><br><br><br><br><br>
		<footer class="container-fluid text-center" id="copyright">
 			<p>Copyright &copy; RAMINENI travels.com</p>
		</footer>
	</body>

</html>