package test_practice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AgentApprove")
public class AgentApprove extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AgentApprove() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		

			String a = request.getParameter("appr");
		if (a != null){
			
		}
		else{
			out.println("<html>"
					+ "<body><script>"
					+ "window.alert('No agent selected');"
					+ "</script></body></html>");
			//System.out.println("newcode");
			/*RequestDispatcher rd = getServletContext().getRequestDispatcher("/approvals.jsp");*/
		}
		doPost(request, response);
	}
}
