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
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="theme.css">
</head>
<body id="myPage">
		<nav class="navbar navbar-default navbar-fixed-top">
  		<div class="container">
    		<div class="navbar-header">
    			<a href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    		</div>
   			<ul class="nav navbar-nav navbar-right">
		        <li><a href="logout.jsp">LOGOUT</a></li>
		        <li><a href="agent_home.jsp">BACK</a></li>
      		</ul>
    	</div>
		</nav>

		<div class="jumbotron text-center">
  			<h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  			<p>We'll drive you happy!</p> 
  		</div>

       <%
	       DetailConn print = new DetailConn();
	       ResultSet rs = null;
	       session = request.getSession(false);
	       String agn_id = (String) session.getAttribute("agnname");
       %>
       <h2>Welcome Agent-<%=agn_id%></h2><br><br>
       <table border=2 width="100%">
       		<tr>
              <th>Bus_id
              <th>Route_name
              <th>Date_of_Journey
              <th>Time
              <th>Service_No
              <th>Booking_Id
              <th>Number_of_Tickets
              <th>Price_Per_Seat
              <th>Total_Amount
              <%                     
                     rs = print.get_agent_bookedticket(agn_id);
                     while (rs.next()) {
              %>
              <tr>
                     <td width=100><%=rs.getInt(2)%></td>
                     <td width=100><%=rs.getString(3)%></td>
                     <td width=100><%=rs.getString(4)%></td>
                     <td width=100><%=rs.getString(5)%></td>
                     <td width=100><%=rs.getInt(6)%></td>
                     <td width=100><%=rs.getString(7)%></td>
                     <td width=100><%=rs.getInt(10)%></td>
                     <td width=100><%=rs.getInt(9)%></td>
                     <td width=100><%=rs.getFloat(8)%></td>
              </tr>
              <%}%></table>
              <%
                     rs.close();                     
                     rs = print.get_opr_commission(agn_id);                    
              %>
              <br><br>
              <table align="center" width="50%" border="2">
	              <tr>
	              	<% while (rs.next()) {%>
	                     <td><b>Total Commission</b></td>
	                     <td><b><%=rs.getFloat(1)%></b></td>         
             	  </tr>
             </table>
              <%}
                     rs.close();
              %><br><br><br><br><br><br>
		<footer class="container-fluid text-center" id="copyright">
  			<p>Copyright &copy; RAMINENI travels.com</p>
		</footer>
	</body>
</html>