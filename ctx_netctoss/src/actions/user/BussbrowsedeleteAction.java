package actions.user;

public class BussbrowsedeleteAction {
	private String bussloginname;	
	private String busslabip;
	private String bussstatus;
	
	public String getBussstatus() {
		return bussstatus;
	}

	public void setBussstatus(String bussstatus) {
		this.bussstatus = bussstatus;
	}

	public String execute(){
		
		return "success";
	}

	public String getBussloginname() {
		return bussloginname;
	}

	public void setBussloginname(String bussloginname) {
		this.bussloginname = bussloginname;
	}

	public String getBusslabip() {
		return busslabip;
	}

	public void setBusslabip(String busslabip) {
		this.busslabip = busslabip;
	}
	
	
}
