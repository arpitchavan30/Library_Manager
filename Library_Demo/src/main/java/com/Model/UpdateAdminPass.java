package com.Model;

public class UpdateAdminPass {
	private String AdOldPass;
	private String AdNewPass;
	public UpdateAdminPass(String adOldPass, String adNewPass) {
		super();
		AdOldPass = adOldPass;
		AdNewPass = adNewPass;
	}
	public String getAdOldPass() {
		return AdOldPass;
	}
	public void setAdOldPass(String adOldPass) {
		AdOldPass = adOldPass;
	}
	public String getAdNewPass() {
		return AdNewPass;
	}
	public void setAdNewPass(String adNewPass) {
		AdNewPass = adNewPass;
	}
	

}
