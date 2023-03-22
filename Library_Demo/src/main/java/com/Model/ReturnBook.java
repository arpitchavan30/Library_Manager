package com.Model;

public class ReturnBook {
	private String UMail;
	private String BookId;
	private String ReDate;
	public ReturnBook(String UMail, String BookId, String ReDate) {
		super();
		this.UMail=UMail;
		this.BookId=BookId;
		this.ReDate=ReDate;
	}
	public String getUMail() {
		return UMail;
	}
	public void setUMail(String uMail) {
		UMail = uMail;
	}
	public String getBookId() {
		return BookId;
	}
	public void setBookId(String bookId) {
		BookId = bookId;
	}
	public String getReDate() {
		return ReDate;
	}
	public void setReDate(String reDate) {
		ReDate = reDate;
	}
	
}
