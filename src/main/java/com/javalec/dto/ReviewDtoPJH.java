package com.javalec.dto;

public class ReviewDtoPJH {

	
	int revSeq;
	String proSeq;
	String userId;
	String revTitle;
	String revContent;
	String revImage;
	String revDate;
	
	
	
	public ReviewDtoPJH() {
		// TODO Auto-generated constructor stub
	}



	public ReviewDtoPJH(String revTitle, String revContent, String revImage, String revDate) {
		super();
		this.revTitle = revTitle;
		this.revContent = revContent;
		this.revImage = revImage;
		this.revDate = revDate;
	}



	public int getRevSeq() {
		return revSeq;
	}



	public void setRevSeq(int revSeq) {
		this.revSeq = revSeq;
	}



	public String getProSeq() {
		return proSeq;
	}



	public void setProSeq(String proSeq) {
		this.proSeq = proSeq;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getRevTitle() {
		return revTitle;
	}



	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}



	public String getRevContent() {
		return revContent;
	}



	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}



	public String getRevImage() {
		return revImage;
	}



	public void setRevImage(String revImage) {
		this.revImage = revImage;
	}



	public String getRevDate() {
		return revDate;
	}



	public void setRevDate(String revDate) {
		this.revDate = revDate;
	}


	
	
	

}