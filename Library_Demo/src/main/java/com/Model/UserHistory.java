package com.Model;

public class UserHistory {
	private String usermail;
	private String bookid;
	private String issuedate;
	
	public UserHistory(String usermail, String bookid, String issuedate) {
		super();
		this.usermail = usermail;
		this.bookid = bookid;
		this.issuedate = issuedate;
		
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	

}
