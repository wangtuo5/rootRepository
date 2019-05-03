package actions.admin;

import java.sql.Connection;
import java.sql.Statement;
import java.util.Date;

import util.JDBCUtil;

public class AdminaddAction {
	private String name;
	private String loginname;
	private String loginpassword;
	private String passwordsec;
	private String phone;
	private String email;
	private String roleid;
	
	public String execute(){
		if(!loginpassword.equals(passwordsec)){
			return "fail";
		}
		if(roleid.equalsIgnoreCase("超级管理员")){
			roleid="1";
		}else {//此处还没扩展管理员
			roleid="1";
		}
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			//此处可以添加事物控制，省掉了
			int a,b =0;
			 a = stat.executeUpdate("insert into admins(name,loginname,loginpassword,phone,email,enrolldate) values('"+name+"','"+loginname+"','"+loginpassword+"','"+phone+"','"+email+"',now());");
			 b = stat.executeUpdate("insert into adminroles(adminid,roleid) values((select id from admins where loginname='"+loginname+"'),"+roleid+");");
			 if(a!=0 && b!=0){
				return "success";
			}
			
			
		} catch (Exception e) {
			return "fail";
		}
		
		return "fail";
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

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	

}
