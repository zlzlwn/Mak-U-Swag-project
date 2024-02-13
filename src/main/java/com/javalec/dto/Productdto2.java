package com.javalec.dto;

import java.util.ArrayList;

public class Productdto2 {
	
	
	  private ArrayList<String> labels5;
	  private ArrayList<Integer> data6;
	  private String proCategory;
	  private String proName;
	  private String proColor;
	  private String proGender;
	  private String proPrice;
	  private int totalQuantity;
	  
	  public Productdto2() {
		  
	  }

	public Productdto2(ArrayList<String> labels5, ArrayList<Integer> data6) {
		super();
		this.labels5 = labels5;
		this.data6 = data6;
	}

	public ArrayList<String> getLabels5() {
		return labels5;
	}

	public void setLabels5(ArrayList<String> labels5) {
		this.labels5 = labels5;
	}

	public ArrayList<Integer> getData6() {
		return data6;
	}

	public void setData6(ArrayList<Integer> data6) {
		this.data6 = data6;
	}

	public Productdto2(String proCategory, String proName, String proColor, String proGender, String proPrice,
			int totalQuantity) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proPrice = proPrice;
		this.totalQuantity = totalQuantity;
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

	public String getProColor() {
		return proColor;
	}

	public void setProColor(String proColor) {
		this.proColor = proColor;
	}

	public String getProGender() {
		return proGender;
	}

	public void setProGender(String proGender) {
		this.proGender = proGender;
	}

	public String getProPrice() {
		return proPrice;
	}

	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}
	  
	  

}
