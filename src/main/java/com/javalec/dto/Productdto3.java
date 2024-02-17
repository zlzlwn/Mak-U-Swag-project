package com.javalec.dto;

import java.util.ArrayList;

public class Productdto3 {
	
	  private int proSeq;
	  private String proCategory;
	  private String proName;
	  private String proColor;
	  private String proGender;
	  private int proQty;
	  private int proPrice;
	  private int totalQuantity;
	  private String proImage1;
	  private String proImage2;
	  private String proImage3;
	  private String proDate;
	  private String latestProDate;
	  
	  public Productdto3() {
		  
	  }
	  
	  
	  
	








	public String getProImage2() {
		return proImage2;
	}












	public void setProImage2(String proImage2) {
		this.proImage2 = proImage2;
	}












	public String getProImage3() {
		return proImage3;
	}












	public void setProImage3(String proImage3) {
		this.proImage3 = proImage3;
	}












	public int getProSeq() {
		return proSeq;
	}












	public void setProSeq(int proSeq) {
		this.proSeq = proSeq;
	}












	public Productdto3(String proCategory, String proName, String proColor, String proGender, int proQty,
			int proPrice, String proImage1, String proImage2,String proImage3,String proDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage1 = proImage1;
		this.proImage2 = proImage2;
		this.proImage3 = proImage3;
		this.proDate = proDate;
	}












	public String getProDate() {
		return proDate;
	}












	public void setProDate(String proDate) {
		this.proDate = proDate;
	}












	public int getTotalQuantity() {
		return totalQuantity;
	}












	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}












	public String getLatestProDate() {
		return latestProDate;
	}












	public void setLatestProDate(String latestProDate) {
		this.latestProDate = latestProDate;
	}












	public String getProImage1() {
		return proImage1;
	}

	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
	}


	public String getProCategory() {
		return proCategory;
	}

	public void setProCategory(String proCategory) {
		this.proCategory = proCategory;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProGender() {
		return proGender;
	}

	public void setProGender(String proGender) {
		this.proGender = proGender;
	}

	public String getProColor() {
		return proColor;
	}

	public void setProColor(String proColor) {
		this.proColor = proColor;
	}

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public int getProQty() {
		return proQty;
	}

	public void setProQty(int proQty) {
		this.proQty = proQty;
	}

	public Productdto3(String proCategory, String proName, String proGender, String proColor, int proQty,
			int proPrice) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proColor = proColor;
		this.proQty = proQty;
		this.proPrice = proPrice;
	}
	public Productdto3(String proCategory, String proName, String proGender, String proColor, int proQty,
			int proPrice, String proImage1) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proColor = proColor;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage1 = proImage1;
	}












	











	public Productdto3(int proSeq, String proCategory, String proName, String proColor, String proGender, int proQty,
			String proImage1, String proDate) {
		super();
		this.proSeq = proSeq;
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proImage1 = proImage1;
		this.proDate = proDate;
	}












	public Productdto3(int proSeq, String proCategory, String proName, String proColor, String proGender, int proQty,
			int proPrice, String proImage1,String proImage2,String proImage3, String proDate) {
		super();
		this.proSeq = proSeq;
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage1 = proImage1;
		this.proImage2 = proImage2;
		this.proImage3 = proImage3;
		this.proDate = proDate;
	}












	


	  
	  

}
