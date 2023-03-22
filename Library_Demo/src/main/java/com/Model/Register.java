package com.Model;

public class Register {
	private String uName;
	private String uEmail;
	private String uMob;
	private String uPass;
	public Register(String uName, String uEmail, String uMob, String uPass) {
		super();
		this.uName = uName;
		this.uEmail = uEmail;
		this.uMob = uMob;
		this.uPass = uPass;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuMob() {
		return uMob;
	}
	public void setuMob(String uMob) {
		this.uMob = uMob;
	}
	public String getuPass() {
		return uPass;
	}
	public void setuPass(String uPass) {
		this.uPass = uPass;
	}
	
}
