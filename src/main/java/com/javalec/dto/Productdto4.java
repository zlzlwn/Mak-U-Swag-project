package com.javalec.dto;


public class Productdto4 {
	   private String proCategory;
	   private String proName;
	   private String proGender;
	   private String proColor;
	   private int pQty;
	   private int pPrice;
	   private String pMethod;
	   private int pSpendPoint;
	   private int pStackPoint;
	   private String pDate;
	   
	   public Productdto4() {
		   
	   }

	   
	   
	public String getProColor() {
		return proColor;
	}



	public void setProColor(String proColor) {
		this.proColor = proColor;
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

	public int getpQty() {
		return pQty;
	}

	public void setpQty(int pQty) {
		this.pQty = pQty;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public String getpMethod() {
		return pMethod;
	}

	public void setpMethod(String pMethod) {
		this.pMethod = pMethod;
	}

	public int getpSpendPoint() {
		return pSpendPoint;
	}

	public void setpSpendPoint(int pSpendPoint) {
		this.pSpendPoint = pSpendPoint;
	}

	public int getpStackPoint() {
		return pStackPoint;
	}

	public void setpStackPoint(int pStackPoint) {
		this.pStackPoint = pStackPoint;
	}

	public String getpDate() {
		return pDate;
	}

	public void setpDate(String pDate) {
		this.pDate = pDate;
	}

	public Productdto4(String proCategory, String proName, int pQty, int pPrice, String pMethod, int pSpendPoint,
			int pStackPoint, String pDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.pQty = pQty;
		this.pPrice = pPrice;
		this.pMethod = pMethod;
		this.pSpendPoint = pSpendPoint;
		this.pStackPoint = pStackPoint;
		this.pDate = pDate;
	}



	public Productdto4(String proCategory, String proName, String proColor, int pQty, int pPrice, String pMethod,
			int pSpendPoint, int pStackPoint, String pDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proColor = proColor;
		this.pQty = pQty;
		this.pPrice = pPrice;
		this.pMethod = pMethod;
		this.pSpendPoint = pSpendPoint;
		this.pStackPoint = pStackPoint;
		this.pDate = pDate;
	}



	public Productdto4(String proCategory, String proName, String proGender, String proColor, int pQty, int pPrice,
			String pMethod, int pSpendPoint, int pStackPoint, String pDate) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proColor = proColor;
		this.pQty = pQty;
		this.pPrice = pPrice;
		this.pMethod = pMethod;
		this.pSpendPoint = pSpendPoint;
		this.pStackPoint = pStackPoint;
		this.pDate = pDate;
	}



	public String getProGender() {
		return proGender;
	}



	public void setProGender(String proGender) {
		this.proGender = proGender;
	}
	
	   
	   
	   

}
