package bean;

import java.util.Date;

/**
 * Userservices entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Userservices implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users userid;//关联用户帐务表
	private String loginname;
	private String loginpassword;
	private String labip;
	private Integer status;
	private Pricings priceid;//关联资费表
	private Date enrolldate;
	private Date closedate;
	public boolean euqals(Object obj){
		if(this.id.equals(((Userservices)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Userservices() {
	}

	/** minimal constructor */
	public Userservices(Integer id, String loginname, String loginpassword,
			String labip, Integer status, Date enrolldate) {
		this.id = id;
		this.loginname = loginname;
		this.loginpassword = loginpassword;
		this.labip = labip;
		this.status = status;
		this.enrolldate = enrolldate;
	}

	/** full constructor */
	public Userservices(Integer id, Users userid, String loginname,
			String loginpassword, String labip, Integer status,
			Pricings priceid, Date enrolldate, Date closedate) {
		this.id = id;
		this.userid = userid;
		this.loginname = loginname;
		this.loginpassword = loginpassword;
		this.labip = labip;
		this.status = status;
		this.priceid = priceid;
		this.enrolldate = enrolldate;
		this.closedate = closedate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUserid() {
		return this.userid;
	}

	public void setUserid(Users userid) {
		this.userid = userid;
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

	public String getLabip() {
		return this.labip;
	}

	public void setLabip(String labip) {
		this.labip = labip;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Pricings getPriceid() {
		return this.priceid;
	}

	public void setPriceid(Pricings priceid) {
		this.priceid = priceid;
	}

	public Date getEnrolldate() {
		return this.enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public Date getClosedate() {
		return this.closedate;
	}

	public void setClosedate(Date closedate) {
		this.closedate = closedate;
	}

}