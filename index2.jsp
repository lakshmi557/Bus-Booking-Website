<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="theme.css">
</head>
<body background="Images/126.jpg">
<div class="container">
<header>
<h1 align="right">RAMINENI travels.com</h1>
</header>
  
<nav>
<ul>
<li><a href="About_us.html">About Us</a></li>
<li><a href="Contact_us.html">Contact Us</a></li>
<li><a href="agentreg.jsp">Register</a></li>
</ul>
</nav>
<article>
Ramineni Travels is a transport company that runs busses between standard routes like Vijayawada-Hyderabad, Mumbai-Hyderabad, Chennai-Hyderabad and Bangalore-Hyderabad having the latest VOLVO type of busses on its fleet. 
As the Tourists and travellers prefer these busses very much, the company management thought of introducing seasonal tickets for these customers so that they can stick to their own company service.
It also provides a web-based reservation system for all of its bus routes at various points.
<br><br><br><br><center>
<form method="post" action="AgentServlet">
<table border="2" cellpadding="6"><td>
<strong>Agent/Admin:</strong>
<table>

<tr>
<td><input type="text" name="agn_code" placeholder="User ID" required><br></td>
</tr>

<tr>
<td><input type="password" name="apwd" placeholder="Password" required><br></td>
</tr>

</table>

<center>
<input type="submit" value="Login" name="login" /><br>
New Agent? <input type="button" onclick="location.href='agentreg.jsp';"
value="Sign up"/></center>
</td></table>

</form>
</center>
<br><br>
<marquee>Please read the <a href="http://localhost:8080/bus_booking_agent/agentreg.jsp">Agent Membership Registration Form</a> carefully before submitting the application. The minimum period of membership i.e. 6 months. is mandatory. This is effective from 10th Jan 2016.</marquee>
<br><br>
</article>



<footer>Copyright &copy; RAMINENI travels.com</footer>
</div>

</body>
</html>