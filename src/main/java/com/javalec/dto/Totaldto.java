package com.javalec.dto;

import java.util.ArrayList;

public class Totaldto {

	private ArrayList<String> labels1;
	private ArrayList<Integer> data1;
	
	
	public Totaldto() {
		
	}


	public ArrayList<String> getLabels1() {
		return labels1;
	}


	public void setLabels1(ArrayList<String> labels1) {
		this.labels1 = labels1;
	}


	public ArrayList<Integer> getData1() {
		return data1;
	}


	public void setData1(ArrayList<Integer> data1) {
		this.data1 = data1;
	}


	public Totaldto(ArrayList<String> labels1, ArrayList<Integer> data1) {
		super();
		this.labels1 = labels1;
		this.data1 = data1;
	}



	
	
}
