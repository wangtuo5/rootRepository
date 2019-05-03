package daojdbcimp;

import java.sql.Connection;
import java.sql.Statement;
import dao.RightaddDao;
import util.JDBCUtil;

public class RightaddDaoImp implements RightaddDao{
	public int add(String name,String url,String moduleName){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a = stat.executeUpdate("insert into rights (name,url,modulesId) values('"+name+"','"+url+"',"+moduleName+");");
			
			
				return a;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
}
