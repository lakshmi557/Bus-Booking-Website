<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ramineni Travels</title>
  		<meta charset="utf-8">
  		<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
      			</ul>
    		</div>
		</nav>

		<div class="jumbotron text-center">
  			<h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  			<p>We'll drive you happy!</p> 
  		</div>
		<%
			String str=(String)session.getAttribute("agnname"); 
		%>
  		<h2>Welcome Agent,</h2>
  		<h3>Agent Id: &nbsp;<%= str%></h3>
		<script type="text/javascript">
			function bus_details() 
			{
				window.location.href = "busdetails_Agent.jsp";
			}
			function book_tickets() 
			{
				window.location.href = "bookbus.jsp";
			}
			function booked_tickets() 
			{
				window.location.href = "bookedTicketsAgn.jsp";
			}
		</script>
		<div>
			<font color="black" size="05">Services:</font><br>
			<button onclick="bus_details()" class="btn btn-danger">Bus Details</button>
			<br><br>
			<button onclick="book_tickets()" class="btn btn-danger">Book Tickets</button>
			<br><br>
			<button onclick="booked_tickets()" class="btn btn-danger">Booked Tickets</button>
			<br><br><br><br>
		<footer class="container-fluid text-center" id="copyright">
 			<p>Copyright &copy; RAMINENI travels.com</p>
		</footer>
	</body>

</html>