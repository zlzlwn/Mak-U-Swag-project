package com.javalec.dto;

public class UserDto {

	// Filed
	String userId;
	String userPw;
	String name;
	String address;
	String phone;
	String email;
	String gender;
	String birthday;
	String account;
	int point;
	String howToLogin;
	String active;
	String deactive;
	
	// Constructor
	public UserDto() {
		// TODO Auto-generated constructor stub
	}

	public UserDto(String userId, String userPw) {
		super();
		this.userId = userId;
		this.userPw = userPw;
	}

	public UserDto(String userId, String userPw, String name, String address, String phone, String email, String gender,
			String birthday, String account, int point, String howToLogin) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.birthday = birthday;
		this.account = account;
		this.point = point;
		this.howToLogin = howToLogin;
	}

	public UserDto(String userId, String userPw, String name, String address, String phone, String email, String gender,
			String birthday, String account, int point, String howToLogin, String active, String deactive) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.birthday = birthday;
		this.account = account;
		this.point = point;
		this.howToLogin = howToLogin;
		this.active = active;
		this.deactive = deactive;
	}


	// Method
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
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

	public String getHowToLogin() {
		return howToLogin;
	}

	public void setHowToLogin(String howToLogin) {
		this.howToLogin = howToLogin;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getDeactive() {
		return deactive;
	}

	public void setDeactive(String deactive) {
		this.deactive = deactive;
	}
	
}
