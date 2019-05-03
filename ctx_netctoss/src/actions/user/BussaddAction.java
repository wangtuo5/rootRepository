package actions.user;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class BussaddAction {
	private String name;
	private String loginname;
	private String loginpassword;
	private String status;
	private String labip;
	private String type;
	
	public String execute(){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a =0;
			//任意写的一条插入语句
			 a = stat.executeUpdate("insert into userservices(userid,loginname,loginpassword,labip,status,priceid,enrolldate,closedate,begintime,endtime) values(1,'"+loginname+"','"+loginpassword+"','"+labip+"',"+status+",1,'2011-4','2011-4','21:22','22:22');");
			if(a!=0){
				return "success";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLabip() {
		return labip;
	}

	public void setLabip(String labip) {
		this.labip = labip;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}


	
	
}
