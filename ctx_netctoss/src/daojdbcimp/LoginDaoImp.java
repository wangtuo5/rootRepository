package daojdbcimp;

import java.sql.*;
import util.JDBCUtil;
import dao.LoginDao;

public class LoginDaoImp implements LoginDao{

	public int loginUser(String name,String password) {
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("select * from users where loginname='"+name+"' and loginpassword='"+password+"';");
			
			if(rs.next()){
				return 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 2;
		}
		return 3;
	}

	public int loginAdmin(String name,String password){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("select * from admins where loginname='"+name+"' and loginpassword='"+password+"';");
			
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
