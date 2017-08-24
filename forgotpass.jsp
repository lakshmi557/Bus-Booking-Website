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
	  #copyright
	  {
	  	margin-top: 130px;
	  }
	  #forgotPass
	  {
	  	margin-top: 40px;
	  	font-size: 25px;
	  }
	  #button
	  {
	  	font-size: 27px;
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

	<div id="forgotPass">
		<form name="form1" action="updatePass_Controller" method="post">
			Enter id: &nbsp;&nbsp;<input type="text" name="agn_id"/><br>
			Enter registered Phone no: &nbsp;&nbsp;<input type="text" name="phn_no"/>&nbsp;&nbsp;&nbsp;
			<input type="submit" name="submit" value="Retrive Password" id="button"/>
		</form>
	</div>
	<footer class="container-fluid text-center" id="copyright">
	    <p align="center">Copyright &copy; RAMINENI Travels.com</p>
	</footer>
	</body>
</html>