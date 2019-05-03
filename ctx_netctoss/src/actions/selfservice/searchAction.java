package actions.selfservice;

import dao.SearchDao;
import daojdbcimp.SearchDaoImp;

public class searchAction {
	private String name;
	private String years;
	private String months;
	
	public String execute(){
	//	System.out.println(name+years+months+"1111111111111111");
		SearchDao sd = new SearchDaoImp();
		int a = 0;
		a = sd.find(name,Integer.parseInt(years)+2010, Integer.parseInt(months)+1);
	//	System.out.println(a+":"+name+years+months+"2222222222222222222");
		
		if(a==1){
			//System.out.println(name+years+months+"??????????????????");
			return "success";
		}else{
			return "fail";
		}
	}

	
	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getMonths() {
		return months;
	}


	public void setMonths(String months) {
		this.months = months;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
