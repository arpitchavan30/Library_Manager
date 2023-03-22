package com.Model;

public class Login {
	private String uMail;
	private String uPass;
	public Login(String uMail, String uPass) {
		super();
		this.uMail = uMail;
		this.uPass = uPass;
	}
	public String getuMail() {
		return uMail;
	}
	public void setuMail(String uMail) {
		this.uMail = uMail;
	}
	public String getuPass() {
		return uPass;
	}
	public void setuPass(String uPass) {
		this.uPass = uPass;
	}
	
}
