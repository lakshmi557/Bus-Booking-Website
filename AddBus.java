package test_practice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mycasestudy.*;

@WebServlet("/AddBus")
public class AddBus extends HttpServlet {
	DetailConn addbus = new DetailConn();
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			int busid = 0; /*Integer.parseInt(request.getParameter("id"));*/
			String route = request.getParameter("route");
			int fare = Integer.parseInt(request.getParameter("fare"));
			String Start = request.getParameter("time");
			String Vno = request.getParameter("vno");
			int Sno = Integer.parseInt(request.getParameter("sno"));
			//System.out.println(busid + route + fare + Start + Vno + Sno);
			busid=addbus.get_busid();
			
			if (busid > 10 || busid < 999) {
				if(fare>0 && Sno>0){
					PrintWriter pw = response.getWriter();

					pw.println(addbus.add_bus(busid, route, fare, Start,
							Vno, Sno));
					RequestDispatcher dispatcher = request
							.getRequestDispatcher("success.jsp");
					dispatcher.forward(request, response);
					pw.close();
				}
				else {
					out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
							+ "<body><script>"
							+ "window.alert('Failed to add bus');"
							+ "</script></body></html>");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin_home.jsp");
					rd.include(request, response);
				}
				}
			 else {
				 out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
							+ "<body><script>"
							+ "window.alert('Failed to add bus');"
							+ "</script></body></html>");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin_home.jsp");
					rd.include(request, response);
			}
		} catch (Exception e) {
			out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
					+ "<body><script>"
					+ "window.alert('Failed to add bus');"
					+ "</script></body></html>");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin_home.jsp");
			rd.include(request, response);
		}

	}

}
