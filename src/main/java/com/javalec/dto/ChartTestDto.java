package com.javalec.dto;

public class ChartTestDto {
	
	// Filed
	String subject;
	int score;
	
	// Constructor
	public ChartTestDto() {
		// TODO Auto-generated constructor stub
	}
	
	public ChartTestDto(String subject, int score) {
		super();
		this.subject = subject;
		this.score = score;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
	
	
}
