package actions.account;

public class AcctmonthAction {
	private String year;
	private String month;

	public String execute(){
		
		return "success";
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}
	
	
	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

}
