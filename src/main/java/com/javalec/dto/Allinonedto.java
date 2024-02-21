package com.javalec.dto;

public class Allinonedto {
	
	private int proSeq;
	private String proName;
    private int proPrice;
    private String proImage1;
    private String proImage2;
    private String proImage3;
    private String proIntroduction;
    private int proQty;
    
    
    public Allinonedto() {
    	
    }


    
    
    
	public int getProQty() {
		return proQty;
	}





	public void setProQty(int proQty) {
		this.proQty = proQty;
	}





	public String getProIntroduction() {
		return proIntroduction;
	}





	public void setProIntroduction(String proIntroduction) {
		this.proIntroduction = proIntroduction;
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





	public String getProImage2() {
		return proImage2;
	}




	public void setProImage2(String proImage2) {
		this.proImage2 = proImage2;
	}




	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public int getProPrice() {
		return proPrice;
	}


	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}


	public String getProImage1() {
		return proImage1;
	}


	public void setProImage1(String proImage1) {
		this.proImage1 = proImage1;
	}


	public Allinonedto(int proSeq,String proName, int proPrice, String proImage1,String proImage2) {
		super();
		this.proSeq = proSeq;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proImage1 = proImage1;
		this.proImage2 = proImage2;
	}





	public Allinonedto(int proSeq, String proName, int proPrice, String proImage1, String proImage2, String proImage3, String proIntroduction,int proQty) {
		super();
		this.proSeq = proSeq;
		this.proName = proName;
		this.proPrice = proPrice;
		this.proImage1 = proImage1;
		this.proImage2 = proImage2;
		this.proImage3 = proImage3;
		this.proIntroduction = proIntroduction;
		this.proQty = proQty;
	}
    
    
    

}
