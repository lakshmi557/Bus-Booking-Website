package test_practice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BusDelete")
public class BusDelete extends HttpServlet {
	Connection con;
	ResultSet rs;
	PreparedStatement ps;
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			int i=0;
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection(
						"jdbc:oracle:thin:@10.34.226.112:1521:techm","SQL_P_5","Techp123");
				
				int bid=Integer.parseInt(request.getParameter("id"));
				
				PreparedStatement ps =con.prepareStatement("delete from bus_details where bus_id=?");
				ps.setInt(1, bid);
				i=ps.executeUpdate();
				con.commit();
				if(i!=0){
					RequestDispatcher dispatcher = request
							.getRequestDispatcher("success.jsp");
					dispatcher.forward(request, response);
				}
				ps.close();
			}catch(Exception x){
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("fail_delete.jsp");
				dispatcher.forward(request, response);	
		
			}
	}

}
