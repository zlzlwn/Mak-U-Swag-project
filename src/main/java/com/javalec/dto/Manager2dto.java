package com.javalec.dto;

import java.util.ArrayList;

public class Manager2dto {
	private ArrayList<String> labels2;
	private ArrayList<Integer> data3;

	
	
	public Manager2dto() {
		
	}



	public ArrayList<String> getLabels2() {
		return labels2;
	}



	public void setLabels2(ArrayList<String> labels2) {
		this.labels2 = labels2;
	}



	public ArrayList<Integer> getData3() {
		return data3;
	}



	public void setData3(ArrayList<Integer> data3) {
		this.data3 = data3;
	}



	public Manager2dto(ArrayList<String> labels2, ArrayList<Integer> data3) {
		super();
		this.labels2 = labels2;
		this.data3 = data3;
	}
	
	
}
