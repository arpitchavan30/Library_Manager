package com.Model;

public class UpdateUser {
	
	private String regMail;
	private String newName;
	private String newMob;
	public UpdateUser(String regMail, String newName, String newMob) {
		super();
		this.regMail = regMail;
		this.newName = newName;
		this.newMob = newMob;
	}
	public String getRegMail() {
		return regMail;
	}
	public void setRegMail(String regMail) {
		this.regMail = regMail;
	}
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getNewMob() {
		return newMob;
	}
	public void setNewMob(String newMob) {
		this.newMob = newMob;
	}
	


}
