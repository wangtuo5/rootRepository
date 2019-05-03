package actions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.LoginDao;
import daojdbcimp.LoginDaoImp;

public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 4395734957394L;
	private String name;
	private String password;
	private String typelist;

	public String execute(){
		if(typelist.equalsIgnoreCase("0")){ //如果是管理员登录
			String sssss = (String)ActionContext.getContext().getSession().get("dodo");
			if(name.equalsIgnoreCase(sssss)){
				this.addActionMessage("[重复登录]");
				return "fail";
			}
			
			LoginDao ld = new LoginDaoImp();
			int result = ld.loginAdmin(name,password);
			if(result==1){
				
				ActionContext.getContext().getSession().put("dodo", name);
				
				return "success";
			}else if(result==2){
				this.addActionMessage("[数据库连接异常]");
				return "fail";
			}else{
				this.addActionMessage("[登录账户或密码错误]");
				return "fail";
			}
		} else { //如果是用户登录
			String sssss = (String)ActionContext.getContext().getSession().get("dodo1");
			if(name.equalsIgnoreCase(sssss)){
				this.addActionMessage("[重复登录]");
				return "fail";
			}
			
			LoginDao ld = new LoginDaoImp();
			int result = ld.loginUser(name,password);
			if(result==1){
				ActionContext.getContext().getSession().put("dodo1", name);
				return "success1";
			}else if(result==2){
				this.addActionMessage("[数据库连接异常]");
				return "fail";
			}else{
				this.addActionMessage("[登录账户或密码错误]");
				return "fail";
			}
		}
		
	}
	

	public String getTypelist() {
		return typelist;
	}


	public void setTypelist(String typelist) {
		this.typelist = typelist;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
