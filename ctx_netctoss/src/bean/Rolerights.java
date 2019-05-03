package bean;

/**
 * Rolerights entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Rolerights implements java.io.Serializable {

	// Fields

	private Integer id;
	private Roles roleid;
	private Rights rightid;//外键，指向Rights表 
	public boolean euqals(Object obj){
		if(this.id.equals(((Rolerights)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Rolerights() {
	}

	/** minimal constructor */
	public Rolerights(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Rolerights(Integer id, Roles roleid, Rights rightid) {
		this.id = id;
		this.roleid = roleid;
		this.rightid = rightid;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Roles getRoleid() {
		return this.roleid;
	}

	public void setRoleid(Roles roleid) {
		this.roleid = roleid;
	}

	public Rights getRightid() {
		return this.rightid;
	}

	public void setRightid(Rights rightid) {
		this.rightid = rightid;
	}

}