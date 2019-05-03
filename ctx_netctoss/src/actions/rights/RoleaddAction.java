package actions.rights;

import dao.RoleaddDao;
import daojdbcimp.RoleaddDaoImp;

public class RoleaddAction {
	private String name;
	private String tt;
	
	public String execute(){
		RoleaddDao rd = new RoleaddDaoImp();
		int a = rd.add(name,tt);
		if (a==1){
			return "success";
		}
		return "fail";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTt() {
		return tt;
	}

	public void setTt(String tt) {
		this.tt = tt;
	}
	
}
