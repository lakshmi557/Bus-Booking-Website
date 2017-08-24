package mycasestudy;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DetailConn {
	public Connection con;
	ResultSet res1=null;
	
	public DetailConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delete_temp_agent(String agn_id) throws SQLException, IOException {

		PreparedStatement ps = con.prepareStatement("DELETE FROM agent_details WHERE agn_id=?");
		ps.setString(1, agn_id); ps.executeUpdate();
	}
	
	public void approve_temp_agent(String agn_id) throws SQLException, IOException {

		PreparedStatement ps = con.prepareStatement("UPDATE agent_details SET approval='Approved' WHERE agn_id=?");
		ps.setString(1, agn_id); ps.executeUpdate();

	}
	
	
	public ResultSet get_bus_Details() throws SQLException, IOException {

		PreparedStatement ps = con
				.prepareStatement("select * from bus_details");

		ResultSet res = ps.executeQuery();
		return res;		
		
	}
	public ResultSet get_agent_bookedticket(String x) throws SQLException, IOException {

		PreparedStatement ps = con
				.prepareStatement("select * from booked_ticket where agn_id = ?");
		ps.setString(1, x);

		ResultSet res = ps.executeQuery();
		return res;

	}
//	----------------------------------------------------------------------
	public ResultSet get_bookedticket() throws SQLException, IOException {
		PreparedStatement ps = con
				.prepareStatement("select * from booked_ticket");
		ResultSet res = ps.executeQuery();
		return res;
	}

		public ResultSet get_commission() throws SQLException, IOException {
		PreparedStatement ps = con.prepareStatement("select sum(total_cost)*0.1 from booked_ticket");
		ResultSet res = ps.executeQuery();
		return res;
	}
	
		public ResultSet get_opr_commission(String agn_id) throws SQLException, IOException {
		PreparedStatement ps = con.prepareStatement("select sum(total_cost)*0.1 from booked_ticket where agn_id=?");
		ps.setString(1, agn_id);
		ResultSet res = ps.executeQuery();
			return res;
	}
		
		public ResultSet get_opr_validate(String agn_id) throws SQLException, IOException {
			PreparedStatement ps = con.prepareStatement("select count(agn_id) from booked_ticket where agn_id=?");
			ps.setString(1, agn_id);
			ResultSet res = ps.executeQuery();
				return res;
		}
		

	public String add_bus(int id, String route_name,
			int one_way_ticket_rate, String start_times, String vehicle_no,
			int service_no) {
		String status = "not inserted";
		try {
			PreparedStatement ps1 = con
					.prepareStatement("insert into bus_details values(?,?,?,?,?,?)");
			ps1.setInt(1, id);
			ps1.setString(2, route_name);
			ps1.setInt(3, one_way_ticket_rate);
			ps1.setString(4, start_times);
			ps1.setString(5, vehicle_no);
			ps1.setInt(6, service_no);
			int i = ps1.executeUpdate();
			if (i != 0)
				status = "Record Inserted Successfully";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	//---------------------------------------------------------------------------------------------
	public ResultSet get_agent_Password(String agn_id,String phn_no)  throws SQLException, IOException
	{
		try
		{
			System.out.println("in try for driver");
			PreparedStatement ps= con.prepareStatement("select password from agent_details where agn_id=? and phone_no=?");
			ps.setString(1, agn_id);
			ps.setString(2, phn_no);
			res1 =ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return res1;
	}
	
	//---------------------------------------------------------------------------------------------
	public ResultSet get_agent_Details() throws SQLException, IOException{
		try{
		PreparedStatement ps = con.prepareStatement("select * from agent_details where approval='Approved'");

		res1 = ps.executeQuery();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return res1;
	}
		
//---------------------------------------------------------------------------------------------
		public ResultSet get_agent_Details_pending() throws SQLException, IOException{
			try{
			PreparedStatement ps = con.prepareStatement("select * from agent_details where approval='pending'");

			res1 = ps.executeQuery();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return res1;
	}
		
		
		//---------------------------------------------------------------------------------------------		
	public boolean check_busdetails(int v_busid){
		try{
			PreparedStatement ps = con.prepareStatement("select count(bus_id) from bus_details where bus_id = ? ");
			ps.setInt(1, v_busid);
			int x=0;
			res1=ps.executeQuery();
			if(res1.next()){
				x=res1.getInt(1);
			}
			if(x!=0){
				return true;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}
	//---------------------------------------------------------------------------------------------	
	public int get_busid() throws SQLException, IOException{
		int id=0;
		try{
			
		PreparedStatement ps = con.prepareStatement("select max(bus_id) from bus_details  ");
		res1 = ps.executeQuery();
		if(res1.next()){
			id=res1.getInt(1)+1;
			return id;
		}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return id;

	}
	//---------------------------------------------------------------------------------------------
	public void approve_agent(){
		System.out.println("hello i m not working. ");
	}
}
