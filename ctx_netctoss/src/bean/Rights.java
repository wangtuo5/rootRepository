package bean;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Rights entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Rights implements java.io.Serializable ,Comparable{
	// Fields
	private Integer id;
	private String name;
	private String url;
	private Modules moduleid;
	private Operations operationid;
	private Set rolerights=new TreeSet(); 
	
	public int compareTo(Object obj){
		//return this.id.intValue()-((Rights)obj).id.intValue();
		if(obj  instanceof Rights){
			if(((Rights)obj).id==null || id==null){
				return -1;
			}
			else{
				return this.id.intValue()-((Rights)obj).id.intValue();
			}
			
		}
		else{
			return -1;
		}
	}
	public String toString(){
		return "х╗оч:" +id+ ","+name+","+url;
	}
	public boolean euqals(Object obj){
		if(this.id.equals(((Rights)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Rights() {
	}

	/** minimal constructor */
	public Rights(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Rights(Integer id, String name, String url, Modules moduleid,
			Operations operationid) {
		this.id = id;
		this.name = name;
		this.url = url;
		this.moduleid = moduleid;
		this.operationid = operationid;
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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Modules getModuleid() {
		return this.moduleid;
	}

	public void setModuleid(Modules moduleid) {
		this.moduleid = moduleid;
	}

	public Operations getOperationid() {
		return this.operationid;
	}

	public void setOperationid(Operations operationid) {
		this.operationid = operationid;
	}

	public Set getRolerights() {
		return rolerights;
	}

	public void setRolerights(Set rolerights) {
		this.rolerights = rolerights;
	}

}