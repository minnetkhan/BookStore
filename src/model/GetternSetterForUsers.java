package model;

public class GetternSetterForUsers
{
	private String name;
	private String mobile_no;
	private String email;
	private String password;
	private String new_email;
	
	public String getPassword() {
		return password;
	}
	public String getNew_email() {
		return new_email;
	}
	public void setNew_email(String new_email) {
		this.new_email = new_email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
