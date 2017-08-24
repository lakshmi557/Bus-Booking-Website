package mycasestudy;
import java.sql.*;


public class AgentLogin {
	
	
	
		Connection con;
		public AgentLogin() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		

		public String getAgentUserName(String user, String pass)
				throws SQLException {
			String str="Approved";
			PreparedStatement ps = con.prepareStatement("select * from agent_details where agn_id=? and password=? and approval=? ");
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.setString(3, str);
			ResultSet res = ps.executeQuery();
			boolean b = res.next();

			if (b) {
				return user;

			} else {
				return null;
			}
		}

	}


