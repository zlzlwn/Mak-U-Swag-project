package com.javalec.dto;

public class NoticeDtoPJH {

	
	int noSeq;
	String userId;
	String noTitle;
	String noCategory;
	String noContent;
	String noImage;
	int noCount;
	String noDate;
	String noPasswd;
	
	
	
	public NoticeDtoPJH() {
		// TODO Auto-generated constructor stub
	}



	public NoticeDtoPJH(int noSeq, String userId, String noCategory, String noContent, String noImage, int noCount,
			String noDate, String noPasswd) {
		super();
		this.noSeq = noSeq;
		this.userId = userId;
		this.noCategory = noCategory;
		this.noContent = noContent;
		this.noImage = noImage;
		this.noCount = noCount;
		this.noDate = noDate;
		this.noPasswd = noPasswd;
	}



	public NoticeDtoPJH(String noTitle, String noCategory, String noDate) {
		super();
		this.noTitle = noTitle;
		this.noCategory = noCategory;
		this.noDate = noDate;
	}



	public int getNoSeq() {
		return noSeq;
	}



	public void setNoSeq(int noSeq) {
		this.noSeq = noSeq;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getNoCategory() {
		return noCategory;
	}



	public void setNoCategory(String noCategory) {
		this.noCategory = noCategory;
	}



	public String getNoContent() {
		return noContent;
	}



	public void setNoContent(String noContent) {
		this.noContent = noContent;
	}



	public String getNoImage() {
		return noImage;
	}



	public void setNoImage(String noImage) {
		this.noImage = noImage;
	}



	public int getNoCount() {
		return noCount;
	}



	public void setNoCount(int noCount) {
		this.noCount = noCount;
	}



	public String getNoDate() {
		return noDate;
	}



	public void setNoDate(String noDate) {
		this.noDate = noDate;
	}



	public String getNoPasswd() {
		return noPasswd;
	}



	public void setNoPasswd(String noPasswd) {
		this.noPasswd = noPasswd;
	}



	public String getNoTitle() {
		return noTitle;
	}



	public void setNoTitle(String noTitle) {
		this.noTitle = noTitle;
	}
	
	
	
	
	
	
	
}
