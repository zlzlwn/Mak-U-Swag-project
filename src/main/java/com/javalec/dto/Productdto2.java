package com.javalec.dto;

import java.util.ArrayList;

public class Productdto2 {
	
	
	  private ArrayList<String> labels5;
	  private ArrayList<Integer> data6;
	  private String proCategory;
	  private String proName;
	  private String proColor;
	  private String proGender;
	  private int proPrice;
	  private int totalQuantity;
	  private String latestProDate;
	  private String proDate;
	  private String proImage1;
	  private String proImage2;
	  private String proImage3;
	  
	  public Productdto2() {
		  
	  }
	  
	  
	  
	  

	public String getProImage1() {
		return proImage1;
	}





	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
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





	public String getLatestProDate() {
		return latestProDate;
	}





	public void setLatestProDate(String latestProDate) {
		this.latestProDate = latestProDate;
	}





	public String getProDate() {
		return proDate;
	}



	public void setProDate(String proDate) {
		this.proDate = proDate;
	}


	
	

	public Productdto2(String proCategory, String proName, String proColor, String proGender, int proPrice,
			int totalQuantity, String latestProDate, String proImage1,String proImage2,String proImage3) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proPrice = proPrice;
		this.totalQuantity = totalQuantity;
		this.latestProDate = latestProDate;
		this.proImage1 = proImage1;
		this.proImage2 = proImage2;
		this.proImage3 = proImage3;
	}





	public Productdto2(String proCategory, String proName, String proColor, String proGender, int proPrice,
			int totalQuantity, String latestProDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.proGender = proGender;
		this.proPrice = proPrice;
		this.totalQuantity = totalQuantity;
		this.latestProDate = latestProDate;
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

	public Productdto2(String proCategory, String proName, String proColor, String proGender, int proPrice,
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

	public int getProPrice() {
		return proPrice;
	}

	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}
	  
	  

}
