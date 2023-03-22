package com.Model;

public class UpdateAdmin {
	private String AdID;
	private String AdName;
	private String AdMail;
	private String AdMob;
	public UpdateAdmin(String adID, String adName, String adMail, String adMob) {
		super();
		AdID = adID;
		AdName = adName;
		AdMail = adMail;
		AdMob = adMob;
	}
	public String getAdID() {
		return AdID;
	}
	public void setAdID(String adID) {
		AdID = adID;
	}
	public String getAdName() {
		return AdName;
	}
	public void setAdName(String adName) {
		AdName = adName;
	}
	public String getAdMail() {
		return AdMail;
	}
	public void setAdMail(String adMail) {
		AdMail = adMail;
	}
	public String getAdMob() {
		return AdMob;
	}
	public void setAdMob(String adMob) {
		AdMob = adMob;
	}
	
	

}
