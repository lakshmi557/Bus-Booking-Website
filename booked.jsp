<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>booked</title>
<link rel="stylesheet" type="text/css" href="theme.css">

</head>
<body background="Images/126.jpg">
<div class="container">
<header>
   <h1 align="right">RAMINENI travels.com</h1>
</header>
  
<nav>
  <ul>
    <li><a href="Contact_us.html">Contact Us</a></li>
    <li><a href="agentreg.jsp">Register</a></li>
  </ul>
</nav>
<article>

<p align="right">
		<a href="agent_home.jsp">Back</a>
</p>

	<h3 align="left" color="black">
		Your booking ID is
		<%=(String) request.getAttribute("book_id")%></h3>


	<br><br><br><br><br><br><br><br><br>
</article>
</div>
<footer>Copyright &copy; RAMINENI Travels.com</footer>
</body>
</html>

</body>
</html>