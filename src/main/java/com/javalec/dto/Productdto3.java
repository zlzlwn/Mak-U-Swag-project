package com.javalec.dto;

import java.util.ArrayList;

public class Productdto3 {
	
	  private String proCategory;
	  private String proName;
	  private String proGender;
	  private String proColor;
	  private int proQty;
	  private String proPrice;
	  private String proImage;
	  
	  public Productdto3() {
		  
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


	  
	  

}
