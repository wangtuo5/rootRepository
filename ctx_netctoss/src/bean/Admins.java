package bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Admins entity.
 * 
 */

public class Admins implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String loginname; //登录名
	private String loginpassword; //登录密码
	private String phone;
	private String email;
	private Date enrolldate; //注册日期
	private Set adminroles=new TreeSet();//权限集合
	
	public String toString(){
		return id+","+name+","+loginname+":角色数"+adminroles.size();
	}
	// Constructors

	/** default constructor */
	public Admins() {
	}

	/** minimal constructor */
	public Admins(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Admins(Integer id, String name, String loginname,
			String loginpassword, String phone, String email, Date enrolldate) {
		this.id = id;
		this.name = name;
		this.loginname = loginname;
		this.loginpassword = loginpassword;
		this.phone = phone;
		this.email = email;
		this.enrolldate = enrolldate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoginname() {
		return this.loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getLoginpassword() {
		return this.loginpassword;
	}

	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getEnrolldate() {
		return this.enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public Set getAdminroles() {
		return adminroles;
	}

	public void setAdminroles(Set adminroles) {
		this.adminroles = adminroles;
	}
	public boolean euqals(Object obj){
		if(this.id.equals(((Admins)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
}