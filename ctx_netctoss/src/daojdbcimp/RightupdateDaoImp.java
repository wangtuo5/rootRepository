package daojdbcimp;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;
import dao.RightupdateDao;

public class RightupdateDaoImp implements RightupdateDao{

	public int update(String id, String name, String url, String moduleName) {
		int q = Integer.parseInt(moduleName)+1;
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a = stat.executeUpdate("update rights set name='"+name+"',url='"+url+"',modulesId="+q+" where id="+id);
			
			
				return a;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		
	}
	
}
