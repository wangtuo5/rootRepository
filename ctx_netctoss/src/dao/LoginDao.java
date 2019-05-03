package dao;


public interface LoginDao {
	public int loginUser(String name,String password);//用户登录
	
	public int loginAdmin(String name,String password);//管理员登录
}
