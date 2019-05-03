package actions.rights;

import dao.RightupdateDao;
import daojdbcimp.RightupdateDaoImp;

public class RightupdateAction {
	private String id;
	private String name;
	private String url;
	private String moduleName;
	
	public String execute(){
		RightupdateDao ru = new RightupdateDaoImp();
		int a = ru.update(id,name,url,moduleName);
		if(a==1){
			return "success";
		}
		
		return "fail";
	}

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
