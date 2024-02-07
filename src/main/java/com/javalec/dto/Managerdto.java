package com.javalec.dto;

import java.util.ArrayList;

public class Managerdto {
	private ArrayList<String> labels;
	private ArrayList<String> labels1;
    private ArrayList<Integer> data;
    private ArrayList<Integer> data1;
    private ArrayList<Integer> data2;
    
    
	public Managerdto(ArrayList<String> labels, ArrayList<Integer> data) {
		super();
		this.labels = labels;
		this.data = data;
	}


	public ArrayList<String> getLabels() {
		return labels;
	}


	public void setLabels(ArrayList<String> labels) {
		this.labels = labels;
	}


	public ArrayList<Integer> getData() {
		return data;
	}


	public void setData(ArrayList<Integer> data) {
		this.data = data;
	}
	
	public String getLabel(int index) {
        return labels.get(index);
    }

    public Integer getData(int index) {
        return data.get(index);
    }


	public Managerdto(ArrayList<String> labels1, ArrayList<Integer> data1, ArrayList<Integer> data2) {
		super();
		this.labels1 = labels1;
		this.data1 = data1;
		this.data2 = data2;
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


	public ArrayList<Integer> getData2() {
		return data2;
	}


	public void setData2(ArrayList<Integer> data2) {
		this.data2 = data2;
	}
	
	
    
    
    
    

}
