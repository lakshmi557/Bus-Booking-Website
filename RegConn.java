package mycasestudy;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public class RegConn {
	public Connection con;

	public RegConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	public void add_agn_details(String name, String gender,String dob, String emailid,
		     long phoneno,String address,String location,String password){
		String status = "not inserted";
		try {
			CallableStatement cs;
			cs = con.prepareCall("{call ins_agn_details(?,?,?,?,?,?,?,?)}");
			cs.setString(1, name);
			cs.setString(2, gender);
			cs.setString(3, dob);
			cs.setString(4, emailid);
			cs.setLong(5, phoneno);
			cs.setString(6, address);
			cs.setString(7, location);
			cs.setString(8, password);
			/*cs.registerOutParameter(9, java.sql.Types.VARCHAR);*/
			cs.execute();
			/*String vagn_id = cs.getString(9);
			status = "Record Inserted Successfully and your registration id is "
			+ vagn_id;*/
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String add_booked_ticket(String agn_id, int bus_id, String rou_name, String date,
		     String time,int ser_no,float total_cost,float price,int notick){
		String status = "not inserted";
		try {
			CallableStatement cs;
			cs = con.prepareCall("{call ins_booked_ticket(?,?,?,?,?,?,?,?,?)}");
			cs.setString(1, agn_id);
			cs.setInt(2, bus_id);
			cs.setString(3, rou_name);
			cs.setString(4, date);
			cs.setString(5, time);
			cs.setInt(6, ser_no);
			cs.setFloat(7, total_cost);
			cs.setFloat(8, price);
			cs.setInt(9, notick);
			cs.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
