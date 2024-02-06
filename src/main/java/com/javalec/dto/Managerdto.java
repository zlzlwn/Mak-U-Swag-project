package com.javalec.dto;

import java.util.ArrayList;

public class Managerdto {
	private ArrayList<String> labels;
    private ArrayList<Integer> data;
    
    
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
	
	
    
    
    
    

}
