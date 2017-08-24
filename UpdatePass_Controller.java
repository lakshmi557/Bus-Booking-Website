package servlet_Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import mycasestudy.*;

@WebServlet("/updatePass_Controller")
public class UpdatePass_Controller extends HttpServlet {
	DetailConn conn=new DetailConn();
	ResultSet rs;
	
	private static final long serialVersionUID = 1L;
 
    public UpdatePass_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String agn_id=request.getParameter("agn_id");
		String phn_no=request.getParameter("phn_no");
		PrintWriter out=response.getWriter();
		
		try {
			System.out.println("in try");
			rs=conn.get_agent_Password(agn_id,phn_no);
			if(rs.next())
			{
				System.out.println(rs.getString(1));
				out.println("<html><body><script>"	+ "window.alert('PassWord send to registred Phone number');" + "</script></body></html>");
				RequestDispatcher req= getServletContext().getRequestDispatcher("/forgotpass.jsp");
				req.include(request, response);
			}
			else
			{
				out.println("<html><body><script>" + "window.alert('Enter valid input');"+ "</script></body></html>");
				RequestDispatcher req= getServletContext().getRequestDispatcher("/forgotpass.jsp");
				req.include(request, response);
			}
		} 
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("<html><body><script>" + "window.alert('Enter valid input');" + "</script></body></html>");
			RequestDispatcher req= getServletContext().getRequestDispatcher("/forgotpass.jsp");
			req.forward(request, response);
		}
	}
}
