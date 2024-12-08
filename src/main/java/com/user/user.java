package com.user;

public class user {
	
	private String name;
	private String phone;
	private String address;
	private String email;
	private String password;

	public user(String name, String phone,String address, String email, String password) {
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.password = password;
	}
	
	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}
	
	public String getPassword() {
		return password;
	}

	
	
}
