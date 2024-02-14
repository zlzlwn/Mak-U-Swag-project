package com.javalec.dto;

import java.util.ArrayList;

public class Productdto3 {
	
	  private int proSeq;
	  private String proCategory;
	  private String proName;
	  private String proColor;
	  private String proGender;
	  private int proQty;
	  private String proPrice;
	  private int totalQuantity;
	  private String proImage;
	  private String proDate;
	  private String latestProDate;
	  
	  public Productdto3() {
		  
	  }
	  
	  
	  
	








	public int getProSeq() {
		return proSeq;
	}












	public void setProSeq(int proSeq) {
		this.proSeq = proSeq;
	}












	public Productdto3(String proCategory, String proName, String proColor, String proGender, int proQty,
			String proPrice, String proImage, String proDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage = proImage;
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












	public String getProImage() {
		return proImage;
	}

	public void setProImage(String proImage) {
		this.proImage = proImage;
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

	public String getProPrice() {
		return proPrice;
	}

	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
	}

	public int getProQty() {
		return proQty;
	}

	public void setProQty(int proQty) {
		this.proQty = proQty;
	}

	public Productdto3(String proCategory, String proName, String proGender, String proColor, int proQty,
			String proPrice) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proColor = proColor;
		this.proQty = proQty;
		this.proPrice = proPrice;
	}
	public Productdto3(String proCategory, String proName, String proGender, String proColor, int proQty,
			String proPrice, String proImage) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proColor = proColor;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage = proImage;
	}












	











	public Productdto3(int proSeq, String proCategory, String proName, String proColor, String proGender, int proQty,
			String proImage, String proDate) {
		super();
		this.proSeq = proSeq;
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proImage = proImage;
		this.proDate = proDate;
	}












	public Productdto3(int proSeq, String proCategory, String proName, String proColor, String proGender, int proQty,
			String proPrice, String proImage, String proDate) {
		super();
		this.proSeq = proSeq;
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proQty = proQty;
		this.proPrice = proPrice;
		this.proImage = proImage;
		this.proDate = proDate;
	}












	


	  
	  

}
