package daojdbcimp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import util.JDBCUtil;
import dao.SearchDao;

public class SearchDaoImp implements SearchDao{

	public int find(String s, int s1, int s2) {
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
		//	System.out.println("select * from userservices where loginname='"+s+"' and enrolldate='"+s1+"-"+s2+"';");
			ResultSet rs = stat.executeQuery("select * from userservices where loginname='"+s+"' and enrolldate='"+s1+"-"+s2+"';");
			
			if(rs.next()){
				return 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 2;
		}
		return 3;
	}

}
