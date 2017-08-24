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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="theme.css">
	 <style>
  		#about
  		{
  			margin-top: -60px;
  		}
 	 </style>

</head>
<body id="myPage">
	<nav class="navbar navbar-default navbar-fixed-top">
  		<div class="container">
   	 		<div class="navbar-header">    
      			<a href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
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

	<%!
		DetailConn print =new DetailConn();
		ResultSet rs =null;
	%>
	<h2>Hello Admin</h2>
	<div id="about" class="container-fluid">
     <h2 align="left">BUS DETAILS:</h2>
		<table border=1 width=80%>
              <th>bus_id<th>route_name<th>one_way_ticket_rate<th>start_times<th>vehicle_no<th>service_no
              <%
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
  </div>

	<footer class="container-fluid text-center" id="copyright">
 		<p>Copyright &copy; RAMINENI travels.com</p>
	</footer>
</body>
</html>