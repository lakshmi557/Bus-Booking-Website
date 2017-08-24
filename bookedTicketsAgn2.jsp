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
	  <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <link rel="stylesheet" href="theme.css">

</head>
<body id="myPage">
		<nav class="navbar navbar-default navbar-fixed-top">
 		<div class="container">
    		<div class="navbar-header">
      			<a href="#myPage">Ramineni&nbsp;&nbsp;Travels</a>
    		</div>
    		<ul class="nav navbar-nav navbar-right">
		        <li><a href="logout.jsp">LOGOUT</a></li>
		        <li><a href="agentdetails.jsp">BACK</a></li>
      		</ul>
    	</div> 
		</nav>

		<div class="jumbotron text-center">
			  <h1><font face="cambria">RAMINENI</font> &nbsp;Travels.com</h1> 
			  <p>We'll drive you happy!</p> 
		</div>

		<div id="about" class="container-fluid">
  			<div class="row">
    			<h2>Hello ADMIN,</h2>
		        <%
		       		DetailConn print = new DetailConn();
		       		ResultSet rs = null;
		       		String agn_id = request.getParameter("x");
		            ResultSet check=print.get_opr_validate(agn_id);
		            if(check.next())
		            {
		                System.out.println("in check");
		                System.out.println(check.getInt(1));
                    	if(check.getInt(1)>0) 
                    	{
                    		System.out.println("in getInt");
                     		rs = print.get_opr_commission(agn_id);
             	 %>
              <center> Agent ID: <%=agn_id%></center>
              <table align="center" width="50%" border="2">
	              <tr>
	              	<% while (rs.next()) {%>
	                     <td><b>Total Commission</b></td>
	                     <td><b><%=rs.getFloat(1)%></b></td>
                  </tr>
              </table>
              <%}rs.close(); }}
              if(check.getInt(1)==0)
              { %>
              		<script>
              			alert("No commission set for this ID.");
              			window.location="agentdetails.jsp";
              		</script>		
              		
              <%
              }
                     check.close();
              %>
       <br><br><br>
	   <footer class="container-fluid text-center" id="copyright">
  		  <p>Copyright &copy; RAMINENI Travels.com</p>
		</footer>
	</body>
</html>