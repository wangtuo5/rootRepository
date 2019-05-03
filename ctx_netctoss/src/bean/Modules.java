package bean;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Modules entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Modules implements java.io.Serializable ,Comparable{

	// Fields

	private Integer id;
	private String name;
	private String url;
	private Set rights=new TreeSet();
	public boolean euqals(Object obj){
		if(this.id.equals(((Modules)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	public int compareTo(Object obj){
		//return this.id.intValue()-((Modules)obj).id.intValue();
		System.out.println(obj);
		if(obj  instanceof Modules){
			System.out.println(((Modules)obj).id);
			if(((Modules)obj).id==null || id==null){
				return -1;
			}
			else{
				return this.id.intValue()-((Modules)obj).id.intValue();
			}
			
		}
		else{
			return -1;
		}	
	}
	public String toString(){
		return "Ä£¿é:" +id+ ","+name;
	}
	// Constructors

	/** default constructor */
	public Modules() {
	}

	/** minimal constructor */
	public Modules(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Modules(Integer id, String name) {
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
	public Set getRights() {
		return rights;
	}
	public void setRights(Set rights) {
		this.rights = rights;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

}