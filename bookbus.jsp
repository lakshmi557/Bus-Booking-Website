<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Ramineni Travels</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  
  <link rel="stylesheet" href="theme.css">

</head>
<body id="myPage">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
          <a class="navbar-brand" href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
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
<script>
  $( function() {
    $( '#datepicker' ).datepicker('show')({
    	    format: 'mm/dd/yyyy' 
    });
  } );
  </script>
	<form name="f1" action="BookBus" method="post">
	<h2>Book Tickets:</h2>
		<table align="left" border=0>
			<div id="errorBox"></div>
			<tr>
				<td><b>Bus</b></td>
				<td><select name="trip" id="trip" onchange="route_time()" required>
						<option value="Vijaywada-Hyderabad">Vijaywada-Hyderabad</option>
						<option value="Hyderabad-Vijaywada">Hyderabad-Vijaywada</option>
						<option value="Mumbai-Hyderabad">Mumbai-Hyderabad</option>
						<option value="Hyderabad-Mumbai">Hyderabad-Mumbai</option>
						<option value="Chennai-Hyderabad">Chennai-Hyderabad</option>
						<option value="Hyderabad-Chennai">Hyderabad-Chennai</option>
						<option value="Banglore-Hyderabad">Bangalore-Hyderabad</option>
						<option value="Hyderabad-Banglore">Hyderabad-Bangalore</option>
				</select></td>
			</tr>
			
			<tr>
				<td><b>Date of Journey</b></td>
				<td><input type="date" id="datepicker" name="date" required>
			</tr>
			
			<tr>
				<td><b>Time</b></td>
				<td><select name="time" id="vh" style="display: none;">
						<option value="null"></option>
						<option value="8am">8am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time1" id="hv" style="display: none;">
						<option value="null"></option>
						<option value="3pm">3pm</option>
						<option value="5am">5am</option>
				</select> <select name="time2" id="mh" style="display: none;">
						<option value="null"></option>
						<option value="7am">7am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time3" id="hm" style="display: none;">
						<option value="null"></option>
						<option value="9am">9am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time4" id="ch" style="display: none;">
						<option value="null"></option>
						<option value="7am">7am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time5" id="hc" style="display: none;">
						<option value="null"></option>
						<option value="9am">9am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time6" id="bh" style="display: none;">
						<option value="null"></option>
						<option value="7am">7am</option>
						<option value="8pm">8pm</option>
				</select> <select name="time7" id="hb" style="display: none;">
						<option value="null"></option>
						<option value="9am">9am</option>
						<option value="8pm">8pm</option>
				</select>
			</tr>
			<tr>
				<td><b>No. of Tickets</b></td>
				<td><input type="number" id="ticket" name="notick" max="6" min="1"></td></tr>
				<tr><td><input type="Submit" value="Book Ticket" class="btn btn-danger"></td></tr>
		</table>
	</form><br><br><br><br><br><br><br><br><br>
	<script type="text/javascript">
		function route_time() {
			if (document.getElementById("trip").value == "Vijaywada-Hyderabad") {
				document.getElementById("vh").style.display = '';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';

			}
			if (document.getElementById("trip").value == "Hyderabad-Vijaywada") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = '';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Mumbai-Hyderabad") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = '';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Hyderabad-Mumbai") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = '';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Chennai-Hyderabad") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = '';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Hyderabad-Chennai") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = '';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Banglore-Hyderabad") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = '';
				document.getElementById("hb").style.display = 'none';
			}
			if (document.getElementById("trip").value == "Hyderabad-Banglore") {
				document.getElementById("vh").style.display = 'none';
				document.getElementById("hv").style.display = 'none';
				document.getElementById("mh").style.display = 'none';
				document.getElementById("hm").style.display = 'none';
				document.getElementById("ch").style.display = 'none';
				document.getElementById("hc").style.display = 'none';
				document.getElementById("bh").style.display = 'none';
				document.getElementById("hb").style.display = '';
			}
		}
		
	</script>
			<footer class="container-fluid text-center" id="copyright">
 
  <br><p>Copyright &copy; RAMINENI travels.com</p>
</footer>
</body>
</html>