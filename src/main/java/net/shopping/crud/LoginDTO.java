package net.shopping.crud;

public class LoginDTO {
	private String userid;
	private String pwd;

	
	public String getUserid() {	return userid;	}
	public void setUserid(String userid) {this.userid = userid;	}
	
	public String getPwd() { return pwd;}
	public void setPwd(String pwd) {	this.pwd = pwd;	}
	
	
	@Override
	public String toString() {
		return "Login [userid=" + userid + ", pwd=" + pwd + "]";
	}//end
	
}//LoginDTO class End
