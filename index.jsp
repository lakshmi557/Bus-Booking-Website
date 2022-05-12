<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Ramineni Travels</title>
 	 <style>
 		 .mySlides 
 		{
 			display:inline;
 			height: 700px;
 		} 
 		.slideShow
 		{
 			opacity: 0.9;
 		}
 		#about
 		{
 			position: absolute;
 			color: maroon;
 			background-image:url("bus5.jpg");
 			background-repeat:no-repeat;
 			background-size:cover;
 			margin-top: -900px;
 			font-size: 40px;
 			
 		}
 		#login
 		{
 			height: 550px;
 			background-image:url("bus6.jpg");
 			background-repeat: no-repeat;
 			background-size: cover;
 			font-size: 30px;
 		}
 		#contact
 		{
 			background-color: pink;
 			height:300px;
 		}
 		
 		.btn
 		{
 			height:35px;
 			width: 250px;
 		}
	</style>
  	<link rel="stylesheet" href="theme.css">

</head>
<body id="myPage" >
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
        <a href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
       	<p align="right">
       	<a href="#about">ABOUT</a>
        <a href="#login">LOGIN</a>
      	<a href="agentreg.jsp">REGISTER</a>
       	<a href="#contact">CONTACT</a></p>   
  </div>
</nav>

<div class="jumbotron ">
  <h1><font face="cambria" size=7 color=black>RAMINENI</font> &nbsp;Travels.com</h1> 
  <p>We'll drive you happy!</p> 
  <form>
  </form>
</div>


 <div class="slideShow" style="max-width:1500px">
 <img class="mySlides" src="Images/9.jpg" style="width:100%">
   <img class="mySlides" src="Images/13.jpg" style="width:100%">
  <img class="mySlides" src="Images/10.jpg" style="width:100%">
  <img class="mySlides" src="Images/12.jpg" style="width:100%"> 
  <img class="mySlides" src="Images/11.jpg" style="width:100%"> 
  <img class="mySlides" src="Images/14.jpg" style="width:100%">
  <img class="mySlides" src="Images/5.jpg" style="width:100%"> 
 </div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 2 seconds
}
 </script>



<!-- Container (About Section) -->

<div id="about" class="container-fluid">
  <div class="row">
    
      <h1>Ramineni Travels</h1>
      <h4 <span STYLE="color :red"></span>>
      
      Ramineni Travels is a transport company that runs busses between standard routes like Vijayawada-Hyderabad, Mumbai-Hyderabad, Chennai-Hyderabad and Bangalore-Hyderabad having the latest VOLVO type of busses on its fleet. 
As the Tourists and travellers prefer these busses very much, the company management thought of introducing seasonal tickets for these customers so that they can stick to their own company service.
It also provides a web-based reservation system for all of its bus routes at various points in Hyderabad and also gave a specific capacity of seats to be sold to various operators in city like Kukkatpally, Ameerpet, Dilsukhnagar, Koti.
      </h4><br>
      <br>
    
  </div>
</div>

<div id="login" class="container-fluid">
  <div class="row">

    <div class="col-sm-8" id="login_div">
     <h1 align="Center">Login</h1>
      <h3 align="center">Agent/Admin</h3>
     
      <form method="post" action="AgentServlet" >
      
		<table border="0" cellpadding="15" align="center"><td>
			<table>

				<tr>
					<td>User Name<br><input type="text" name="agn_code" class="btn btn-danger"  placeholder="User ID" required><br></td>
				</tr>
				<tr></tr>
				<tr>
					<td>Password<br><input type="password" name="apwd"  class="btn btn-danger"  placeholder="Password" required><br></td>
				</tr>

			</table><br>

			<div class="input-group-btn" >
				<input type="submit" value="&nbsp;&nbsp;Login&nbsp;&nbsp;" name="login" class="btn btn-danger" /><br>
				<input type="button" onclick="location.href='agentreg.jsp';" value="New Agent?" class="btn btn-danger" /><br>
				<input type="button" onclick="location.href='forgotpass.jsp'" value="Forgot Password?" class="btn btn-danger"/>
			</div>

	</td></table>
</form>

      <br>
      </div>
  </div>
</div>

<div id="contact" class="container-fluid text-center bg-grey">
  <h2>CONTACT US</h2><br>
    <b>Developers:</b><br>
    <p align="center">
    <table border="0" width="55%">
	<tr>
		<td>abc</td>
		<td>abc@gmail.com</td>
	<tr>
		<td>abcd T</td>
		<td>abcd@gmail.com</td>
		<tr>
		<td>abcdeK</td>
		<td>abcde@gmail.com</td>
		
	</table>	
	</p><br> <br>
<b>Mentor:</b>&nbsp;
DAYAWANTHI CHAUHAN

</div>

<footer class="container-fluid text-center" id="copyright">
	<p align="center" >Copyright &copy; RAMINENI Travels.com</p>
</footer>
</body>
</html>
