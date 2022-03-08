package log.mvc.model;


public class Member {
	private String email;
	private String name;
	private String pwd;
	
	public Member() {}

	public Member(String email, String name, String pwd) {
		super();
		this.email = email;
		this.name = name;
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}
