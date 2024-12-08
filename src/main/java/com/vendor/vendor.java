package com.vendor;

public class vendor {
	
	private String id;
	private String name;
	private String address;
	private String email;
	private String phone;
	private String type;
	private String price;
	
	
	public vendor(String id, String name, String address, String email, String phone, String type, String price) {

		this.id = id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.type = type;
		this.price = price;
	}


	public vendor(String name, String address, String email, String phone, String type, String price) {
		
		this.name = name;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.type = type;
		this.price = price;
	}


	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getType() {
		return type;
	}

	public String getPrice() {
		return price;
	}



	
	
	

}
