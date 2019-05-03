package actions.rights;

import dao.RightaddDao;
import daojdbcimp.RightaddDaoImp;

public class RightaddAction {
	private String name;
	private String url;
	private String moduleName;
	
	public String execute(){
		
		
		RightaddDao rd = new RightaddDaoImp();
		int a = rd.add(name, url, Integer.parseInt(moduleName)+1+"");
		
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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	
}
