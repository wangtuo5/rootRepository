package bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Pricings entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Pricings implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Double basefee;
	private Double ratefee;
	private String description;
	private Set  userservices=new HashSet();
	public boolean euqals(Object obj){
		if(this.id.equals(((Pricings)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Pricings() {
	}

	/** minimal constructor */
	public Pricings(Integer id, String name, Double basefee, Double ratefee) {
		this.id = id;
		this.name = name;
		this.basefee = basefee;
		this.ratefee = ratefee;
	}

	/** full constructor */
	public Pricings(Integer id, String name, Double basefee, Double ratefee,
			String description) {
		this.id = id;
		this.name = name;
		this.basefee = basefee;
		this.ratefee = ratefee;
		this.description = description;
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

	public Double getBasefee() {
		return this.basefee;
	}

	public void setBasefee(Double basefee) {
		this.basefee = basefee;
	}

	public Double getRatefee() {
		return this.ratefee;
	}

	public void setRatefee(Double ratefee) {
		this.ratefee = ratefee;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getUserservices() {
		return userservices;
	}

	public void setUserservices(Set userservices) {
		this.userservices = userservices;
	}

}