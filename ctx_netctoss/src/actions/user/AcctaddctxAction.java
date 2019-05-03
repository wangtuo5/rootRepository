package actions.user;

import java.sql.Connection;
import java.sql.Statement;

import util.JDBCUtil;

public class AcctaddctxAction {
	private String id;
	private String name;
	private String loginname;
	private String loginpassword;
	private String status;
	private String paymenttpye;
	private String phone;
	private String email;
	private String sex;
	private String nationality;
	private String career;
	private String company;
	private String zip;
	
	public String execute(){
		try {
			Connection conn = JDBCUtil.getConnection();
			Statement stat = conn.createStatement();
			int a =0;
			 a = stat.executeUpdate("insert into users(zip,company,career,nationality,sex,paymenttype,status,name,loginname,loginpassword,email,phone) values('"+zip+"','"+company+"','"+career+"','"+nationality+"',"+sex+",'"+paymenttpye+"',"+status+",'"+name+"','"+loginname+"','"+loginpassword+"','"+email+"','"+phone+"');");
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPaymenttpye() {
		return paymenttpye;
	}

	public void setPaymenttpye(String paymenttpye) {
		this.paymenttpye = paymenttpye;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
	
	
}
