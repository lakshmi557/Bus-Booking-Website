package servlet_Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mycasestudy.*;

@WebServlet("/AgentServlet")
public class AgentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AgentLogin agn = new AgentLogin();
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		try{
		String id = request.getParameter("agn_code");
		String pwd = request.getParameter("apwd");
	
		String agnname = agn.getAgentUserName(id, pwd);
		
		System.out.println("in the agent servlet "+agnname);
		
		if (id.equals("admin") && pwd.equals("admin@123")) {
			HttpSession session=request.getSession();
			session.setAttribute("admin", id);
			response.sendRedirect("admin_home.jsp");
			
			/*RequestDispatcher dispatcher = request
					.getRequestDispatcher("admin_home.jsp");
			dispatcher.forward(request, response);*/
			
		}else if(agnname == null) {
				out.println("<html>"
						+ "<body><script>"
						+ "window.alert('Invalid username or password');"
						+ "</script></body></html>");
				System.out.println("newcode");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
				rd.include(request, response);
			} else {
				
				HttpSession session=request.getSession();
				session.setAttribute("agnname", agnname);
				response.sendRedirect("agent_home.jsp");
			}
		}catch (SQLException e) {
			out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
					+ "<body><script>"
					+ "window.alert('Invalid username or password');"
					+ "</script></body></html>");
			System.out.println("newcode");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.include(request, response);
		}
	}
}