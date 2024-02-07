package com.javalec.dto;

import java.sql.Timestamp;

import java.util.ArrayList;

public class Managerdto {
	private ArrayList<String> labels;
	private ArrayList<String> labels1;
	private ArrayList<String> labels2;
    private ArrayList<Integer> data;
    private ArrayList<Integer> data1;
    private ArrayList<Integer> data2;
    private ArrayList<Integer> data3;
    private ArrayList<Integer> data4;
    private ArrayList<Integer> data5;
    private ArrayList<Integer> data6;
    private ArrayList<Integer> data7;
    private ArrayList<Integer> data8;
    private ArrayList<Integer> data9;
    private ArrayList<Integer> data10;
    private ArrayList<Integer> data11;
    private ArrayList<Integer> data12;
    private ArrayList<Integer> data13;
    private ArrayList<Integer> data14;
    private String userId;
    private String userPw;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String gender;
    private String account;
    private int point;
    private Timestamp active;
    private Timestamp deactive;
    private String howToLogin;
    
    
    
    public Managerdto() {
    	
    }
    
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


	public Managerdto(String userId, String userPw, String name, String address, String phone, String email,
			String gender, String account, int point, Timestamp active, Timestamp deactive, String howToLogin) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.account = account;
		this.point = point;
		this.active = active;
		this.deactive = deactive;
		this.howToLogin = howToLogin;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPw() {
		return userPw;
	}


	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getAccount() {
		return account;
	}


	public void setAccount(String account) {
		this.account = account;
	}


	public int getPoint() {
		return point;
	}


	public void setPoint(int point) {
		this.point = point;
	}


	public Timestamp getActive() {
		return active;
	}


	public void setActive(Timestamp active) {
		this.active = active;
	}


	public Timestamp getDeactive() {
		return deactive;
	}


	public void setDeactive(Timestamp deactive) {
		this.deactive = deactive;
	}


	public String getHowToLogin() {
		return howToLogin;
	}


	public void setHowToLogin(String howToLogin) {
		this.howToLogin = howToLogin;
	}

	public Managerdto(ArrayList<Integer> data3, ArrayList<Integer> data4, ArrayList<Integer> data5,
			ArrayList<Integer> data6, ArrayList<Integer> data7, ArrayList<Integer> data8, ArrayList<Integer> data9,
			ArrayList<Integer> data10, ArrayList<Integer> data11, ArrayList<Integer> data12, ArrayList<Integer> data13,
			ArrayList<Integer> data14) {
		super();
		this.data3 = data3;
		this.data4 = data4;
		this.data5 = data5;
		this.data6 = data6;
		this.data7 = data7;
		this.data8 = data8;
		this.data9 = data9;
		this.data10 = data10;
		this.data11 = data11;
		this.data12 = data12;
		this.data13 = data13;
		this.data14 = data14;
	}

	public ArrayList<Integer> getData3() {
		return data3;
	}

	public void setData3(ArrayList<Integer> data3) {
		this.data3 = data3;
	}

	public ArrayList<Integer> getData4() {
		return data4;
	}

	public void setData4(ArrayList<Integer> data4) {
		this.data4 = data4;
	}

	public ArrayList<Integer> getData5() {
		return data5;
	}

	public void setData5(ArrayList<Integer> data5) {
		this.data5 = data5;
	}

	public ArrayList<Integer> getData6() {
		return data6;
	}

	public void setData6(ArrayList<Integer> data6) {
		this.data6 = data6;
	}

	public ArrayList<Integer> getData7() {
		return data7;
	}

	public void setData7(ArrayList<Integer> data7) {
		this.data7 = data7;
	}

	public ArrayList<Integer> getData8() {
		return data8;
	}

	public void setData8(ArrayList<Integer> data8) {
		this.data8 = data8;
	}

	public ArrayList<Integer> getData9() {
		return data9;
	}

	public void setData9(ArrayList<Integer> data9) {
		this.data9 = data9;
	}

	public ArrayList<Integer> getData10() {
		return data10;
	}

	public void setData10(ArrayList<Integer> data10) {
		this.data10 = data10;
	}

	public ArrayList<Integer> getData11() {
		return data11;
	}

	public void setData11(ArrayList<Integer> data11) {
		this.data11 = data11;
	}

	public ArrayList<Integer> getData12() {
		return data12;
	}

	public void setData12(ArrayList<Integer> data12) {
		this.data12 = data12;
	}

	public ArrayList<Integer> getData13() {
		return data13;
	}

	public void setData13(ArrayList<Integer> data13) {
		this.data13 = data13;
	}

	public ArrayList<Integer> getData14() {
		return data14;
	}

	public void setData14(ArrayList<Integer> data14) {
		this.data14 = data14;
	}

	public ArrayList<String> getLabels2() {
		return labels2;
	}

	public void setLabels2(ArrayList<String> labels2) {
		this.labels2 = labels2;
	}
	
	
	
	
    
    
    
    

}
