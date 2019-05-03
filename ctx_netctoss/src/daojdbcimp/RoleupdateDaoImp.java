package daojdbcimp;

import java.sql.Connection;
import java.sql.Statement;

import dao.RoleupdateDao;

import util.JDBCUtil;

public class RoleupdateDaoImp implements RoleupdateDao{
	public int update(String id, String n, String s) {
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			if(n.equals("超级管理员")){
				n="1";
			}
			//System.out.println("update rolerights set roleid="+n+",rightid="+s+" where id="+id);
			int a = stat.executeUpdate("update rolerights set roleid="+n+",rightid="+s+" where id="+id);
			
			
				return a;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		
	}
}
