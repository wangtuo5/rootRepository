package bean;

/**
 * Operations entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Operations implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	public String toString(){
		return "²Ù×÷:" +id+ ","+name;
	}
	public boolean euqals(Object obj){
		if(this.id.equals(((Operations)obj).id)){
			return true;
		}
		else{
			return  false;
		}
	}
	// Constructors

	/** default constructor */
	public Operations() {
	}

	/** minimal constructor */
	public Operations(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Operations(Integer id, String name) {
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

}