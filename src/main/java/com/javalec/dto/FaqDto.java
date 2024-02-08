package com.javalec.dto;

public class FaqDto {
	
	int faqSeq;
	String userid;
	String faqCategory;
	String faqTitle;
	String faqContent;
	String faqDate;
	String faqImage;
	
	
	public FaqDto() {
		
	}


	public FaqDto(int faqSeq, String userid, String faqCategory, String faqTitle, String faqContent, String faqDate, String faqImage) {
		super();
		this.faqSeq = faqSeq;
		this.userid = userid;
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
		this.faqImage = faqImage;
	}


	public FaqDto(String faqCategory, String faqTitle, String faqContent, String faqImage) {
		super();
		this.faqCategory = faqCategory;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqImage = faqImage;
	}


	public int getFaqSeq() {
		return faqSeq;
	}


	public void setFaqSeq(int faqSeq) {
		this.faqSeq = faqSeq;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getFaqImage() {
		return faqImage;
	}


	public void setFaqImage(String faqImage) {
		this.faqImage = faqImage;
	}


	public String getFaqCategory() {
		return faqCategory;
	}


	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}


	public String getFaqTitle() {
		return faqTitle;
	}


	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}


	public String getFaqContent() {
		return faqContent;
	}


	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}


	public String getFaqDate() {
		return faqDate;
	}


	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}
	
	
	
	
	
}
