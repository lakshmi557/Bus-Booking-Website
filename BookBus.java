package servlet_Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mycasestudy.*;

@WebServlet("/BookBus")
public class BookBus extends HttpServlet {
	static int price = 0, bus_id = 0, ser_no = 0, sum = 0, flag = 0;
	String rou_name, s_time, book_id, a_id;
	int v_agn=0;
	float total_cost;
	public String time;
	RegConn bookticket = new RegConn();

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	private static final long serialVersionUID = 1L;
	Connection con;
	ResultSet rs;
	PreparedStatement ps;

	public BookBus() throws ClassNotFoundException, SQLException {
		super();
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String date = request.getParameter("date");
			String time0 = request.getParameter("time");
			String time1 = request.getParameter("time1");
			String time2 = request.getParameter("time2");
			String time3 = request.getParameter("time3");
			String time4 = request.getParameter("time4");
			String time5 = request.getParameter("time5");
			String time6 = request.getParameter("time6");
			String time7 = request.getParameter("time7");
			if (time0.trim().equals("null") == false) {
				setTime(time0);
			}
			if (time1.trim().equals("null") == false) {
				setTime(time1);
			}
			if (time2.trim().equals("null") == false) {
				setTime(time2);
			}
			if (time3.trim().equals("null") == false) {
				setTime(time3);
			}
			if (time4.trim().equals("null") == false) {
				setTime(time4);
			}
			if (time5.trim().equals("null") == false) {
				setTime(time5);
			}
			if (time6.trim().equals("null") == false) {
				setTime(time6);
			}
			if (time7.trim().equals("null") == false) {
				setTime(time7);
			}
			
			String ROUTNAME = request.getParameter("trip");
			int notick = Integer.parseInt(request.getParameter("notick"));
			HttpSession session = request.getSession(false);
			String agn_id = (String) session.getAttribute("agnname");
			
			System.out.println("trying to get bus details"+agn_id);
			ps = con.prepareStatement("select * from bus_details where route_name=? and Start_Time=?");
			ps.setString(1, ROUTNAME);
			ps.setString(2, time);
			rs = ps.executeQuery();
			if (rs.next()) {
				bus_id = rs.getInt(1);
				rou_name = rs.getString(2);
				price = rs.getInt(3);
				s_time = rs.getString(4);
				ser_no = rs.getInt(6);
				book_id = agn_id + Integer.toString(bus_id) + date + s_time;
				total_cost = price * notick;
				System.out.println("got bus details");
				rs.close();
				ps.close();
			}
			ps = con.prepareStatement("select sum(no_of_tickets) from booked_ticket where route_name='?' and agn_id=? and doj='?'");
			ps.setString(1, rou_name);
			ps.setString(1, agn_id);
			ps.setString(1, date);
			rs = ps.executeQuery();
			if (rs.next()) {
				sum = rs.getInt(1);
				if (sum < 54 && notick>0) {
					ps.close();
					rs.close();
					bookticket.add_booked_ticket(agn_id, bus_id, rou_name, date, time, ser_no, total_cost, price, notick);
					ps=con.prepareStatement("select max(BOOKING_ID) from booked_ticket");
					rs=ps.executeQuery();
					if(rs.next()){
						v_agn=rs.getInt(1);
						rs.close();
						ps.close();
					}
					out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
							+ "<body><script>"
							+ "window.alert('Successfully booked with id "+v_agn+"');"
							+ "</script></body></html>");
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/agent_home.jsp");
					rd.include(request, response);	
					
			}
		}
			else{
				out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
						+ "<body><script>"
						+ "window.alert('Failed to book ticket');"
						+ "</script></body></html>");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/bookbus.jsp");
				rd.include(request, response);
			}
		}
		catch (Exception e) {
			out.println("<html><head><link rel='stylesheet' type='text/css' href='theme.css'></head>"
					+ "<body><script>"
					+ "window.alert('Failed to book ticket (catch)');"
					+ "</script></body></html>");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/bookbus.jsp");
			rd.include(request, response);
		}
	}
}
