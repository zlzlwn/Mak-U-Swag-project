package com.javalec.dto;

public class QnaDto {

	
	int qnaSeq;
	String userId;
	String qnaTitle;
	String qnaCategory;
	String qnaContent;
	String qnaImage;
	int qnaCount;
	String qnaDate;
	String qnaPasswd;
	
	public QnaDto() {
		
	}
	
	
	public QnaDto(int qnaSeq, String userId, String qnaTitle, String qnaCategory, String qnaContent, String qnaImage,
			int qnaCount, String qnaDate, String qnaPasswd) {
		super();
		this.qnaSeq = qnaSeq;
		this.userId = userId;
		this.qnaTitle = qnaTitle;
		this.qnaCategory = qnaCategory;
		this.qnaContent = qnaContent;
		this.qnaImage = qnaImage;
		this.qnaCount = qnaCount;
		this.qnaDate = qnaDate;
		this.qnaPasswd = qnaPasswd;
	}




	public QnaDto(int qnaSeq, String qnaTitle, String userId) {
		super();
		this.qnaSeq = qnaSeq;
		this.qnaTitle = qnaTitle;
		this.userId = userId;
	}


	public int getQnaSeq() {
		return qnaSeq;
	}




	public void setQnaSeq(int qnaSeq) {
		this.qnaSeq = qnaSeq;
	}




	public String getUserId() {
		return userId;
	}




	public void setUserId(String userId) {
		this.userId = userId;
	}




	public String getQnaTitle() {
		return qnaTitle;
	}




	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}




	public String getQnaCategory() {
		return qnaCategory;
	}




	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}




	public String getQnaContent() {
		return qnaContent;
	}




	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}




	public String getQnaImage() {
		return qnaImage;
	}




	public void setQnaImage(String qnaImage) {
		this.qnaImage = qnaImage;
	}




	public int getQnaCount() {
		return qnaCount;
	}




	public void setQnaCount(int qnaCount) {
		this.qnaCount = qnaCount;
	}




	public String getQnaDate() {
		return qnaDate;
	}




	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}




	public String getQnaPasswd() {
		return qnaPasswd;
	}




	public void setQnaPasswd(String qnaPasswd) {
		this.qnaPasswd = qnaPasswd;
	}
	
	
	
	
	
	
	
}