package com.javalec.dto;

import java.util.ArrayList;

public class Manager3dto {
	private ArrayList<String> labels3;
	private ArrayList<Integer> data4;

	
	public Manager3dto() {
		
	}


	public Manager3dto(ArrayList<String> labels3, ArrayList<Integer> data4) {
		super();
		this.labels3 = labels3;
		this.data4 = data4;
	}


	public ArrayList<String> getLabels3() {
		return labels3;
	}


	public void setLabels3(ArrayList<String> labels3) {
		this.labels3 = labels3;
	}


	public ArrayList<Integer> getData4() {
		return data4;
	}


	public void setData4(ArrayList<Integer> data4) {
		this.data4 = data4;
	}
	
	
}
