package servlet_Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mycasestudy.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;



//@WebServlet("/AgentReg")
public class AgentReg extends HttpServlet {
	RegConn agreg = new RegConn();
	//Connection con;
	ResultSet rs;
	PreparedStatement ps;
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int count=0;
		String v_agn=null;
		String name = request.getParameter("name");
//		System.out.println(name);
		String gender = request.getParameter("gender");
//		System.out.println(gender);
		String dob = request.getParameter("dob");
//		System.out.println(dob);
		String emailid = request.getParameter("email_id");
//		System.out.println(emailid);
		long phoneno = Long.parseLong(request.getParameter("phone_no"));
//		System.out.println(phoneno);
		String address = request.getParameter("add");
//		System.out.println(address);
		String location = request.getParameter("loc");
//		System.out.println(location);
		String password = request.getParameter("apwd");
//		System.out.println(password);
		try{
			System.out.println("trying");
			ps=agreg.con.prepareStatement("select count(*) from agent_details where location=?");
			System.out.println("trying again");
			ps.setString(1, location);
			//ps.setLong(3, phoneno);
			rs=ps.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
				rs.close();
				ps.close();
			}
			System.out.println("tried");
			if(count!=0){
				out.println("<html><body><script>"
					+ "window.alert('User Not Registered(already exist)');"
					+ "</script></body></html>");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
				rd.include(request, response);
			}
		else{
			PrintWriter pw = response.getWriter();
			agreg.add_agn_details(name, gender, dob, emailid, phoneno,
				address, location, password);
			ps=agreg.con.prepareStatement("select agn_id from agent_details where email_id = ? and location=? and phone_no=?");
			ps.setString(1, emailid);
			ps.setString(2, location);
			ps.setLong(3, phoneno);
			rs=ps.executeQuery();
			if(rs.next()){
				v_agn=rs.getString(1);
				rs.close();
				ps.close();
			}
			out.println("<html><body><script>"
				+ "window.alert('Successfully registered. ID: "+v_agn+"');"
				+ "</script></body></html>");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.include(request, response);	
			pw.close();
			}
		}
		catch(Exception x){
			out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
					+ "<body><script>"
					+ "window.alert('Failed to register');"
					+ "</script></body></html>");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			rd.include(request, response);
		}
	}
}
