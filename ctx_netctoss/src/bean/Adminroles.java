package bean;


public class Adminroles implements java.io.Serializable {

	// Fields

	private Integer id;
	private Admins adminid;
	private Roles roleid;
	
	public String toString(){
		return id+":\n"+adminid+"\n"+roleid;
	}
	// Constructors

	/** default constructor */
	public Adminroles() {
	}

	/** minimal constructor */
	public Adminroles(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Adminroles(Integer id, Admins adminid, Roles roleid) {
		this.id = id;
		this.adminid = adminid;
		this.roleid = roleid;
	}
	// Property accessors
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Admins getAdminid() {
		return this.adminid;
	}

	public void setAdminid(Admins adminid) {
		this.adminid = adminid;
	}

	public Roles getRoleid() {
		return this.roleid;
	}

	public void setRoleid(Roles roleid) {
		this.roleid = roleid;
	}
	public boolean euqals(Object obj){
		if(this.id.equals(((Adminroles)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
}