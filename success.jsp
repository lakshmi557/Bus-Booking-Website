<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="theme.css">
<meta charset="ISO-8859-1">
<title>success</title>

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
	<script type="text/javascript">
		alert("Work Done Successfully!!!!!!Please check Bus Details!!");
	</script>
	<%
		session.invalidate();
	%>
	<p align="right">
		<a href="admin_home.jsp">Home</a><br> <br>
	</p>

	<p align="left" class="para">
		<font color="grey" size="04">Ramineni Travels is a transport
			company that runs buses between standard routes like
			Vijaywada-Hyderabad, Mumbai-Hyderabad,Chennai-Hyderabad and
			Banglore-Hyderabad having the latest VOLVO type of buses on its
			fleet.<br>As the Touristss and travleeres prefer these buses
			very much, the company management thought of introducing seasonal
			tickets for these customers so that they can stick to their own
			company service.<br>It also provides a web-based reservation
			system for all of its bus routes at various points in hyderabad and
			also gave a specific capacity of seats to be sold to various
			operators in city like kukkatpally,Ameerpet,Dilsukhnagar,Koti.
		</font>
	</p>

</article>
</div>
<footer>Copyright &copy; RAMINENI travels.com</footer>


</body>
</html>