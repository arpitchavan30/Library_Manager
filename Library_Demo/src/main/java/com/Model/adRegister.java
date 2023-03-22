package com.Model;

public class adRegister {
	private String adMail;
	private String adName;
	private String adMob;
	private String adId;
	private String adPass;
	public adRegister(String adMail, String adName, String adMob, String adId, String adPass) {
		super();
		this.adMail = adMail;
		this.adName = adName;
		this.adMob = adMob;
		this.adId = adId;
		this.adPass = adPass;
	}
	public String getAdMail() {
		return adMail;
	}
	public void setAdMail(String adMail) {
		this.adMail = adMail;
	}
	public String getAdName() {
		return adName;
	}
	public void setAdName(String adName) {
		this.adName = adName;
	}
	public String getAdMob() {
		return adMob;
	}
	public void setAdMob(String adMob) {
		this.adMob = adMob;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getAdPass() {
		return adPass;
	}
	public void setAdPass(String adPass) {
		this.adPass = adPass;
	}
	
	
}
