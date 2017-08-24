<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ramineni Travels</title>
 	<link rel="stylesheet" href="theme.css">
</head>
<body id="myPage">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a  href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    </div>    
    <p align="right">
    <a href="logout.jsp">LOGOUT</a></p>   
  </div>
</nav><div class="jumbotron text-center">
  <h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  <p>We'll drive you happy!</p> 
</div>



<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Hello ADMIN,</h2>
      <div class="input-group-btn">
      	<button class="btn btn-danger" onclick="window.location.href='busdetails.jsp';">Bus Details</button>
		<button class="btn btn-danger" onclick="window.location.href='agentdetails.jsp';">Agent Details</button>
		<button class="btn btn-danger" onclick="window.location.href='bookedTickets.jsp';">Booked Tickets</button>
		<button class="btn btn-danger" onclick="window.location.href='approvals.jsp';">Pending Approval</button>
	  </div>
	</div>   
  </div>
</div>

	<footer class="container-fluid text-center" id="copyright">
  		<p align="center">Copyright &copy; RAMINENI travels.com</p>
	</footer>
</body>

</html>