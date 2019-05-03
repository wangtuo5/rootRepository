package actions.fee;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class FeeaddAction {
	private String name;
	private String basefee;
	private String ratefee;
	private String description;
	
	public String execute(){
		try{
		Connection conn = JDBCUtil.getConnection();
		Statement stat = conn.createStatement();
		int a =0;
		 a = stat.executeUpdate("insert into  pricings(name,basefee,ratefee,description) values('"+name+"',"+basefee+","+ratefee+",'"+description+"');");
		 if(a!=0){
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

	public String getBasefee() {
		return basefee;
	}

	public void setBasefee(String basefee) {
		this.basefee = basefee;
	}

	public String getRatefee() {
		return ratefee;
	}

	public void setRatefee(String ratefee) {
		this.ratefee = ratefee;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
