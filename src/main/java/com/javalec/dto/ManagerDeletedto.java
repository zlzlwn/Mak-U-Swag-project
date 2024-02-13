package com.javalec.dto;

import java.util.ArrayList;

public class ManagerDeletedto {
	
	private ArrayList<String> labels4 = new ArrayList<>();
    private ArrayList<Integer> data5 = new ArrayList<>();
    
    public ManagerDeletedto() {
    	
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

	public void setData5(ArrayList<Integer> data5) {
		this.data5 = data5;
	}

	public ManagerDeletedto(ArrayList<String> labels4, ArrayList<Integer> data5) {
		super();
		this.labels4 = labels4;
		this.data5 = data5;
	}
    
    

}
