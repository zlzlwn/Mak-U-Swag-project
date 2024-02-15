package com.javalec.dto;

public class Allinonedto {
	
	private String proName;
    private String proPrice;
    private String proImage;
    
    
    public Allinonedto() {
    	
    }


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public String getProPrice() {
		return proPrice;
	}


	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
	}


	public String getProImage() {
		return proImage;
	}


	public void setProImage(String proImage) {
		this.proImage = proImage;
	}


	public Allinonedto(String proName, String proPrice, String proImage) {
		super();
		this.proName = proName;
		this.proPrice = proPrice;
		this.proImage = proImage;
	}
    
    
    

}
