<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="theme.css">
<title>Bus Booking Agents</title>

</head>
<body background="Images/126.jpg">
<div class="container">
<header>
   <h1 align="right">RAMINENI travels.com</h1>
</header>
  
<nav>
  <ul>
    <li><a href="Login.htm">Login</a></li>
    <li><a href="Contact_us.html">Contact Us</a></li>
    <li><a href="Register.html">Register</a></li>
  </ul>
</nav>
<article>

	<p align="right">
		<a href="index.jsp">Home</a>
	</p>

	<p align="center"><h3>
		<b>Successfully Registered. Your Agent Id is =<%
			out.println((String) request.getAttribute("v_agn"));
		%>.<br> Please Login After 24 Hours.
		</b>
		</h3></p>

		<p align="left" class="para">
			<font color="grey" size="04">
			</font>
		</p>
		<br> <br> <br> <br> <br> <br> <br>
</article>

<footer>Copyright &copy; RAMINENI travels.com</footer>
</div>

</body>
</html>