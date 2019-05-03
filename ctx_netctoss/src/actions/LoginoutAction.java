package actions;

import com.opensymphony.xwork2.ActionContext;

public class LoginoutAction {
	
	public String execute(){
		ActionContext.getContext().getSession().remove("dodo");
		ActionContext.getContext().getSession().remove("dodo1");
		return "success";
	}
}
