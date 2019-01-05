package StuSelSystem;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnection {
	public static Connection getConnection() {
		Connection con=null;
	
		String classforname="com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String serverinfo="jdbc:sqlserver://127.0.0.1:1433;databaseName=rj1703_wzp;user=sa;password=1";
		try {
			Class.forName(classforname);
			con=DriverManager.getConnection(serverinfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
