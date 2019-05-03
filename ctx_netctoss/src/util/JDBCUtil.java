package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import javax.sql.DataSource;
import org.apache.commons.dbcp.BasicDataSourceFactory;

public class JDBCUtil {

//	private static DataSource ds;
//
//	static {
//		try {
//			Properties props = new Properties();
//			props.load(JDBCUtil.class.getClassLoader().getResourceAsStream(
//					"dbcp.properties"));
//			ds = BasicDataSourceFactory.createDataSource(props);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	public static Connection getConnection() {
//		try {
//			return ds.getConnection();
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
//
//	public static void closeConnection(Connection conn) {
//		if (conn != null) {
//			try {
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//	}
	
		public static Connection getConnection(){
			Connection conn=null;
			try {
				Class.forName("org.gjt.mm.mysql.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/netctoss","root","");
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return conn;
		}
}
