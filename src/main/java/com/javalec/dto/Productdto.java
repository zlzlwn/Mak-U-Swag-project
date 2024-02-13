package com.javalec.dto;

import java.util.ArrayList;

public class Productdto {
	private String proCategory;
    private String proName;
    private String proGender;
    private String proIntroduction;
    private String proColor;
    private int proQty;
    private String proPrice;
    private String proImage;
    private ArrayList<String> labels4;
    private ArrayList<Integer> data5;
    private int totalQuantity;
  
    
    public Productdto() {
    	
    }
 


    public Productdto(String proCategory, String proName, String proGender, String proIntroduction, String proColor,
			int proQty, String proPrice, String proImage) {
		super();
		this.proCategory = proCategory;
		this.proName = proName;
		this.proGender = proGender;
		this.proIntroduction = proIntroduction;
		this.proColor = proColor;
		this.proQty = proQty;
		this.proPrice = proPrice;
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

    public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
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

    public String getProIntroduction() {
        return proIntroduction;
    }

    public void setProIntroduction(String proIntroduction) {
        this.proIntroduction = proIntroduction;
    }

    public int getProQty() {
        return proQty;
    }

    public void setProQty(int proQty) {
        this.proQty = proQty;
    }



    public String getProPrice() {
		return proPrice;
	}



	public String getProImage() {
        return proImage;
    }

    public void setProImage(String proImage) {
        this.proImage = proImage;
    }

	public String getProColor() {
		return proColor;
	}

	public void setProColor(String proColor) {
		this.proColor = proColor;
	}



	public Productdto(ArrayList<String> labels4, ArrayList<Integer> data5) {
		super();
		this.labels4 = labels4;
		this.data5 = data5;
	}



	public ArrayList<String> getLabels4() {
		return labels4;
	}



	public void setLabels4(ArrayList<String> labels4) {
		this.labels4 = labels4;
	}



	public ArrayList<Integer> getData5() {
		return data5;
	}



	public void setData1(ArrayList<Integer> data5) {
		this.data5 = data5;
	}




    
    
}