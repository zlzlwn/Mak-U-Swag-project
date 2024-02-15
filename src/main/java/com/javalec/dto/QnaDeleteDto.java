package com.javalec.dto;

public class QnaDeleteDto {
	int qnaSeq;
	String userId;
	String qnaTitle;
	String qnaCategory;
	String qnaContent;
	String qnaImage;
	String qnaDate;
	String qnaPasswd;
	String qnaAnswer;
	
	public QnaDeleteDto() {
		
	}

	public QnaDeleteDto(int qnaSeq, String userId, String qnaTitle, String qnaCategory, String qnaContent,
			String qnaImage, String qnaDate, String qnaPasswd, String qnaAnswer) {
		super();
		this.qnaSeq = qnaSeq;
		this.userId = userId;
		this.qnaTitle = qnaTitle;
		this.qnaCategory = qnaCategory;
		this.qnaContent = qnaContent;
		this.qnaImage = qnaImage;
		this.qnaDate = qnaDate;
		this.qnaPasswd = qnaPasswd;
		this.qnaAnswer = qnaAnswer;
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

	public String getQnaAnswer() {
		return qnaAnswer;
	}

	public void setQnaAnswer(String qnaAnswer) {
		this.qnaAnswer = qnaAnswer;
	}

	
}
