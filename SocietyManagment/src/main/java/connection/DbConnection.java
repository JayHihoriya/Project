package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection createConnection() {
		String url="jdbc:mysql://localhost:3306/societymanagement";
		String username="root";
		String password="";
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return conn;
	}

}
