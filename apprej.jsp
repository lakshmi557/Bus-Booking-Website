<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="mycasestudy.DetailConn" %>   
<%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ramineni Travels</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
	<link rel="stylesheet" href="theme.css">
</head>
<body id="myPage"></body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
     
      <a class="navbar-brand" href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    </div>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp">LOGOUT</a></li>
        <li><a href="approvals.jsp">BACK</a></li>
      </ul>   
  </div>
</nav>

<div class="jumbotron text-center">
  <h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
  <p>We'll drive you happy!</p> 
  
</div>

       <%
       DetailConn print = new DetailConn();
       String actn=request.getParameter("actn");
       String agn_id=request.getParameter("agn_id");
       System.out.println(agn_id);
       PreparedStatement ps1;
       if(actn.equals("Approve")){
    	  print.approve_temp_agent(agn_id);
    	  %><b><h3 align="center">The Agent with Agent ID: <%=agn_id%> is Approved.</h3></b><%
    	   }
       if(actn.equals("Reject")){
    	   print.delete_temp_agent(agn_id);
    	   %><b><h3 align="center">The Agent with Agent ID: <%=agn_id%> is Deleted.</h3></b><% 
       }
       %>     

<br><br><br><br><br><br><br><br><br><br><br>
<footer class="container-fluid text-center" id="copyright">
  
  <p>Copyright &copy; RAMINENI Travels.com</p>
</footer>
</body>

</html>