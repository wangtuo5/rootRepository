package bean;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Roles entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Roles implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	
	private Set rolerights=new TreeSet();//引用到RoleRights表 
	
	public boolean euqals(Object obj){
		if(this.id.equals(((Roles)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors
	public String toString(){
		return id+","+name;
	}
	/** default constructor */
	public Roles() {
	}

	/** minimal constructor */
	public Roles(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Roles(Integer id, String name) {
		this.id = id;
		this.name = name;
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
	public Set getRolerights() {
		return rolerights;
	}
	public void setRolerights(Set rolerights) {
		this.rolerights = rolerights;
	}

}