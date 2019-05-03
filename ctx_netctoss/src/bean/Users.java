package bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Users entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields
	
	private Integer id;
	private String name;
	private String loginname;
	private String loginpassword;
	private Integer status;
	private String phone;
	private String email;
	private Date erolldate;
	private Date closedate;
	private String paymenttpye;
	private String career;
	private String nationality;
	private Short sex;
	private String company;
	private String zip;	
	private Set  userservices=new HashSet();
	
	public boolean euqals(Object obj){
		if(this.id.equals(((Users)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(Integer id, String name, String loginname,
			String loginpassword, Integer status, Date erolldate,
			String paymenttpye, Short sex) {
		this.id = id;
		this.name = name;
		this.loginname = loginname;
		this.loginpassword = loginpassword;
		this.status = status;
		this.erolldate = erolldate;
		this.paymenttpye = paymenttpye;
		this.sex = sex;
	}

	/** full constructor */
	public Users(Integer id, String name, String loginname,
			String loginpassword, Integer status, String phone, String email,
			Date erolldate, Date closedate, String paymenttpye, String career,
			String nationality, Short sex, String company, String zip) {
		this.id = id;
		this.name = name;
		this.loginname = loginname;
		this.loginpassword = loginpassword;
		this.status = status;
		this.phone = phone;
		this.email = email;
		this.erolldate = erolldate;
		this.closedate = closedate;
		this.paymenttpye = paymenttpye;
		this.career = career;
		this.nationality = nationality;
		this.sex = sex;
		this.company = company;
		this.zip = zip;
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

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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

	public Date getErolldate() {
		return this.erolldate;
	}

	public void setErolldate(Date erolldate) {
		this.erolldate = erolldate;
	}

	public Date getClosedate() {
		return this.closedate;
	}

	public void setClosedate(Date closedate) {
		this.closedate = closedate;
	}

	public String getPaymenttpye() {
		return this.paymenttpye;
	}

	public void setPaymenttpye(String paymenttpye) {
		this.paymenttpye = paymenttpye;
	}

	public String getCareer() {
		return this.career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Short getSex() {
		return this.sex;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public Set getUserservices() {
		return userservices;
	}

	public void setUserservices(Set userservices) {
		this.userservices = userservices;
	}

}