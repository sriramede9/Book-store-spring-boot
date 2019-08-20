package com.sboot.Bookstore.entity;

public class User {

	private String uname;
	private String pwrd;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwrd() {
		return pwrd;
	}

	public void setPwrd(String pwrd) {
		this.pwrd = pwrd;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String uname, String pwrd) {
		super();
		this.uname = uname;
		this.pwrd = pwrd;
	}

	@Override
	public String toString() {
		return "Userone [uname=" + uname + ", pwrd=" + pwrd + "]";
	}

}
