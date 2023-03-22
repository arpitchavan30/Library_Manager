package com.Model;

public class UpdateUserPass {
	private String oldPass;
	private String newPass;
	public UpdateUserPass(String oldPass, String newPass) {
		super();
		this.oldPass = oldPass;
		this.newPass = newPass;
	}
	public String getOldPass() {
		return oldPass;
	}
	public void setOldPass(String oldPass) {
		this.oldPass = oldPass;
	}
	public String getNewPass() {
		return newPass;
	}
	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}
	
}
