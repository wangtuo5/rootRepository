package actions.user;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class BussupdateAction {
	private String id;
	private String name;
	private String password;
	private String labip;
	private String status;
	
	public String execute(){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a =0;
			 a = stat.executeUpdate("update userservices set loginname='"+name+"',loginpassword='"+password+"',labip='"+labip+"',status='"+status+"' where id='"+id+"';");
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLabip() {
		return labip;
	}

	public void setLabip(String labip) {
		this.labip = labip;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
