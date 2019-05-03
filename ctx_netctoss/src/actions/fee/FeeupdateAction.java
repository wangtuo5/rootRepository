package actions.fee;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class FeeupdateAction {
	private String id;
	private String name;
	private String basefee;
	private String ratefee;
	private String description;
	
	public String execute(){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a=0;
			 a = stat.executeUpdate("update pricings set name='"+name+"',basefee="+basefee+",ratefee="+ratefee+",description='"+description+"' where id='"+id+"';");
			 if(a!=0){
				return "success";
			}
			
			
		} catch (Exception e) {
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
