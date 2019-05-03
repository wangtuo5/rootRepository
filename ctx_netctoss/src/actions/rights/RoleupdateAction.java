package actions.rights;

import dao.RoleupdateDao;
import daojdbcimp.RoleupdateDaoImp;

public class RoleupdateAction  {
	private String id;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRr() {
		return rr;
	}

	public void setRr(String rr) {
		this.rr = rr;
	}

	private String name;
	private String rr;
	
	public String execute(){
		RoleupdateDao rd = new RoleupdateDaoImp();
		int a = rd.update(id, name, rr);
		if(a==1){
			return "success";
		}
		return "fail";
	}

}
