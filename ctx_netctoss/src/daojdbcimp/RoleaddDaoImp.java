package daojdbcimp;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;
import dao.RoleaddDao;
import dao.RoleupdateDao;

public class RoleaddDaoImp implements RoleaddDao{

	public int add(String a, String b) {
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int yy = stat.executeUpdate("insert into rolerights(roleid,rightid) values("+a+","+b+")");
			
			
				return yy;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

}
