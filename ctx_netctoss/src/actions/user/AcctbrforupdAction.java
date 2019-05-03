package actions.user;

public class AcctbrforupdAction {
	private String accname;
	private String accloginname;
	private String accstatus;
	
	public String execute(){
		
		return "success";
	}

	public String getAccname() {
		return accname;
	}

	public void setAccname(String accname) {
		this.accname = accname;
	}

	public String getAccloginname() {
		return accloginname;
	}

	public void setAccloginname(String accloginname) {
		this.accloginname = accloginname;
	}

	public String getAccstatus() {
		return accstatus;
	}

	public void setAccstatus(String accstatus) {
		this.accstatus = accstatus;
	}
}
