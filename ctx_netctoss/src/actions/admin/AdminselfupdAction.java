package actions.admin;


import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class AdminselfupdAction {
	private String id;
	private String name;
	private String loginname;
	private String loginpassword;
	private String passwordsec;
	private String email;
	private String phone;
	
	public String execute(){
		if(!loginpassword.equals(passwordsec)){
			return "fail";
		}
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a =0;
			 a = stat.executeUpdate("update admins set name='"+name+"',loginname='"+loginname+"',loginpassword='"+loginpassword+"',email='"+email+"',phone='"+phone+"' where id='"+id+"';");
			if(a!=0){
				return "success";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
		
		return "fail";
	}
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getLoginname() {
		return loginname;
	}


	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}


	public String getLoginpassword() {
		return loginpassword;
	}


	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}


	public String getPasswordsec() {
		return passwordsec;
	}


	public void setPasswordsec(String passwordsec) {
		this.passwordsec = passwordsec;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


}
