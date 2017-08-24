<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Ramineni Travels</title>
  <style>
  #register
  {
  	margin-top:-90px;
  }
  </style>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="theme.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">    
      <a href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    </div>   
   
        <p align="right">
       
         <a href="index.jsp">HOME</a>
       	<a href="#register">REGISTER</a>
      </p>
   
  </div>
</nav>


<div class="jumbotron text-center">
  <h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  <p>We'll drive you happy!</p> 
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
 
</div> 

<div id="register">
<h1 align="center" >Agent Registration</h1>
<marquee scrollamount="5">Please read the <b>Agent Membership Registration Form </b> carefully before submitting the application. The minimum period of membership i.e. 6 months. is mandatory. This is effective from 1<small>st</small> March 2017.</marquee>

<script>
  $( function() {
    $( '#datepicker' ).datepicker('show')({
    	    format: 'mm/dd/yyyy' 
    });
  } );
  </script>
  
<form name="myform1" action="AgentReg" method="post">
	<div id="errorBox"></div>
 		<table>
			<tr>
			<td>Name:</td>
			<td><input type="text" name="name" pattern="[A-Za-z0-9].{3,}" required></td>
			</tr>
			<tr>
			<td>Gender:</td>
 			<td><input type="radio" name="gender" value="Male" checked="checked">
			Male <input type="radio" name="gender" value="Female">
			Female</td>
			</tr>
			<tr>
			<td>Date of birth:</td>
			<td><input type="date" id="datepicker" name="dob" max="1999-01-01" required></td><td>(MM/DD/YYYY)</td>
			</tr>
			<tr>
			<td>Email id:</td>
			<td><input type="email" name="email_id" required></td>
			</tr>
			<tr>
			<td>Phone no:</td>
			<td><input type="text" name="phone_no" id="phone_no" pattern=[0-9]{10} required>
			</td>
			</tr>
			<tr>
			<td>Address:</td>
			<td><input type="text" name="add" required></td>
			</tr>
			<tr>
			<td>Location:</td>
			<td><select name="loc">
				<option value="Banglore">Banglore</option>
				<option value="Chennai">Chennai</option>
				<option value="Hyderabad">Hyderabad</option>
				<option value="Mumbai">Mumbai</option>
				<option value="Vijayawada">Vijayawada</option>
				</select>
			</tr>
			<tr>
			<td>Password:</td>
			<td><input type="password" name="apwd"  pattern=".{6,}" required></td>
			</tr>
			<tr>
			<td>Confirm Password:</td>
			<td><input type="password" name="confpwd" onchange="return validateconfpass()" required></td>
			</tr>
			</table>
			
			<input type="checkbox" required>I agree to abide the minimum period of 6 months and commission of 10%.
			<br> <br> <input type="submit" value="Submit">
			<input type="reset" value="Reset">
			</form>
<script>
	function validateconfpass() {
		var confpass = document.myform1.confpwd.value;
		var pwd = document.myform1.apwd.value;
		if (pwd != confpass) {
			alert("Password does not match");
			document.myform1.confpwd.focus();
			return false;
			}
		}
</script>
</div><br><br><br><br><br>
<footer class="container-fluid text-center" id="copyright">
  
  <p align="center">Copyright &copy; RAMINENI Travels.com</p>
</footer>
</body>

</html>